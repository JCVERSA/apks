package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.qv0;
import defpackage.ul4;
import defpackage.y45;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {
    public static a e;
    public final String a;
    public Cipher b;
    public Cipher c;
    public static final C0040a d = new C0040a(null);
    public static String f = "";

    public static final class C0040a {
        public C0040a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static a a(C0040a c0040a, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = c0040a.c();
            }
            return c0040a.b(str);
        }

        public final synchronized a b(String str) {
            a aVar;
            y45.j(str, TtmlNode.ATTR_ID);
            aVar = a.e;
            if (aVar == null) {
                aVar = new a(str);
                a.e = aVar;
            }
            return aVar;
        }

        public final String c() {
            if (TextUtils.isEmpty(a.f)) {
                a.f = "ew3s" + d(1, 2) + f() + e();
            }
            return a.f;
        }

        public final String d(int i, int i2) {
            int i3 = i * i2;
            if (1 <= i3) {
                while (true) {
                    int i4 = ((i4 % i == 0 && i4 % i2 == 0) || i4 == i3) ? 1 : i4 + 1;
                }
            }
            return "U3N0";
        }

        public final String e() {
            String string = ul4.a().getResources().getString(R.string.abk4);
            y45.i(string, "getString(...)");
            return string;
        }

        public final String f() {
            return "Gdef";
        }

        public C0040a() {
        }
    }

    public a(String str) {
        y45.j(str, "secretKey");
        this.a = "AttrUtil";
        try {
            byte[] bytes = str.getBytes(qv0.b);
            y45.i(bytes, "getBytes(...)");
            SecretKeySpec secretKeySpec = new SecretKeySpec(bytes, "AES");
            this.b = Cipher.getInstance("AES");
            this.c = Cipher.getInstance("AES");
            Cipher cipher = this.b;
            if (cipher != null) {
                cipher.init(1, secretKeySpec);
            }
            Cipher cipher2 = this.c;
            if (cipher2 != null) {
                cipher2.init(2, secretKeySpec);
            }
        } catch (Exception e2) {
            ikd.b().e(this.a, "e: " + e2);
        }
    }

    public final String e(String str) {
        if (str != null && !j1a.o0(str)) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                Charset charset = StandardCharsets.UTF_8;
                y45.i(charset, "UTF_8");
                byte[] bytes = str.getBytes(charset);
                y45.i(bytes, "getBytes(...)");
                byte[] bArrDigest = messageDigest.digest(bytes);
                StringBuilder sb = new StringBuilder();
                y45.g(bArrDigest);
                for (byte b : bArrDigest) {
                    String hexString = Integer.toHexString(b & 255);
                    if (hexString.length() == 1) {
                        sb.append('0');
                    }
                    sb.append(hexString);
                }
                String string = sb.toString();
                y45.i(string, "toString(...)");
                return string;
            } catch (NoSuchAlgorithmException e2) {
                ikd.b().e("SHA-256 algorithm not found, e: " + e2);
            }
        }
        return "";
    }

    public final String f(String str) {
        byte[] bArrDoFinal;
        if (str != null && !j1a.o0(str)) {
            try {
                Cipher cipher = this.b;
                if (cipher != null) {
                    byte[] bytes = str.getBytes(qv0.b);
                    y45.i(bytes, "getBytes(...)");
                    bArrDoFinal = cipher.doFinal(bytes);
                } else {
                    bArrDoFinal = null;
                }
                if (bArrDoFinal == null) {
                    return "";
                }
                String strEncodeToString = Base64.getEncoder().encodeToString(bArrDoFinal);
                y45.g(strEncodeToString);
                return strEncodeToString;
            } catch (Exception e2) {
                ikd.b().e(this.a, "encrypt e: " + e2);
            }
        }
        return "";
    }
}
