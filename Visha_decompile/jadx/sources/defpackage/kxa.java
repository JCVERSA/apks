package defpackage;

import android.content.Context;
import android.util.Log;
import com.lzy.okgo.model.Progress;
import hyperion.hap.ICryptoManager;
import hyperion.hap.IStoreManager;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

public final class kxa implements IStoreManager, ICryptoManager {
    public final Context a;
    public final jxa b;
    public final Object c;
    public final boolean d;
    public final boolean e;
    public final String f;

    public kxa(Context context, jxa jxaVar, Object obj, boolean z, boolean z2) {
        y45.j(context, "context");
        y45.j(jxaVar, "translator");
        y45.j(obj, "delegate");
        this.a = context;
        this.b = jxaVar;
        this.c = obj;
        this.d = z;
        this.e = z2;
        this.f = "HapInstr";
    }

    public final boolean a() {
        return this.e;
    }

    @Override
    public List aliases() throws Exception {
        try {
            return ((ICryptoManager) this.c).aliases();
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
            return null;
        }
    }

    @Override
    public byte[] decrypt(String str, byte[] bArr) throws Exception {
        try {
            return ((ICryptoManager) this.c).decrypt(str, bArr);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
            return null;
        }
    }

    @Override
    public byte[] encrypt(String str, byte[] bArr) throws Exception {
        try {
            return ((ICryptoManager) this.c).encrypt(str, bArr);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
            return null;
        }
    }

    @Override
    public byte[] exportKey(String str) throws Exception {
        try {
            return ((ICryptoManager) this.c).exportKey(str);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
            return null;
        }
    }

    @Override
    public void generateKey(String str, int i) throws Exception {
        y45.j(str, "alias");
        try {
            ((ICryptoManager) this.c).generateKey(str, i);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
        }
    }

    @Override
    public byte[] getImportKeyAAD(int i) throws Exception {
        try {
            return ((ICryptoManager) this.c).getImportKeyAAD(i);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
            return null;
        }
    }

    @Override
    public List getKeys(int i) throws Exception {
        try {
            return ((IStoreManager) this.c).getKeys(i);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
            return null;
        }
    }

    @Override
    public void importKey(String str, int i, String str2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) throws Exception {
        y45.j(str, "alias");
        y45.j(str2, "decryptKeyAlias");
        y45.j(bArr, "encryptedTmpKey");
        y45.j(bArr2, "encryptedKey");
        y45.j(bArr3, "iv");
        y45.j(bArr4, "aad");
        y45.j(bArr5, Progress.TAG);
        try {
            ((ICryptoManager) this.c).importKey(str, i, str2, bArr, bArr2, bArr3, bArr4, bArr5);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
        }
    }

    @Override
    public byte[] loadByteArray(String str) throws Exception {
        y45.j(str, "name");
        try {
            return ((IStoreManager) this.c).loadByteArray(str);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
            return null;
        }
    }

    @Override
    public void loadFile(String str, String str2) throws Exception {
        y45.j(str, "name");
        y45.j(str2, "toPath");
        try {
            ((IStoreManager) this.c).loadFile(str, str2);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
        }
    }

    @Override
    public String loadString(String str) throws Exception {
        y45.j(str, "name");
        try {
            return ((IStoreManager) this.c).loadString(str);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
            return null;
        }
    }

    @Override
    public String loadStringPersist(String str) throws Exception {
        y45.j(str, "name");
        try {
            return ((IStoreManager) this.c).loadStringPersist(str);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
            return null;
        }
    }

    @Override
    public void remove(String str, int i) throws Exception {
        y45.j(str, "name");
        try {
            ((IStoreManager) this.c).remove(str, i);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
        }
    }

    @Override
    public void removeKey(String str) throws Exception {
        y45.j(str, "alias");
        try {
            ((ICryptoManager) this.c).removeKey(str);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
        }
    }

    @Override
    public void saveByteArray(String str, byte[] bArr) throws Exception {
        y45.j(str, "name");
        y45.j(bArr, ES6Iterator.VALUE_PROPERTY);
        try {
            ((IStoreManager) this.c).saveByteArray(str, bArr);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
        }
    }

    @Override
    public void saveFile(String str, String str2) throws Exception {
        y45.j(str, "name");
        y45.j(str2, "fromPath");
        try {
            ((IStoreManager) this.c).saveFile(str, str2);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
        }
    }

    @Override
    public void saveString(String str, String str2) throws Exception {
        y45.j(str, "name");
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        try {
            ((IStoreManager) this.c).saveString(str, str2);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
        }
    }

    @Override
    public void saveStringPersist(String str, String str2) throws Exception {
        y45.j(str, "name");
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        try {
            ((IStoreManager) this.c).saveStringPersist(str, str2);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
        }
    }

    @Override
    public byte[] sign(String str, byte[] bArr) throws Exception {
        try {
            return ((ICryptoManager) this.c).sign(str, bArr);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
            return null;
        }
    }

    @Override
    public void updateKey(String str, int i) throws Exception {
        y45.j(str, "alias");
        try {
            ((ICryptoManager) this.c).updateKey(str, i);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
        }
    }

    @Override
    public boolean verify(String str, byte[] bArr, byte[] bArr2) throws Exception {
        try {
            return ((ICryptoManager) this.c).verify(str, bArr, bArr2);
        } catch (Exception e) {
            Exception excB = this.b.b(e);
            if (a()) {
                throw excB;
            }
            Log.e(this.f, excB.toString());
            return false;
        }
    }

    public kxa(Context context, jxa jxaVar, Object obj, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, jxaVar, obj, (i & 8) != 0 ? false : z, z2);
    }
}
