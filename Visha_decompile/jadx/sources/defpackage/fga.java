package defpackage;

import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import freemarker.template.MalformedTemplateNameException;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public abstract class fga {
    public static final fga a;
    public static final fga b;

    public static final class a extends fga {
        public a() {
            super();
        }

        @Override
        public String e(String str) throws MalformedTemplateNameException {
            fga.c(str);
            String strSubstring = str;
            while (true) {
                int iIndexOf = strSubstring.indexOf("/../");
                if (iIndexOf == 0) {
                    throw fga.d(str);
                }
                if (iIndexOf == -1) {
                    if (strSubstring.startsWith("../")) {
                        throw fga.d(str);
                    }
                    while (true) {
                        int iIndexOf2 = strSubstring.indexOf("/./");
                        if (iIndexOf2 == -1) {
                            break;
                        }
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append(strSubstring.substring(0, iIndexOf2));
                        stringBuffer.append(strSubstring.substring(iIndexOf2 + 2));
                        strSubstring = stringBuffer.toString();
                    }
                    if (strSubstring.startsWith("./")) {
                        strSubstring = strSubstring.substring(2);
                    }
                    return (strSubstring.length() <= 1 || strSubstring.charAt(0) != '/') ? strSubstring : strSubstring.substring(1);
                }
                int iLastIndexOf = strSubstring.lastIndexOf(47, iIndexOf - 1);
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(strSubstring.substring(0, iLastIndexOf + 1));
                stringBuffer2.append(strSubstring.substring(iIndexOf + 4));
                strSubstring = stringBuffer2.toString();
            }
        }

        @Override
        public String f(String str, String str2) {
            if (str == null || str2.indexOf("://") > 0) {
                return str2;
            }
            if (!str2.startsWith("/")) {
                if (!str.endsWith("/")) {
                    str = str.substring(0, str.lastIndexOf("/") + 1);
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str);
                stringBuffer.append(str2);
                return stringBuffer.toString();
            }
            int iIndexOf = str.indexOf("://");
            if (iIndexOf <= 0) {
                return str2.substring(1);
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(str.substring(0, iIndexOf + 2));
            stringBuffer2.append(str2);
            return stringBuffer2.toString();
        }

        public String toString() {
            return "TemplateNameFormat.DEFAULT_2_3_0";
        }
    }

    public static final class b extends fga {
        public b() {
            super();
        }

        @Override
        public String e(String str) throws MalformedTemplateNameException {
            String strSubstring;
            String strSubstring2;
            fga.c(str);
            if (str.indexOf(92) != -1) {
                throw new MalformedTemplateNameException(str, "Backslash (\"\\\") is not allowed in template names. Use slash (\"/\") instead.");
            }
            int iG = g(str);
            if (iG == 0) {
                strSubstring = null;
                strSubstring2 = str;
            } else {
                strSubstring = str.substring(0, iG);
                strSubstring2 = str.substring(iG);
            }
            if (strSubstring2.indexOf(58) != -1) {
                throw new MalformedTemplateNameException(str, "The ':' character can only be used after the scheme name (if there's any), not in the path part");
            }
            String strJ = j(k(h(i(strSubstring2)), str));
            if (strSubstring == null) {
                return strJ;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(strSubstring);
            stringBuffer.append(strJ);
            return stringBuffer.toString();
        }

        @Override
        public String f(String str, String str2) {
            if (str == null || g(str2) != 0) {
                return str2;
            }
            if (str2.startsWith("/")) {
                String strSubstring = str2.substring(1);
                int iG = g(str);
                if (iG == 0) {
                    return strSubstring;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str.substring(0, iG));
                stringBuffer.append(strSubstring);
                return stringBuffer.toString();
            }
            if (!str.endsWith("/")) {
                int iLastIndexOf = str.lastIndexOf("/") + 1;
                if (iLastIndexOf == 0) {
                    iLastIndexOf = g(str);
                }
                str = str.substring(0, iLastIndexOf);
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(str);
            stringBuffer2.append(str2);
            return stringBuffer2.toString();
        }

        public final int g(String str) {
            int iIndexOf = str.indexOf(StringUtils.PROCESS_POSTFIX_DELIMITER);
            if (iIndexOf == -1 || str.lastIndexOf(47, iIndexOf - 1) != -1) {
                return 0;
            }
            int i = iIndexOf + 2;
            return (i < str.length() && str.charAt(iIndexOf + 1) == '/' && str.charAt(i) == '/') ? iIndexOf + 3 : iIndexOf + 1;
        }

        public final String h(String str) {
            String string;
            int length = str.length() - 1;
            while (true) {
                int iLastIndexOf = str.lastIndexOf(46, length);
                if (iLastIndexOf < 0) {
                    return str;
                }
                int i = iLastIndexOf - 1;
                if (iLastIndexOf == 0 || str.charAt(i) == '/') {
                    int i2 = iLastIndexOf + 1;
                    if (i2 == str.length()) {
                        string = str.substring(0, str.length() - 1);
                    } else if (str.charAt(i2) == '/') {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append(str.substring(0, iLastIndexOf));
                        stringBuffer.append(str.substring(iLastIndexOf + 2));
                        string = stringBuffer.toString();
                    }
                    str = string;
                }
                length = i;
            }
        }

        public final String i(String str) {
            String strO;
            while (true) {
                strO = n0a.O(str, "//", "/");
                if (str == strO) {
                    break;
                }
                str = strO;
            }
            return strO.startsWith("/") ? strO.substring(1) : strO;
        }

        public final String j(String str) {
            int i;
            String string;
            while (true) {
                int iIndexOf = str.indexOf(SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE);
                if (iIndexOf == -1) {
                    break;
                }
                if ((iIndexOf == 0 || str.charAt(iIndexOf - 1) == '/') && ((i = iIndexOf + 3) == str.length() || str.charAt(i) == '/')) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(str.substring(0, iIndexOf));
                    stringBuffer.append(str.substring(iIndexOf + 2));
                    string = stringBuffer.toString();
                } else {
                    string = str;
                }
                if (str == string) {
                    str = string;
                    break;
                }
                str = string;
            }
            if (!str.startsWith("*")) {
                return str;
            }
            if (str.length() == 1) {
                return "";
            }
            return str.charAt(1) == '/' ? str.substring(2) : str;
        }

        public final String k(String str, String str2) throws MalformedTemplateNameException {
            boolean z;
            int iLastIndexOf;
            int i = 0;
            while (true) {
                int iIndexOf = str.indexOf(FileTree.PARENT_DIR, i);
                if (iIndexOf < 0) {
                    return str;
                }
                if (iIndexOf == 0) {
                    throw fga.d(str2);
                }
                if (str.charAt(iIndexOf - 1) == '/') {
                    int i2 = iIndexOf + 2;
                    if (i2 == str.length()) {
                        z = false;
                    } else if (str.charAt(i2) == '/') {
                        z = true;
                    }
                    int i3 = iIndexOf - 2;
                    boolean z2 = false;
                    while (true) {
                        if (i3 == -1) {
                            throw fga.d(str2);
                        }
                        iLastIndexOf = str.lastIndexOf(47, i3);
                        if (iLastIndexOf == -1) {
                            if (i3 != 0 || str.charAt(0) != '*') {
                                break;
                                break;
                            }
                            throw fga.d(str2);
                        }
                        if (str.charAt(iLastIndexOf + 1) != '*' || str.charAt(iLastIndexOf + 2) != '/') {
                            break;
                        }
                        i3 = iLastIndexOf - 1;
                        z2 = true;
                    }
                    StringBuffer stringBuffer = new StringBuffer();
                    int i4 = iLastIndexOf + 1;
                    stringBuffer.append(str.substring(0, i4));
                    stringBuffer.append(z2 ? "*/" : "");
                    stringBuffer.append(str.substring(iIndexOf + (z ? 3 : 2)));
                    str = stringBuffer.toString();
                    i = i4;
                }
                i = iIndexOf + 3;
            }
        }

        public String toString() {
            return "TemplateNameFormat.DEFAULT_2_4_0";
        }
    }

    static {
        a = new a();
        b = new b();
    }

    public static void c(String str) throws MalformedTemplateNameException {
        if (str.indexOf(0) != -1) {
            throw new MalformedTemplateNameException(str, "Null character (\\u0000) in the name; possible attack attempt");
        }
    }

    public static MalformedTemplateNameException d(String str) {
        return new MalformedTemplateNameException(str, "Backing out from the root directory is not allowed");
    }

    public abstract String e(String str);

    public abstract String f(String str, String str2);

    public fga() {
    }
}
