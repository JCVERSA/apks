package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005J4\u0010\n\u001a\u00020\u00022\"\u0010\t\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006H\u0096@¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\fR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\r8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Landroidx/datastore/preferences/core/PreferenceDataStore;", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "delegate", MethodDecl.initName, "(Landroidx/datastore/core/DataStore;)V", "Lkotlin/Function2;", "Lwh1;", "", "transform", "updateData", "(Ls74;Lwh1;)Ljava/lang/Object;", "Landroidx/datastore/core/DataStore;", "Lnz3;", "getData", "()Lnz3;", "data", "datastore-preferences-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PreferenceDataStore implements DataStore<Preferences> {
    private final DataStore<Preferences> delegate;

    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/preferences/core/Preferences;", "it"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.preferences.core.PreferenceDataStore$updateData$2", f = "PreferenceDataStoreFactory.kt", l = {94}, m = "invokeSuspend")
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
            if (i == 0) {
                c.b(obj);
                Preferences preferences = (Preferences) this.L$0;
                s74 s74Var = this.$transform;
                this.label = 1;
                obj = s74Var.invoke(preferences, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            Preferences preferences2 = (Preferences) obj;
            y45.h(preferences2, "null cannot be cast to non-null type androidx.datastore.preferences.core.MutablePreferences");
            ((MutablePreferences) preferences2).freeze$datastore_preferences_core_release();
            return preferences2;
        }
    }

    public PreferenceDataStore(DataStore<Preferences> dataStore) {
        y45.j(dataStore, "delegate");
        this.delegate = dataStore;
    }

    @Override
    public nz3 getData() {
        return this.delegate.getData();
    }

    @Override
    public Object updateData(s74 s74Var, wh1<? super Preferences> wh1Var) {
        return this.delegate.updateData(new AnonymousClass2(s74Var, null), wh1Var);
    }
}
