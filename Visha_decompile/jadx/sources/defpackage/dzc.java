package defpackage;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mozilla.classfile.ByteCode;
import org.schabi.newpipe.extractor.exceptions.FoundAdException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.a;

public final class dzc extends il5 {
    public static final Pattern a = Pattern.compile("^([a-zA-Z0-9_-]{11})");
    public static final dzc b = new dzc();
    public static final List c = hdb.a(new Object[]{"embed/", "live/", "shorts/", "watch/", "v/", "w/"});

    public static String j(String str) throws ParsingException {
        String strK = k(str);
        if (strK != null) {
            return strK;
        }
        throw new ParsingException("The given string is not a YouTube video ID");
    }

    public static String k(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = a.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    public static dzc m() {
        return b;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public String f(String str) throws ParsingException {
        String strH;
        byte b2 = 1;
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            if (scheme != null && (scheme.equals("vnd.youtube") || scheme.equals("vnd.youtube.launch"))) {
                String schemeSpecificPart = uri.getSchemeSpecificPart();
                if (!schemeSpecificPart.startsWith("//")) {
                    return j(schemeSpecificPart);
                }
                String strK = k(schemeSpecificPart.substring(2));
                if (strK != null) {
                    return strK;
                }
                str = "https:" + schemeSpecificPart;
            }
        } catch (URISyntaxException unused) {
        }
        try {
            URL urlX = a.x(str);
            String host = urlX.getHost();
            String path = urlX.getPath();
            if (!path.isEmpty()) {
                path = path.substring(1);
            }
            if (!a.l(urlX) || (!cxc.l0(urlX) && !cxc.k0(urlX) && !cxc.b0(urlX) && !cxc.c0(urlX) && !cxc.e0(urlX))) {
                if (!host.equalsIgnoreCase("googleads.g.doubleclick.net")) {
                    throw new ParsingException("The URL is not a YouTube URL");
                }
                throw new FoundAdException("Error: found ad: " + str);
            }
            if (qxc.r().a(str)) {
                throw new ParsingException("Error: no suitable URL: " + str);
            }
            String upperCase = host.toUpperCase();
            upperCase.hashCode();
            switch (upperCase.hashCode()) {
                case -2114213841:
                    b2 = !upperCase.equals("INVIDIOUS.ZEE.LI") ? (byte) -1 : (byte) 0;
                    break;
                case -2087592960:
                    if (!upperCase.equals("TUBUS.EDUVID.ORG")) {
                        b2 = -1;
                    }
                    break;
                case -1698218251:
                    b2 = !upperCase.equals("Y2U.BE") ? (byte) -1 : (byte) 2;
                    break;
                case -1693444139:
                    b2 = !upperCase.equals("M.YOUTUBE.COM") ? (byte) -1 : (byte) 3;
                    break;
                case -1604112842:
                    b2 = !upperCase.equals("YT.CYBERHOST.UK") ? (byte) -1 : (byte) 4;
                    break;
                case -1416474788:
                    b2 = !upperCase.equals("VID.MINT.LGBT") ? (byte) -1 : (byte) 5;
                    break;
                case -1146372515:
                    b2 = !upperCase.equals("YTB.TROM.TF") ? (byte) -1 : (byte) 6;
                    break;
                case -1141849304:
                    b2 = !upperCase.equals("VID.PUFFYAN.US") ? (byte) -1 : (byte) 7;
                    break;
                case -1092206675:
                    b2 = !upperCase.equals("PIPED.KAVIN.ROCKS") ? (byte) -1 : (byte) 8;
                    break;
                case -827318675:
                    b2 = !upperCase.equals("INVIDIOUS.NAMAZSO.EU") ? (byte) -1 : (byte) 9;
                    break;
                case -397809965:
                    b2 = !upperCase.equals("DEV.INVIDIO.US") ? (byte) -1 : (byte) 10;
                    break;
                case -397058810:
                    b2 = !upperCase.equals("INV.RIVERSIDE.ROCKS") ? (byte) -1 : ByteCode.T_LONG;
                    break;
                case -244508014:
                    b2 = !upperCase.equals("INVIDIOU.SITE") ? (byte) -1 : (byte) 12;
                    break;
                case -124567835:
                    b2 = !upperCase.equals("YEWTU.BE") ? (byte) -1 : (byte) 13;
                    break;
                case -52807283:
                    b2 = !upperCase.equals("MUSIC.YOUTUBE.COM") ? (byte) -1 : (byte) 14;
                    break;
                case 73534791:
                    b2 = !upperCase.equals("INVIDIOUS.KAVIN.ROCKS") ? (byte) -1 : (byte) 15;
                    break;
                case 103116914:
                    b2 = !upperCase.equals("INVIDIOUS-US.KAVIN.ROCKS") ? (byte) -1 : (byte) 16;
                    break;
                case 103276081:
                    b2 = !upperCase.equals("YOUTU.BE") ? (byte) -1 : (byte) 17;
                    break;
                case 169254170:
                    b2 = !upperCase.equals("HOOKTUBE.COM") ? (byte) -1 : (byte) 18;
                    break;
                case 301798888:
                    b2 = !upperCase.equals("INVIDIOUS.MOOMOO.ME") ? (byte) -1 : (byte) 19;
                    break;
                case 360245068:
                    b2 = !upperCase.equals("Y.COM.CM") ? (byte) -1 : (byte) 20;
                    break;
                case 405074072:
                    b2 = !upperCase.equals("INVIDIOUS.EXONIP.DE") ? (byte) -1 : (byte) 21;
                    break;
                case 941554175:
                    b2 = !upperCase.equals("WWW.YOUTUBE.COM") ? (byte) -1 : (byte) 22;
                    break;
                case 1061977963:
                    b2 = !upperCase.equals("TUBE.CONNECT.CAFE") ? (byte) -1 : (byte) 23;
                    break;
                case 1229581114:
                    b2 = !upperCase.equals("INVIDIO.US") ? (byte) -1 : (byte) 24;
                    break;
                case 1607514856:
                    b2 = !upperCase.equals("INVIDIOUS.FDN.FR") ? (byte) -1 : (byte) 25;
                    break;
                case 1649009762:
                    b2 = !upperCase.equals("INVIDIOUS.SNOPYTA.ORG") ? (byte) -1 : (byte) 26;
                    break;
                case 1720784822:
                    b2 = !upperCase.equals("REDIRECT.INVIDIOUS.IO") ? (byte) -1 : (byte) 27;
                    break;
                case 1739373659:
                    b2 = !upperCase.equals("YTPRIVATE.COM") ? (byte) -1 : (byte) 28;
                    break;
                case 1818283559:
                    b2 = !upperCase.equals("INVIDIOUS.048596.XYZ") ? (byte) -1 : (byte) 29;
                    break;
                case 1876693401:
                    b2 = !upperCase.equals("INVIDIOUS.BLAMEFRAN.NET") ? (byte) -1 : (byte) 30;
                    break;
                case 1999754024:
                    b2 = !upperCase.equals("INVIDIOUS.SILKKY.CLOUD") ? (byte) -1 : (byte) 31;
                    break;
                case 2022964729:
                    b2 = !upperCase.equals("WWW.YOUTUBE-NOCOOKIE.COM") ? (byte) -1 : (byte) 32;
                    break;
                case 2024273937:
                    b2 = !upperCase.equals("WWW.INVIDIO.US") ? (byte) -1 : (byte) 33;
                    break;
                case 2035582341:
                    b2 = !upperCase.equals("INVIDIOUS.SITE") ? (byte) -1 : (byte) 34;
                    break;
                case 2075880438:
                    b2 = !upperCase.equals("YOUTUBE.COM") ? (byte) -1 : (byte) 35;
                    break;
                default:
                    b2 = -1;
                    break;
            }
            switch (b2) {
                case 0:
                case 1:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 15:
                case 16:
                case 18:
                case 19:
                case 20:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 34:
                    if (path.equals("watch") && (strH = a.h(urlX, "v")) != null) {
                        return j(strH);
                    }
                    String strL = l(path);
                    if (strL != null) {
                        return strL;
                    }
                    String strH2 = a.h(urlX, "v");
                    return strH2 != null ? j(strH2) : j(path);
                case 2:
                case 17:
                    String strH3 = a.h(urlX, "v");
                    return strH3 != null ? j(strH3) : j(path);
                case 3:
                case 14:
                case 22:
                case 35:
                    if (!path.equals("attribution_link")) {
                        String strL2 = l(path);
                        return strL2 != null ? strL2 : j(a.h(urlX, "v"));
                    }
                    try {
                        return j(a.h(a.x("https://www.youtube.com" + a.h(urlX, "u")), "v"));
                    } catch (MalformedURLException unused2) {
                        throw new ParsingException("Error: no suitable URL: " + str);
                    }
                case 32:
                    if (path.startsWith("embed/")) {
                        return j(path.substring(6));
                    }
                    break;
            }
            throw new ParsingException("Error: no suitable URL: " + str);
        } catch (MalformedURLException unused3) {
            throw new IllegalArgumentException("The given URL is not valid");
        }
    }

    @Override
    public String g(String str) {
        return "https://www.youtube.com/watch?v=" + str;
    }

    @Override
    public boolean i(String str) throws FoundAdException {
        try {
            f(str);
            return true;
        } catch (FoundAdException e) {
            throw e;
        } catch (ParsingException unused) {
            return false;
        }
    }

    public final String l(String str) {
        for (String str2 : c) {
            if (str.startsWith(str2)) {
                return j(str.substring(str2.length()));
            }
        }
        return null;
    }
}
