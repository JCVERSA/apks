package hyperion.hap;

import androidx.annotation.RequiresPermission;
import java.util.List;

public interface ICryptoManager {
    @RequiresPermission("hyperion.permission.USE_SECURE_CRYPTO")
    List<String> aliases();

    @RequiresPermission("hyperion.permission.USE_SECURE_CRYPTO")
    byte[] decrypt(String str, byte[] bArr);

    @RequiresPermission("hyperion.permission.USE_SECURE_CRYPTO")
    byte[] encrypt(String str, byte[] bArr);

    @RequiresPermission("hyperion.permission.USE_SECURE_CRYPTO")
    byte[] exportKey(String str);

    @RequiresPermission("hyperion.permission.USE_SECURE_CRYPTO")
    void generateKey(String str, int i);

    @RequiresPermission("hyperion.permission.USE_SECURE_CRYPTO")
    byte[] getImportKeyAAD(int i);

    @RequiresPermission("hyperion.permission.USE_SECURE_CRYPTO")
    void importKey(String str, int i, String str2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5);

    @RequiresPermission("hyperion.permission.USE_SECURE_CRYPTO")
    void removeKey(String str);

    @RequiresPermission("hyperion.permission.USE_SECURE_CRYPTO")
    byte[] sign(String str, byte[] bArr);

    @RequiresPermission("hyperion.permission.USE_SECURE_CRYPTO")
    void updateKey(String str, int i);

    @RequiresPermission("hyperion.permission.USE_SECURE_CRYPTO")
    boolean verify(String str, byte[] bArr, byte[] bArr2);
}
