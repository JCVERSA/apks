package defpackage;

import android.util.Base64;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

public final class vnh {
    public vnh() {
        try {
            z9i.a();
        } catch (GeneralSecurityException e) {
            zze.zza("Failed to Configure Aead. ".concat(e.toString()));
            zzv.zzp().x(e, "CryptoUtils.registerAead");
        }
    }

    public static final String a() {
        byte[] byteArray;
        try {
            l9i l9iVarB = l9i.b(e9i.a(mii.b().a("AES128_GCM")));
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                v8i.b(l9iVarB, u8i.b(byteArrayOutputStream));
                byteArray = byteArrayOutputStream.toByteArray();
            } catch (IOException unused) {
                throw new GeneralSecurityException("Serialize keyset failed");
            }
        } catch (GeneralSecurityException e) {
            zze.zza("Failed to generate key".concat(e.toString()));
            zzv.zzp().x(e, "CryptoUtils.generateKey");
            byteArray = new byte[0];
        }
        return Base64.encodeToString(byteArray, 11);
    }

    public static final String b(byte[] bArr, byte[] bArr2, String str, lmg lmgVar) {
        l9i l9iVarC;
        if (str != null && (l9iVarC = c(str)) != null) {
            try {
                byte[] bArrA = ((q8i) l9iVarC.e(hai.a(), q8i.class)).a(bArr, bArr2);
                lmgVar.b().put("ds", "1");
                return new String(bArrA, "UTF-8");
            } catch (UnsupportedEncodingException | UnsupportedOperationException | GeneralSecurityException e) {
                zze.zza("Failed to decrypt ".concat(e.toString()));
                zzv.zzp().x(e, "CryptoUtils.decrypt");
                lmgVar.b().put("dsf", e.toString());
            }
        }
        return null;
    }

    public static final l9i c(String str) {
        try {
            try {
                return v8i.a(r8i.b(Base64.decode(str, 11)));
            } catch (IOException unused) {
                throw new GeneralSecurityException("Parse keyset failed");
            }
        } catch (GeneralSecurityException e) {
            zze.zza("Failed to get keysethandle".concat(e.toString()));
            zzv.zzp().x(e, "CryptoUtils.getHandle");
            return null;
        }
    }
}
