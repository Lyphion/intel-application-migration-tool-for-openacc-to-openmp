      MODULE M
      INTEGER :: x
!$ACC DECLARE COPYIN(x)
      END MODULE M

      USE M
      INTEGER :: result
!$ACC SERIAL COPYOUT(result)
      result = x + 1
!$ACC END SERIAL
      PRINT *, result
      END
