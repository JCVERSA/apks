package d1;

public abstract class b {
    public static int b(String str, String str2) {
        if (str2 != null) {
            if ("text/x-c".equals(str2)) {
                return 1;
            }
            if ("text/x-java-source".equals(str2)) {
                return 2;
            }
            if (str2.contains("x-rust")) {
                return 3;
            }
            if (str2.contains("javascript")) {
                return 6;
            }
            if (str2.contains("x-php") || str2.contains("x-httpd-php")) {
                return 7;
            }
            if (str2.contains("x-python")) {
                return 8;
            }
            if (str2.contains("x-ruby")) {
                return 9;
            }
            if ("application/x-sh".equals(str2) || "application/x-shellscript".equals(str2)) {
                return 10;
            }
            if (str2.endsWith("/xml")) {
                return 11;
            }
            if (str2.endsWith("/css")) {
                return 13;
            }
        }
        if (str == null) {
            return 0;
        }
        String strS = a0.c.s(str);
        String str3 = "," + strS + ",";
        if (",c,cc,cpp,cxx,h,hh,hpp,cyc,m,".contains(str3)) {
            return 1;
        }
        if ("java".equals(strS)) {
            return 2;
        }
        if (",rc,rs,rust,".contains(str3)) {
            return 3;
        }
        if ("cs".equals(strS)) {
            return 4;
        }
        if ("go".equals(strS)) {
            return 5;
        }
        if (",js,ts,javascript,typescript,".contains(str3)) {
            return 6;
        }
        if ("php".equals(strS)) {
            return 7;
        }
        if (",cv,py,python,".contains(str3)) {
            return 8;
        }
        if (",rb,ruby,".contains(str3)) {
            return 9;
        }
        if (",sh,bsh,csh,bash,".contains(str3)) {
            return 10;
        }
        if (",xml,html,htm,".contains(str3)) {
            return 11;
        }
        if (",conf,cfg,ini,".contains(str3)) {
            return 12;
        }
        return "css".equals(strS) ? 13 : 0;
    }

    public abstract byte a(byte b2, char c2, char[] cArr, int i2);

    public abstract int c();

    public abstract byte d(byte b2);

    public abstract byte e(byte b2);

    public abstract byte f(char[] cArr, int i2, int i3);
}
