GRANT CONNECT ON healthsystem to medico;
GRANT CONNECT ON healthsystem to paziente;


GRANT SELECT ON MEDICO TO medico;
GRANT SELECT ON TIPO_DOC TO medico;
GRANT SELECT, INSERT ON PAZIENTE TO medico;
GRANT SELECT, UPDATE ON INDIRIZZO TO medico;
GRANT SELECT, UPDATE ON STUD_LEG TO medico;
GRANT SELECT, UPDATE, INSERT ON DOCUMENTO TO medico;
GRANT SELECT, UPDATE, INSERT ON EMAIL TO medico;
GRANT SELECT, UPDATE, INSERT ON PERSONA TO medico;
GRANT SELECT, UPDATE, INSERT ON RICETTA TO medico;
GRANT SELECT, UPDATE, INSERT on TELEFONO TO medico;


GRANT SELECT ON MEDICO to paziente;
GRANT SELECT ON PAZIENTE TO paziente;
GRANT SELECT ON STUD_LEG to paziente;
GRANT SELECT ON TIPO_DOC TO paziente;
GRANT SELECT, UPDATE ON INDIRIZZO TO paziente;
GRANT SELECT, UPDATE ON PERSONA TO paziente;
GRANT SELECT, UPDATE ON RICETTA TO paziente;
GRANT SELECT, UPDATE, INSERT ON DOCUMENTO TO paziente;
GRANT SELECT, UPDATE, INSERT ON EMAIL TO paziente;
GRANT SELECT, UPDATE, INSERT ON TELEFONO TO paziente;
