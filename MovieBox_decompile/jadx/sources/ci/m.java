package ci;

import com.transsion.api.gateway.utils.EncoderUtil;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

public final class m {

    public static final m f16944a = new m();

    private m() {
    }

    public static final CharSequence c(byte b10) {
        return StringsKt.A0(String.valueOf(b10 & 255), 3, '0');
    }

    public final String b(String str) throws NoSuchAlgorithmException {
        String str2 = new SimpleDateFormat("yyyyMMdd", Locale.getDefault()).format(new Date());
        MessageDigest messageDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256);
        byte[] bytes = (str2 + str).getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "getBytes(...)");
        byte[] bArrDigest = messageDigest.digest(bytes);
        Intrinsics.e(bArrDigest);
        return StringsKt.z1(ArraysKt.l0(bArrDigest, "", null, null, 0, null, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return m.c(((Byte) obj).byteValue());
            }
        }, 30, null), 8);
    }

    public final boolean d(String inputPwd, String str) {
        Intrinsics.h(inputPwd, "inputPwd");
        return Intrinsics.c(inputPwd, b(str));
    }
}
