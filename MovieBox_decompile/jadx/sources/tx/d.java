package tx;

import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

public final class d {

    public static final d f72879a = new d();

    private d() {
    }

    public final String a(File file) {
        Intrinsics.h(file, "file");
        if (!file.exists() || !file.isFile()) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[8192];
            while (true) {
                int i10 = fileInputStream.read(bArr);
                if (i10 == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, i10);
            }
            fileInputStream.close();
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
                String str = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
                Intrinsics.g(str, "format(...)");
                sb2.append(str);
            }
            return sb2.toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public final boolean b(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        return StringsKt.H(str, str2, true);
    }
}
