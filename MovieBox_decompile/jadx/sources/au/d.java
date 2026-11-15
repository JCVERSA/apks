package au;

import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

public abstract class d {
    public static final String b(String str) {
        Object objM453constructorimpl;
        Intrinsics.h(str, "<this>");
        try {
            Result.Companion companion = Result.INSTANCE;
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.g(bytes, "getBytes(...)");
            byte[] bArrDigest = messageDigest.digest(bytes);
            Intrinsics.e(bArrDigest);
            objM453constructorimpl = Result.m453constructorimpl(ArraysKt.l0(bArrDigest, "", null, null, 0, null, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return d.c(((Byte) obj).byteValue());
                }
            }, 30, null));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Object obj = str;
        if (!Result.m459isFailureimpl(objM453constructorimpl)) {
            obj = objM453constructorimpl;
        }
        return (String) obj;
    }

    public static final CharSequence c(byte b10) {
        String str = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
        Intrinsics.g(str, "format(...)");
        return str;
    }
}
