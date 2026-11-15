package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.gson.Gson;
import com.transsion.security.api.hap.TranCryptoManagerLite;
import com.transsion.security.api.hap.TranStoreManagerLite;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.Config;
import hyperion.hap.ICryptoManager;
import hyperion.hap.IStoreManager;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.List;
import javax.crypto.KeyGenerator;
import org.apache.commons.lang3.BooleanUtils;

public class ao7 {
    public mk7 a;
    public ul7 b;

    public static class a {
        public static ao7 a = new ao7();
    }

    public mk7 a() {
        byte[] encoded;
        if (this.a == null) {
            byte[] bArr = new byte[16];
            new SecureRandom().nextBytes(bArr);
            try {
                encoded = KeyGenerator.getInstance("AES").generateKey().getEncoded();
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                encoded = null;
            }
            this.a = new mk7(AESEncrypter.DEFAULT_ALGORITHM, encoded, bArr);
        }
        return this.a;
    }

    public void b(Context context) {
        n(context);
        ul7 ul7Var = this.b;
        if (ul7Var != null) {
            ((IStoreManager) TranStoreManagerLite.b.a(((pm7) ul7Var).a.getApplicationContext())).saveString("account", "");
        }
    }

    public void c(Context context, AccountRes accountRes) {
        if (accountRes != null) {
            n(context);
            ul7 ul7Var = this.b;
            if (ul7Var != null) {
                ((IStoreManager) TranStoreManagerLite.b.a(((pm7) ul7Var).a.getApplicationContext())).saveString("account", new Gson().toJson(accountRes));
            }
        }
    }

    public void d(Context context, String str, String str2) {
        n(context);
        Config configF = f();
        if (configF == null) {
            configF = new Config();
        }
        configF.token = str;
        configF.refreshToken = str2;
        ul7 ul7Var = this.b;
        if (ul7Var != null) {
            ((IStoreManager) TranStoreManagerLite.b.a(((pm7) ul7Var).a.getApplicationContext())).saveString("config", new Gson().toJson(configF));
        }
    }

    public void e(Context context, boolean z) {
        n(context);
        ul7 ul7Var = this.b;
        if (ul7Var != null) {
            ((IStoreManager) TranStoreManagerLite.b.a(((pm7) ul7Var).a.getApplicationContext())).saveString("isKeyUploaded", z ? BooleanUtils.TRUE : BooleanUtils.FALSE);
        }
    }

    public Config f() {
        ul7 ul7Var = this.b;
        if (ul7Var == null) {
            return null;
        }
        String strLoadString = ((IStoreManager) TranStoreManagerLite.b.a(((pm7) ul7Var).a.getApplicationContext())).loadString("config");
        if (TextUtils.isEmpty(strLoadString)) {
            return null;
        }
        try {
            return (Config) new Gson().fromJson(strLoadString, Config.class);
        } catch (Exception unused) {
            Log.d("com.palm.id.log", "getConfig error:" + strLoadString);
            return null;
        }
    }

    public String g(Context context) {
        ul7 ul7Var = this.b;
        if (ul7Var == null) {
            return null;
        }
        TranCryptoManagerLite.Companion companion = TranCryptoManagerLite.b;
        byte[] bArrExportKey = ((ICryptoManager) companion.a(context.getApplicationContext())).exportKey("signatureAlias");
        List<String> listAliases = ((ICryptoManager) companion.a(context.getApplicationContext())).aliases();
        if (listAliases == null || !listAliases.contains("signatureAlias")) {
            ((ICryptoManager) companion.a(context.getApplicationContext())).generateKey("signatureAlias", 1061);
            Log.d("com.palm.id.log", "generateSignatureKey");
            bArrExportKey = ((ICryptoManager) companion.a(context.getApplicationContext())).exportKey("signatureAlias");
        }
        return bArrExportKey != null ? Base64.encodeToString(bArrExportKey, 2) : "";
    }

    public String h() {
        ul7 ul7Var = this.b;
        if (ul7Var == null) {
            return null;
        }
        return ((IStoreManager) TranStoreManagerLite.b.a(((pm7) ul7Var).a.getApplicationContext())).loadString("linked_bd");
    }

    public String i(Context context) {
        ul7 ul7Var = this.b;
        if (ul7Var == null) {
            return "";
        }
        TranCryptoManagerLite.Companion companion = TranCryptoManagerLite.b;
        byte[] bArrExportKey = ((ICryptoManager) companion.a(context.getApplicationContext())).exportKey("signatureAlias");
        List<String> listAliases = ((ICryptoManager) companion.a(context.getApplicationContext())).aliases();
        if (listAliases == null || !listAliases.contains("signatureAlias")) {
            ((ICryptoManager) companion.a(context.getApplicationContext())).generateKey("signatureAlias", 1061);
            Log.d("com.palm.id.log", "generateSignatureKey");
            bArrExportKey = ((ICryptoManager) companion.a(context.getApplicationContext())).exportKey("signatureAlias");
        }
        if (bArrExportKey == null) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArrExportKey);
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : bArrDigest) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }

    public AccountRes j(Context context) {
        n(context);
        ul7 ul7Var = this.b;
        if (ul7Var == null) {
            return null;
        }
        String strLoadString = ((IStoreManager) TranStoreManagerLite.b.a(((pm7) ul7Var).a.getApplicationContext())).loadString("account");
        if (TextUtils.isEmpty(strLoadString)) {
            return null;
        }
        try {
            return (AccountRes) new Gson().fromJson(strLoadString, AccountRes.class);
        } catch (Exception unused) {
            Log.d("com.palm.id.log", "getAccountInfo error:" + strLoadString);
            return null;
        }
    }

    public String k(Context context) {
        n(context);
        Config configF = f();
        return configF != null ? configF.refreshToken : "";
    }

    public boolean l(Context context) {
        n(context);
        Config configF = f();
        if (configF != null) {
            if (!configF.isKeyUploaded) {
                if (!BooleanUtils.TRUE.equals(((IStoreManager) TranStoreManagerLite.b.a(((pm7) this.b).a.getApplicationContext())).loadString("isKeyUploaded"))) {
                    return false;
                }
            }
            return true;
        }
        ul7 ul7Var = this.b;
        if (ul7Var == null) {
            return false;
        }
        return BooleanUtils.TRUE.equals(((IStoreManager) TranStoreManagerLite.b.a(((pm7) ul7Var).a.getApplicationContext())).loadString("isKeyUploaded"));
    }

    public String m(Context context) {
        n(context);
        Config configF = f();
        return configF != null ? configF.token : "";
    }

    public void n(Context context) {
        if (context == null || this.b != null) {
            return;
        }
        synchronized (this) {
            try {
                if (this.b == null) {
                    this.b = new pm7(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
