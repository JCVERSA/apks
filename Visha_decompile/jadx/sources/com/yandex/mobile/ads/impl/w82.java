package com.yandex.mobile.ads.impl;

import android.net.Uri;
import android.webkit.URLUtil;
import androidx.core.net.MailTo;
import com.just.agentweb.DefaultWebClient;
import defpackage.g1a;
import defpackage.y45;
import java.net.URI;
import java.util.regex.Pattern;
import kotlin.Result;
import kotlin.text.Regex;

public final class w82 {
    public static final a a = new a(0);

    public static final class a {
        private a() {
        }

        public static String a(String str) {
            Object objM279constructorimpl;
            y45.j(str, "url");
            try {
                Result.Companion companion = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(Uri.parse(d(str)).getHost());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
            }
            if (Result.m285isFailureimpl(objM279constructorimpl)) {
                objM279constructorimpl = null;
            }
            return (String) objM279constructorimpl;
        }

        public static boolean b(String str) {
            y45.j(str, "url");
            y45.j(str, "url");
            if (str.length() != 0) {
                String strReplaceFirst = new Regex("http(s?)://").replaceFirst(str, "");
                for (b bVar : b.values()) {
                    if (g1a.R(strReplaceFirst, bVar.a(), false, 2, null)) {
                        return false;
                    }
                }
            }
            return URLUtil.isNetworkUrl(str);
        }

        public static boolean c(String str) {
            y45.j(str, "url");
            if (str.length() == 0) {
                return false;
            }
            String strReplaceFirst = new Regex("http(s?)://").replaceFirst(str, "");
            b.c.getClass();
            b[] bVarArr = {b.d, b.e, b.f, b.g};
            for (int i = 0; i < 4; i++) {
                if (g1a.R(strReplaceFirst, bVarArr[i].a(), false, 2, null)) {
                    return true;
                }
            }
            return false;
        }

        private static String d(String str) {
            if (URLUtil.isHttpUrl(str) || URLUtil.isHttpsUrl(str)) {
                return str;
            }
            return "https://" + str;
        }

        public a(int i) {
            this();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v17 com.yandex.mobile.ads.impl.w82$b[], still in use, count: 1, list:
      (r0v17 com.yandex.mobile.ads.impl.w82$b[]) from 0x016c: INVOKE (r0v17 com.yandex.mobile.ads.impl.w82$b[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class b {
        EF1(DefaultWebClient.SCHEME_SMS),
        EF2(MailTo.MAILTO_SCHEME),
        EF3("voicemail:"),
        EF4("tel:"),
        EF5("callto:"),
        EF6("fax:"),
        EF7("geo:"),
        EF8("map:"),
        EF9("maps:"),
        d("market:"),
        e("play:"),
        EF12("google.streetview:"),
        f("market.android"),
        g("play.google"),
        EF189("map"),
        EF204("maps"),
        EF217("mobile.maps"),
        EF230("m.maps"),
        EF243("maps.yandex.ru"),
        EF256("message:"),
        EF269("sip:"),
        EF282("skype:"),
        EF293(DefaultWebClient.SCHEME_SMS),
        EF306("gtalk:"),
        EF319("spotify:"),
        EF332("lastfm:"),
        EF345("yastore:");

        public static final a c;
        private final String b;

        public static final class a {
            private a() {
            }

            public a(int i) {
                this();
            }
        }

        static {
            kotlin.enums.a.a(bVarArr);
            c = new a(0);
        }

        private b(String str) {
            super(str, i);
            this.b = str;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) h.clone();
        }

        public final String a() {
            return this.b;
        }
    }

    static {
        Pattern.compile("maps.yandex");
    }

    public static boolean a(String str) {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            new URI(str);
            objM279constructorimpl = Result.m279constructorimpl(Boolean.valueOf((str == null || str.length() == 0) ? false : true));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        Boolean bool = Boolean.FALSE;
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = bool;
        }
        return ((Boolean) objM279constructorimpl).booleanValue();
    }
}
