package hyperion.interstore.impl;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/datastore/preferences/core/MutablePreferences;", "preferences", "Lzfb;", "<anonymous>", "(Landroidx/datastore/preferences/core/MutablePreferences;)V"}, k = 3, mv = {1, 6, 0})
@nt1(c = "hyperion.interstore.impl.TranStorePrefs$saveStringInner$2", f = "TranStorePrefs.kt", l = {}, m = "invokeSuspend")
public final class TranStorePrefs$saveStringInner$2 extends SuspendLambda implements s74 {
    public final Preferences.Key<String> $keyPref;
    public final String $value;
    public Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranStorePrefs$saveStringInner$2(Preferences.Key<String> key, String str, wh1<? super TranStorePrefs$saveStringInner$2> wh1Var) {
        super(2, wh1Var);
        this.$keyPref = key;
        this.$value = str;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        TranStorePrefs$saveStringInner$2 tranStorePrefs$saveStringInner$2 = new TranStorePrefs$saveStringInner$2(this.$keyPref, this.$value, wh1Var);
        tranStorePrefs$saveStringInner$2.L$0 = obj;
        return tranStorePrefs$saveStringInner$2;
    }

    @Override
    public final Object invoke(MutablePreferences mutablePreferences, wh1<? super zfb> wh1Var) {
        return ((TranStorePrefs$saveStringInner$2) create(mutablePreferences, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        ((MutablePreferences) this.L$0).set(this.$keyPref, this.$value);
        return zfb.a;
    }
}
