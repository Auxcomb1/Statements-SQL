/*Este trigger hace que al momento de actualizar un email entonces se guarde el anterior email en otra tabla 
para llevar un historial*/

DELIMITER //
CREATE TRIGGER TG_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN 
	IF OLD.email <> NEW.email THEN 
	INSERT INTO email_history (User_id, Email) 
	VALUES (OLD.User_id, OLD.Email);
	END IF;
END//

DELIMITER;

-- eliminar

DROP TRIGGER TG_email;