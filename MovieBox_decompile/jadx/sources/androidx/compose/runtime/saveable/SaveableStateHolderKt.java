package androidx.compose.runtime.saveable;

import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import kotlin.jvm.functions.Function0;

public abstract class SaveableStateHolderKt {
    public static final a a(i iVar, int i10) {
        if (k.H()) {
            k.Q(15454635, i10, -1, "androidx.compose.runtime.saveable.rememberSaveableStateHolder (SaveableStateHolder.kt:60)");
        }
        iVar.P(-796080049);
        SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) RememberSaveableKt.c(new Object[0], SaveableStateHolderImpl.f3585d.a(), null, new Function0<SaveableStateHolderImpl>() {
            @Override
            public final SaveableStateHolderImpl invoke() {
                return new SaveableStateHolderImpl(null, 1, null);
            }
        }, iVar, 3072, 4);
        saveableStateHolderImpl.i((b) iVar.l(SaveableStateRegistryKt.d()));
        iVar.K();
        if (k.H()) {
            k.P();
        }
        return saveableStateHolderImpl;
    }
}
