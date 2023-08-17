-- ��ȣȭ��ȣȭ02_scott>sql

SELECT USER
FROM DUAL;
--==>> YAMEOKJA


-- (���� SCOTT ���� ����� ����)


--�� ��Ű�� ����(CRYPTPACK)
CREATE OR REPLACE PACKAGE CRYPTPACK
AS
    -- ��ȣȭ �Լ� ��Ű�� ����
    FUNCTION ENCRYPT(STR VARCHAR2, HASH VARCHAR2)
    RETURN VARCHAR2;
    
    -- ��ȣȭ �Լ� ��Ű�� ����
    FUNCTION DECRYPT(XCRYPT VARCHAR2, HASH VARCHAR2)
    RETURN VARCHAR2;
    
END CRYPTPACK;
--==>> Package CRYPTPACK��(��) �����ϵǾ����ϴ�.


--�� ��Ű�� ��ü ����(CRYPTPACK)
CREATE OR REPLACE PACKAGE BODY CRYPTPACK
IS
    -- ���� ���� ����
    CRYPTED_STRING VARCHAR2(2000);
    
    -- ��ȣȭ �Լ� ����
    FUNCTION ENCRYPT(STR VARCHAR2, HASH VARCHAR2)
    RETURN VARCHAR2
    IS
        PIECES_OF_EIGHT NUMBER := ((FLOOR(LENGTH(STR)/8 + .9)) * 8);
    BEGIN
        DBMS_OBFUSCATION_TOOLKIT.DESENCRYPT
        ( INPUT_STRING      => RPAD(STR, PIECES_OF_EIGHT)
        , KEY_STRING        => RPAD(HASH, 8, '#')
        , ENCRYPTED_STRING  => CRYPTED_STRING
        );
        RETURN CRYPTED_STRING;
    END;
    
    -- ��ȣȭ �Լ� ����
    FUNCTION DECRYPT(XCRYPT VARCHAR2, HASH VARCHAR2)
    RETURN VARCHAR2
    IS
    BEGIN
        DBMS_OBFUSCATION_TOOLKIT.DESDECRYPT
        ( INPUT_STRING      => XCRYPT
        , KEY_STRING        => RPAD(HASH, 8, '#')
        , DECRYPTED_STRING  => CRYPTED_STRING
        );
        RETURN TRIM(CRYPTED_STRING);
    END;

END CRYPTPACK;
--==>> Package Body CRYPTPACK��(��) �����ϵǾ����ϴ�.

commit;
