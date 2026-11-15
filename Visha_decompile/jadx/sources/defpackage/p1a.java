package defpackage;

import org.greenrobot.greendao.generator.Schema;

public class p1a {
    public static int j;
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public boolean g;
    public boolean h;
    public boolean i;

    public p1a(String str) {
        this.f = "";
        this.a = str;
    }

    public static String a() {
        StringBuilder sb = new StringBuilder();
        sb.append(Schema.DEFAULT_NAME);
        int i = j;
        j = i + 1;
        sb.append(i);
        return sb.toString();
    }

    public static String b(String str, String str2) {
        if ("name".equalsIgnoreCase(str)) {
            if ("transparent".equals(str2)) {
                return "00000000";
            }
            if ("black".equals(str2)) {
                return "000000ff";
            }
            if ("silver".equals(str2)) {
                return "c0c0c0ff";
            }
            if ("gray".equals(str2)) {
                return "808080ff";
            }
            if ("white".equals(str2)) {
                return "ffffffff";
            }
            if ("maroon".equals(str2)) {
                return "800000ff";
            }
            if ("red".equals(str2)) {
                return "ff0000ff";
            }
            if ("purple".equals(str2)) {
                return "800080ff";
            }
            if ("fuchsia".equals(str2)) {
                return "ff00ffff";
            }
            if ("magenta".equals(str2)) {
                return "ff00ffff ";
            }
            if ("green".equals(str2)) {
                return "008000ff";
            }
            if ("lime".equals(str2)) {
                return "00ff00ff";
            }
            if ("olive".equals(str2)) {
                return "808000ff";
            }
            if ("yellow".equals(str2)) {
                return "ffff00ff";
            }
            if ("navy".equals(str2)) {
                return "000080ff";
            }
            if ("blue".equals(str2)) {
                return "0000ffff";
            }
            if ("teal".equals(str2)) {
                return "008080ff";
            }
            if ("aqua".equals(str2)) {
                return "00ffffff";
            }
            if ("cyan".equals(str2)) {
                return "00ffffff ";
            }
        } else {
            if ("&HBBGGRR".equalsIgnoreCase(str)) {
                return str2.substring(6) + str2.charAt(4) + str2.charAt(2) + "ff";
            }
            if ("&HAABBGGRR".equalsIgnoreCase(str)) {
                return str2.substring(8) + str2.charAt(6) + str2.charAt(4) + str2.charAt(2);
            }
            if ("decimalCodedBBGGRR".equalsIgnoreCase(str)) {
                String hexString = Integer.toHexString(Integer.parseInt(str2));
                while (hexString.length() < 6) {
                    hexString = "0" + hexString;
                }
                return hexString.substring(4) + hexString.substring(2, 4) + hexString.substring(0, 2) + "ff";
            }
            if ("decimalCodedAABBGGRR".equalsIgnoreCase(str)) {
                String hexString2 = Long.toHexString(Long.parseLong(str2));
                while (hexString2.length() < 8) {
                    hexString2 = "0" + hexString2;
                }
                return hexString2.substring(6) + hexString2.substring(4, 6) + hexString2.substring(2, 4) + hexString2.substring(0, 2);
            }
        }
        return null;
    }

    public p1a(String str, p1a p1aVar) {
        this.f = "";
        this.a = str;
        this.b = p1aVar.b;
        this.c = p1aVar.c;
        this.d = p1aVar.d;
        this.e = p1aVar.e;
        this.f = p1aVar.f;
        this.g = p1aVar.g;
        this.i = p1aVar.i;
        this.h = p1aVar.h;
    }
}
