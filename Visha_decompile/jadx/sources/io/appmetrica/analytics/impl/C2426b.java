package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;

public final class C2426b implements K8 {
    public final AESEncrypter a;

    public C2426b() {
        this(new C2401a(C2910ua.j().f()));
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001e  */
    @Override
    @NonNull
    public final E8 a(@NonNull C2408a6 c2408a6) {
        String strEncodeToString;
        String value = c2408a6.getValue();
        if (TextUtils.isEmpty(value)) {
            strEncodeToString = null;
        } else {
            try {
                byte[] bArrEncrypt = this.a.encrypt(value.getBytes("UTF-8"));
                if (bArrEncrypt != null) {
                    strEncodeToString = Base64.encodeToString(bArrEncrypt, 0);
                } else {
                    strEncodeToString = null;
                }
            } catch (Throwable unused) {
            }
        }
        c2408a6.setValue(strEncodeToString);
        return new E8(c2408a6, M8.AES_VALUE_ENCRYPTION);
    }

    public C2426b(C2401a c2401a) {
        this(new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, c2401a.b(), c2401a.a()));
    }

    public C2426b(AESEncrypter aESEncrypter) {
        this.a = aESEncrypter;
    }

    @Override
    @NonNull
    public final byte[] a(@Nullable byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (bArr == null || bArr.length <= 0) {
            return bArr2;
        }
        try {
            return this.a.decrypt(Base64.decode(bArr, 0));
        } catch (Throwable unused) {
            return bArr2;
        }
    }

    @NonNull
    public final M8 a() {
        return M8.AES_VALUE_ENCRYPTION;
    }
}
