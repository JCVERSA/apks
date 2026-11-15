package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.r4;
import com.transsion.home.p004enum.BottomTabType;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

abstract class y {

    private static final Pattern f25853a = Pattern.compile("([A-Z_]+) (.*) RTSP/1\\.0");

    private static final Pattern f25854b = Pattern.compile("RTSP/1\\.0 (\\d+) (.+)");

    private static final Pattern f25855c = Pattern.compile("Content-Length:\\s?(\\d+)", 2);

    private static final Pattern f25856d = Pattern.compile("([\\w$\\-_.+]+)(?:;\\s?timeout=(\\d+))?");

    private static final Pattern f25857e = Pattern.compile("Digest realm=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\",\\s?(?:domain=\"(.+)\",\\s?)?nonce=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\"(?:,\\s?opaque=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\")?");

    private static final Pattern f25858f = Pattern.compile("Basic realm=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\"");

    private static final String f25859g = new String(new byte[]{10});

    private static final String f25860h = new String(new byte[]{13, 10});

    public static final class a {

        public final String f25861a;

        public final String f25862b;

        public a(String str, String str2) {
            this.f25861a = str;
            this.f25862b = str2;
        }
    }

    public static final class b {

        public final String f25863a;

        public final long f25864b;

        public b(String str, long j10) {
            this.f25863a = str;
            this.f25864b = j10;
        }
    }

    public static void a(boolean z10, String str) throws ParserException {
        if (!z10) {
            throw ParserException.createForMalformedManifest(str, null);
        }
    }

    public static byte[] b(List list) {
        return com.google.common.base.g.h(f25860h).d(list).getBytes(u.f25830g);
    }

    private static String c(int i10) {
        if (i10 == 200) {
            return "OK";
        }
        if (i10 == 461) {
            return "Unsupported Transport";
        }
        if (i10 == 500) {
            return "Internal Server Error";
        }
        if (i10 == 505) {
            return "RTSP Version Not Supported";
        }
        if (i10 == 301) {
            return "Move Permanently";
        }
        if (i10 == 302) {
            return "Move Temporarily";
        }
        if (i10 == 400) {
            return "Bad Request";
        }
        if (i10 == 401) {
            return "Unauthorized";
        }
        if (i10 == 404) {
            return "Not Found";
        }
        if (i10 == 405) {
            return "Method Not Allowed";
        }
        switch (i10) {
            case 454:
                return "Session Not Found";
            case 455:
                return "Method Not Valid In This State";
            case 456:
                return "Header Field Not Valid";
            case 457:
                return "Invalid Range";
            default:
                throw new IllegalArgumentException();
        }
    }

    public static byte[] d(String str) {
        return str.getBytes(u.f25830g);
    }

    public static boolean e(List list) {
        return f25854b.matcher((CharSequence) list.get(0)).matches();
    }

    public static boolean f(String str) {
        return f25853a.matcher(str).matches() || f25854b.matcher(str).matches();
    }

    public static long g(String str) {
        try {
            Matcher matcher = f25855c.matcher(str);
            if (matcher.find()) {
                return Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            }
            return -1L;
        } catch (NumberFormatException e10) {
            throw ParserException.createForMalformedManifest(str, e10);
        }
    }

    public static int h(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e10) {
            throw ParserException.createForMalformedManifest(str, e10);
        }
    }

    private static int i(String str) {
        str.hashCode();
        switch (str) {
            case "RECORD":
                return 8;
            case "TEARDOWN":
                return 12;
            case "GET_PARAMETER":
                return 3;
            case "OPTIONS":
                return 4;
            case "PLAY_NOTIFY":
                return 7;
            case "PLAY":
                return 6;
            case "REDIRECT":
                return 9;
            case "SET_PARAMETER":
                return 11;
            case "PAUSE":
                return 5;
            case "SETUP":
                return 10;
            case "ANNOUNCE":
                return 1;
            case "DESCRIBE":
                return 2;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static ImmutableList j(String str) {
        if (str == null) {
            return ImmutableList.of();
        }
        ImmutableList.a aVar = new ImmutableList.a();
        for (String str2 : p0.S0(str, ",\\s?")) {
            aVar.a(Integer.valueOf(i(str2)));
        }
        return aVar.e();
    }

    public static b0 k(List list) {
        Matcher matcher = f25853a.matcher((CharSequence) list.get(0));
        com.google.android.exoplayer2.util.a.a(matcher.matches());
        int i10 = i((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
        Uri uri = Uri.parse((String) com.google.android.exoplayer2.util.a.e(matcher.group(2)));
        int iIndexOf = list.indexOf("");
        com.google.android.exoplayer2.util.a.a(iIndexOf > 0);
        return new b0(uri, i10, new o.b().c(list.subList(1, iIndexOf)).e(), com.google.common.base.g.h(f25860h).d(list.subList(iIndexOf + 1, list.size())));
    }

    public static c0 l(List list) {
        Matcher matcher = f25854b.matcher((CharSequence) list.get(0));
        com.google.android.exoplayer2.util.a.a(matcher.matches());
        int i10 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
        int iIndexOf = list.indexOf("");
        com.google.android.exoplayer2.util.a.a(iIndexOf > 0);
        return new c0(i10, new o.b().c(list.subList(1, iIndexOf)).e(), com.google.common.base.g.h(f25860h).d(list.subList(iIndexOf + 1, list.size())));
    }

    public static b m(String str) throws ParserException {
        long j10;
        Matcher matcher = f25856d.matcher(str);
        if (!matcher.matches()) {
            throw ParserException.createForMalformedManifest(str, null);
        }
        String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
        String strGroup = matcher.group(2);
        if (strGroup != null) {
            try {
                j10 = ((long) Integer.parseInt(strGroup)) * 1000;
            } catch (NumberFormatException e10) {
                throw ParserException.createForMalformedManifest(str, e10);
            }
        } else {
            j10 = 60000;
        }
        return new b(str2, j10);
    }

    public static a n(Uri uri) {
        String userInfo = uri.getUserInfo();
        if (userInfo == null || !userInfo.contains(":")) {
            return null;
        }
        String[] strArrT0 = p0.T0(userInfo, ":");
        return new a(strArrT0[0], strArrT0[1]);
    }

    public static l o(String str) throws ParserException {
        Matcher matcher = f25857e.matcher(str);
        if (matcher.find()) {
            return new l(2, (String) com.google.android.exoplayer2.util.a.e(matcher.group(1)), (String) com.google.android.exoplayer2.util.a.e(matcher.group(3)), com.google.common.base.p.e(matcher.group(4)));
        }
        Matcher matcher2 = f25858f.matcher(str);
        if (matcher2.matches()) {
            return new l(1, (String) com.google.android.exoplayer2.util.a.e(matcher2.group(1)), "", "");
        }
        throw ParserException.createForMalformedManifest("Invalid WWW-Authenticate header " + str, null);
    }

    public static Uri p(Uri uri) {
        if (uri.getUserInfo() == null) {
            return uri;
        }
        String str = (String) com.google.android.exoplayer2.util.a.e(uri.getAuthority());
        com.google.android.exoplayer2.util.a.a(str.contains("@"));
        return uri.buildUpon().encodedAuthority(p0.S0(str, "@")[1]).build();
    }

    public static ImmutableList q(b0 b0Var) {
        com.google.android.exoplayer2.util.a.a(b0Var.f25673c.d("CSeq") != null);
        ImmutableList.a aVar = new ImmutableList.a();
        aVar.a(p0.C("%s %s %s", t(b0Var.f25672b), b0Var.f25671a, "RTSP/1.0"));
        ImmutableListMultimap immutableListMultimapB = b0Var.f25673c.b();
        r4 it = immutableListMultimapB.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ImmutableList immutableList = immutableListMultimapB.get(str);
            for (int i10 = 0; i10 < immutableList.size(); i10++) {
                aVar.a(p0.C("%s: %s", str, immutableList.get(i10)));
            }
        }
        aVar.a("");
        aVar.a(b0Var.f25674d);
        return aVar.e();
    }

    public static ImmutableList r(c0 c0Var) {
        com.google.android.exoplayer2.util.a.a(c0Var.f25676b.d("CSeq") != null);
        ImmutableList.a aVar = new ImmutableList.a();
        aVar.a(p0.C("%s %s %s", "RTSP/1.0", Integer.valueOf(c0Var.f25675a), c(c0Var.f25675a)));
        ImmutableListMultimap immutableListMultimapB = c0Var.f25676b.b();
        r4 it = immutableListMultimapB.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ImmutableList immutableList = immutableListMultimapB.get(str);
            for (int i10 = 0; i10 < immutableList.size(); i10++) {
                aVar.a(p0.C("%s: %s", str, immutableList.get(i10)));
            }
        }
        aVar.a("");
        aVar.a(c0Var.f25677c);
        return aVar.e();
    }

    public static String[] s(String str) {
        String str2 = f25860h;
        if (!str.contains(str2)) {
            str2 = f25859g;
        }
        return p0.S0(str, str2);
    }

    public static String t(int i10) {
        switch (i10) {
            case 1:
                return "ANNOUNCE";
            case 2:
                return "DESCRIBE";
            case 3:
                return "GET_PARAMETER";
            case 4:
                return "OPTIONS";
            case 5:
                return "PAUSE";
            case 6:
                return "PLAY";
            case 7:
                return "PLAY_NOTIFY";
            case 8:
                return "RECORD";
            case 9:
                return BottomTabType.TAB_OPEN_TYPE_TAB;
            case 10:
                return "SETUP";
            case 11:
                return "SET_PARAMETER";
            case 12:
                return "TEARDOWN";
            default:
                throw new IllegalStateException();
        }
    }
}
