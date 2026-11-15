package defpackage;

import com.transsion.apiinvoke.invoke.RspCode;
import com.transsion.videodownloader.VideoDownloadException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;

public abstract class ty2 {
    public static String a(Throwable th) {
        if (th != null && th.getMessage() != null && th.getMessage().startsWith("donwload failde,errorcode:")) {
            return th.getMessage();
        }
        return e(g(th), c(th));
    }

    public static int b(int i) {
        if (i == 5403) {
            return 403;
        }
        if (i == 5404) {
            return 404;
        }
        if (i != 5410) {
            return -1;
        }
        return RspCode.ERROR_SERVICE_PUBLISH_REMOTE;
    }

    public static int c(Throwable th) {
        if (th == null) {
            return -1;
        }
        int iJ = j(th.getMessage());
        return iJ > 0 ? iJ : b(g(th));
    }

    public static String d(int i) {
        return "donwload failde,errorcode:" + i;
    }

    public static String e(int i, int i2) {
        if (i2 <= 0) {
            return d(i);
        }
        return "donwload failde,errorcode:" + i + ",httpCode:" + i2;
    }

    public static String f(int i) {
        return e(i, b(i));
    }

    public static int g(Throwable th) {
        Integer numI;
        Integer numI2;
        if (th == null) {
            return -1;
        }
        int iJ = j(th.getMessage());
        if (iJ > 0 && (numI2 = i(iJ)) != null) {
            return numI2.intValue();
        }
        if (th instanceof SocketTimeoutException) {
            return 5000;
        }
        if (th instanceof FileNotFoundException) {
            return 5001;
        }
        if (th instanceof VideoDownloadException) {
            String msg = ((VideoDownloadException) th).getMsg();
            if ("File Length Cannot be fetched".equals(msg)) {
                return 5100;
            }
            if ("M3U8 File content error".equals(msg)) {
                return 5101;
            }
            if ("MimeType is null".equals(msg)) {
                return 5102;
            }
            if ("MimeType not found".equals(msg)) {
                return 5103;
            }
            if ("Create connection failed".equals(msg) || "unexpected end of stream".equals(msg)) {
                return 5200;
            }
            int iJ2 = j(msg);
            if (iJ2 > 0 && (numI = i(iJ2)) != null) {
                return numI.intValue();
            }
        } else {
            if (th instanceof UnknownHostException) {
                return 5002;
            }
            if (h(th)) {
                return 5200;
            }
        }
        Throwable cause = th.getCause();
        if (cause == null || cause == th) {
            return -1;
        }
        return g(cause);
    }

    public static boolean h(Throwable th) {
        if ((th instanceof ConnectException) || (th instanceof SocketException)) {
            return true;
        }
        if ((th instanceof IOException) && !(th instanceof FileNotFoundException)) {
            return true;
        }
        String message = th.getMessage();
        if (message == null) {
            return false;
        }
        String lowerCase = message.toLowerCase();
        return lowerCase.contains("connection reset") || lowerCase.contains("unexpected end of stream") || lowerCase.contains("failed to connect") || lowerCase.contains("network is unreachable") || lowerCase.contains("connection timed out");
    }

    public static Integer i(int i) {
        if (i == 403) {
            return 5403;
        }
        if (i != 404) {
            return i != 410 ? null : 5410;
        }
        return 5404;
    }

    public static int j(String str) {
        if (str != null && !str.isEmpty()) {
            String lowerCase = str.toLowerCase();
            int iIndexOf = lowerCase.indexOf("http response code is");
            if (iIndexOf >= 0) {
                return k(lowerCase, iIndexOf + 21);
            }
            if (lowerCase.startsWith("http ")) {
                return k(lowerCase, 5);
            }
        }
        return -1;
    }

    public static int k(String str, int i) {
        while (i < str.length() && str.charAt(i) == ' ') {
            i++;
        }
        int i2 = i;
        while (i2 < str.length() && Character.isDigit(str.charAt(i2))) {
            i2++;
        }
        if (i2 <= i) {
            return -1;
        }
        try {
            return Integer.parseInt(str.substring(i, i2));
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static Throwable l(Throwable th) {
        String strA = a(th);
        return (th == null || !strA.equals(th.getMessage())) ? new Throwable(strA, th) : th;
    }
}
