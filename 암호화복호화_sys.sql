-- ��ȣȭ��ȣȭ01_sys.sql

SELECT USER
FROM DUAL;
--==>> SYS





--���� ��ȣȭ ��ȣȭ ����

-- '������' �� '!@#' �� '������'

-- 1. ����Ŭ ��ȣȭ ����� ����ϱ� ���� ��DBMS_OBFUSCATION_TOOLKIT�� ��Ű���� �̿�

-- 2. �̸� ���� ��dbmsobtk.sql�� �� ��prvtobtk.plb�� ������ ã�� �����ؾ� �Ѵ�.

-- �� �ش� ������ �����ϴ� ���
--C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin

@C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\dbmsobtk.sql
--==>>
/*
Library DBMS_OBFUSCATION_LIB��(��) �����ϵǾ����ϴ�.
Library CRYPTO_TOOLKIT_LIBRARY��(��) �����ϵǾ����ϴ�.
Package DBMS_CRYPTO��(��) �����ϵǾ����ϴ�.
SYNONYM DBMS_CRYPTO��(��) �����Ǿ����ϴ�.
Package DBMS_OBFUSCATION_TOOLKIT��(��) �����ϵǾ����ϴ�.
SYNONYM DBMS_OBFUSCATION_TOOLKIT��(��) �����Ǿ����ϴ�.
Grant��(��) �����߽��ϴ�.
Package DBMS_SQLHASH��(��) �����ϵǾ����ϴ�.
SYNONYM DBMS_SQLHASH��(��) �����Ǿ����ϴ�.
*/

@C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\prvtobtk.plb
--==>>
/*
Package DBMS_CRYPTO_FFI��(��) �����ϵǾ����ϴ�.
Package Body DBMS_CRYPTO_FFI��(��) �����ϵǾ����ϴ�.
Package Body DBMS_CRYPTO��(��) �����ϵǾ����ϴ�.
Package DBMS_OBFUSCATION_TOOLKIT_FFI��(��) �����ϵǾ����ϴ�.
Package Body DBMS_OBFUSCATION_TOOLKIT_FFI��(��) �����ϵǾ����ϴ�.
Package Body DBMS_OBFUSCATION_TOOLKIT��(��) �����ϵǾ����ϴ�.
Package Body DBMS_SQLHASH��(��) �����ϵǾ����ϴ�.
*/


--�� ��� ��Ű���� ����� �� �ֵ��� ���� �ο�
GRANT EXECUTE ON DBMS_OBFUSCATION_TOOLKIT TO yamaddae;
--==>> Grant��(��) �����߽��ϴ�.
-- GRANT �������� DBMS_OBFUSCATION_TOOLKIT ��Ű����
-- ���ν����� ����� �� �ֵ��� ���� �ο�

GRANT EXECUTE ON DBMS_OBFUSCATION_TOOLKIT TO PUBLIC;
--==>> Grant��(��) �����߽��ϴ�.
--> PUBLIC ���� DBMS_OBFUSCATION_TOOLKIT ��Ű����
--  ���ν����� ����� �� �ֵ��� ���� �ο�