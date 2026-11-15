package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u001a>\u0010\b\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u00002\"\u0010\u0007\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0002H\u0086@¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "Lkotlin/Function2;", "Landroidx/datastore/preferences/core/MutablePreferences;", "Lwh1;", "Lzfb;", "", "transform", "edit", "(Landroidx/datastore/core/DataStore;Ls74;Lwh1;)Ljava/lang/Object;", "datastore-preferences-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class PreferencesKt {

    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/preferences/core/Preferences;", "it"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.preferences.core.PreferencesKt$edit$2", f = "Preferences.kt", l = {TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_7}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final s74 $transform;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(s74 s74Var, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.$transform = s74Var;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$transform, wh1Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override
        public final Object invoke(Preferences preferences, wh1<? super Preferences> wh1Var) {
            return ((AnonymousClass2) create(preferences, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
                c.b(obj);
                return mutablePreferences;
            }
            c.b(obj);
            MutablePreferences mutablePreferences2 = ((Preferences) this.L$0).toMutablePreferences();
            s74 s74Var = this.$transform;
            this.L$0 = mutablePreferences2;
            this.label = 1;
            return s74Var.invoke(mutablePreferences2, this) == objF ? objF : mutablePreferences2;
        }
    }

    public static final Object edit(DataStore<Preferences> dataStore, s74 s74Var, wh1<? super Preferences> wh1Var) {
        return dataStore.updateData(new AnonymousClass2(s74Var, null), wh1Var);
    }
}
