package hyperion.hap;

import androidx.annotation.RequiresPermission;
import java.util.List;

public interface IStoreManager {
    @RequiresPermission(anyOf = {"hyperion.permission.USE_SECURE_STORAGE", "hyperion.permission.USE_PERSIST_STORAGE"})
    List<String> getKeys(int i);

    @RequiresPermission("hyperion.permission.USE_PERSIST_STORAGE")
    default List<String> getPersistKeys() {
        return getKeys(2);
    }

    @RequiresPermission("hyperion.permission.USE_SECURE_STORAGE")
    default List<String> getSecureKeys() {
        return getKeys(1);
    }

    @RequiresPermission("hyperion.permission.USE_SECURE_STORAGE")
    byte[] loadByteArray(String str);

    @RequiresPermission("hyperion.permission.USE_SECURE_STORAGE")
    void loadFile(String str, String str2);

    @RequiresPermission("hyperion.permission.USE_SECURE_STORAGE")
    String loadString(String str);

    @RequiresPermission("hyperion.permission.USE_PERSIST_STORAGE")
    String loadStringPersist(String str);

    @RequiresPermission(anyOf = {"hyperion.permission.USE_SECURE_STORAGE", "hyperion.permission.USE_PERSIST_STORAGE"})
    void remove(String str, int i);

    @RequiresPermission("hyperion.permission.USE_PERSIST_STORAGE")
    default void removePersistKey(String str) {
        remove(str, 2);
    }

    @RequiresPermission("hyperion.permission.USE_SECURE_STORAGE")
    default void removeSecureKey(String str) {
        remove(str, 1);
    }

    @RequiresPermission("hyperion.permission.USE_SECURE_STORAGE")
    void saveByteArray(String str, byte[] bArr);

    @RequiresPermission("hyperion.permission.USE_SECURE_STORAGE")
    void saveFile(String str, String str2);

    @RequiresPermission("hyperion.permission.USE_SECURE_STORAGE")
    void saveString(String str, String str2);

    @RequiresPermission("hyperion.permission.USE_PERSIST_STORAGE")
    void saveStringPersist(String str, String str2);
}
