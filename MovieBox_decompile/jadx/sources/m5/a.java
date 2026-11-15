package m5;

import com.cloud.tmc.integration.params.TmcStartParams;

public class a {

    private static int f66252j;

    public String f66253a;

    public String f66254b;

    public String f66255c;

    public String f66256d;

    public String f66257e;

    public String f66258f;

    public boolean f66259g;

    public boolean f66260h;

    public boolean f66261i;

    public a(String str) {
        this.f66258f = "";
        this.f66253a = str;
    }

    public static String a() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("default");
        int i10 = f66252j;
        f66252j = i10 + 1;
        sb2.append(i10);
        return sb2.toString();
    }

    public static String b(String str, String str2) {
        if (str.equalsIgnoreCase("name")) {
            if (str2.equals(TmcStartParams.KEY_TRANSPARENT)) {
                return "00000000";
            }
            if (str2.equals("black")) {
                return "000000ff";
            }
            if (str2.equals("silver")) {
                return "c0c0c0ff";
            }
            if (str2.equals("gray")) {
                return "808080ff";
            }
            if (str2.equals("white")) {
                return "ffffffff";
            }
            if (str2.equals("maroon")) {
                return "800000ff";
            }
            if (str2.equals("red")) {
                return "ff0000ff";
            }
            if (str2.equals("purple")) {
                return "800080ff";
            }
            if (str2.equals("fuchsia")) {
                return "ff00ffff";
            }
            if (str2.equals("magenta")) {
                return "ff00ffff ";
            }
            if (str2.equals("green")) {
                return "008000ff";
            }
            if (str2.equals("lime")) {
                return "00ff00ff";
            }
            if (str2.equals("olive")) {
                return "808000ff";
            }
            if (str2.equals("yellow")) {
                return "ffff00ff";
            }
            if (str2.equals("navy")) {
                return "000080ff";
            }
            if (str2.equals("blue")) {
                return "0000ffff";
            }
            if (str2.equals("teal")) {
                return "008080ff";
            }
            if (str2.equals("aqua")) {
                return "00ffffff";
            }
            if (str2.equals("cyan")) {
                return "00ffffff ";
            }
        } else {
            if (str.equalsIgnoreCase("&HBBGGRR")) {
                return str2.substring(6) + str2.substring(4, 5) + str2.substring(2, 3) + "ff";
            }
            if (str.equalsIgnoreCase("&HAABBGGRR")) {
                return str2.substring(8) + str2.substring(6, 7) + str2.substring(4, 5) + str2.substring(2, 3);
            }
            if (str.equalsIgnoreCase("decimalCodedBBGGRR")) {
                String hexString = Integer.toHexString(Integer.parseInt(str2));
                while (hexString.length() < 6) {
                    hexString = "0" + hexString;
                }
                return hexString.substring(4) + hexString.substring(2, 4) + hexString.substring(0, 2) + "ff";
            }
            if (str.equalsIgnoreCase("decimalCodedAABBGGRR")) {
                String hexString2 = Long.toHexString(Long.parseLong(str2));
                while (hexString2.length() < 8) {
                    hexString2 = "0" + hexString2;
                }
                return hexString2.substring(6) + hexString2.substring(4, 6) + hexString2.substring(2, 4) + hexString2.substring(0, 2);
            }
        }
        return null;
    }

    public a(String str, a aVar) {
        this.f66258f = "";
        this.f66253a = str;
        this.f66254b = aVar.f66254b;
        this.f66255c = aVar.f66255c;
        this.f66256d = aVar.f66256d;
        this.f66257e = aVar.f66257e;
        this.f66258f = aVar.f66258f;
        this.f66259g = aVar.f66259g;
        this.f66261i = aVar.f66261i;
        this.f66260h = aVar.f66260h;
    }
}
