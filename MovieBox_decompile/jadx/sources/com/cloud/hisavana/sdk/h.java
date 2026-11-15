package com.cloud.hisavana.sdk;

import android.os.Build;
import android.text.TextUtils;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

public final class h {

    private static h f21874e;

    private final String f21876a;

    private Cipher f21877b;

    private Cipher f21878c;

    public static final a f21873d = new a(null);

    private static String f21875f = "";

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static h a(a aVar, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = aVar.c();
            }
            return aVar.b(str);
        }

        private final String c() {
            if (TextUtils.isEmpty(h.f21875f)) {
                h.f21875f = "ew3s" + d(1, 2) + f() + e();
            }
            return h.f21875f;
        }

        private final String d(int i10, int i11) {
            int i12 = i10 * i11;
            if (1 <= i12) {
                while (true) {
                    int i13 = ((i13 % i10 == 0 && i13 % i11 == 0) || i13 == i12) ? 1 : i13 + 1;
                }
            }
            return "U3N0";
        }

        private final String e() {
            String string = com.cloud.sdk.commonutil.util.e.a().getResources().getString(R$string.abk4);
            Intrinsics.g(string, "getString(...)");
            return string;
        }

        private final String f() {
            return "Gdef";
        }

        public final synchronized h b(String id2) {
            h hVar;
            Intrinsics.h(id2, "id");
            hVar = h.f21874e;
            if (hVar == null) {
                hVar = new h(id2);
                h.f21874e = hVar;
            }
            return hVar;
        }

        private a() {
        }
    }

    public h(String secretKey) {
        Intrinsics.h(secretKey, "secretKey");
        this.f21876a = "AttrUtil";
        try {
            byte[] bytes = secretKey.getBytes(Charsets.UTF_8);
            Intrinsics.g(bytes, "getBytes(...)");
            SecretKeySpec secretKeySpec = new SecretKeySpec(bytes, "AES");
            this.f21877b = Cipher.getInstance("AES");
            this.f21878c = Cipher.getInstance("AES");
            Cipher cipher = this.f21877b;
            if (cipher != null) {
                cipher.init(1, secretKeySpec);
            }
            Cipher cipher2 = this.f21878c;
            if (cipher2 != null) {
                cipher2.init(2, secretKeySpec);
            }
        } catch (Exception e10) {
            b4.b().e(this.f21876a, "e: " + e10);
        }
    }

    public final String e(String str) {
        if (str != null && !StringsKt.q0(str)) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256);
                Charset UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.g(UTF_8, "UTF_8");
                byte[] bytes = str.getBytes(UTF_8);
                Intrinsics.g(bytes, "getBytes(...)");
                byte[] bArrDigest = messageDigest.digest(bytes);
                StringBuilder sb2 = new StringBuilder();
                Intrinsics.e(bArrDigest);
                for (byte b10 : bArrDigest) {
                    String hexString = Integer.toHexString(b10 & 255);
                    if (hexString.length() == 1) {
                        sb2.append('0');
                    }
                    sb2.append(hexString);
                }
                String string = sb2.toString();
                Intrinsics.g(string, "toString(...)");
                return string;
            } catch (NoSuchAlgorithmException e10) {
                b4.b().e("SHA-256 algorithm not found, e: " + e10);
            }
        }
        return "";
    }

    public final String f(String str) {
        byte[] bArrDoFinal;
        if (str != null && !StringsKt.q0(str)) {
            try {
                Cipher cipher = this.f21877b;
                if (cipher != null) {
                    byte[] bytes = str.getBytes(Charsets.UTF_8);
                    Intrinsics.g(bytes, "getBytes(...)");
                    bArrDoFinal = cipher.doFinal(bytes);
                } else {
                    bArrDoFinal = null;
                }
                if (bArrDoFinal == null) {
                    return "";
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    String strEncodeToString = Base64.getEncoder().encodeToString(bArrDoFinal);
                    Intrinsics.e(strEncodeToString);
                    return strEncodeToString;
                }
                String strEncodeToString2 = android.util.Base64.encodeToString(bArrDoFinal, 2);
                Intrinsics.e(strEncodeToString2);
                return strEncodeToString2;
            } catch (Exception e10) {
                b4.b().e(this.f21876a, "encrypt e: " + e10);
            }
        }
        return "";
    }
}
