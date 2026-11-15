package com.google.firebase.datastorage;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import defpackage.e74;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Landroidx/datastore/preferences/core/Preferences;", "<anonymous>", "(Lnk1;)Landroidx/datastore/preferences/core/Preferences;"}, k = 3, mv = {2, 0, 0})
@nt1(c = "com.google.firebase.datastorage.JavaDataStorage$editSync$1", f = "JavaDataStorage.kt", l = {TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT}, m = "invokeSuspend")
public final class JavaDataStorage$editSync$1 extends SuspendLambda implements s74 {
    final e74 $transform;
    int label;
    final JavaDataStorage this$0;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/datastore/preferences/core/MutablePreferences;", "it", "Lzfb;", "<anonymous>", "(Landroidx/datastore/preferences/core/MutablePreferences;)V"}, k = 3, mv = {2, 0, 0})
    @nt1(c = "com.google.firebase.datastorage.JavaDataStorage$editSync$1$1", f = "JavaDataStorage.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final e74 $transform;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(e74 e74Var, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$transform = e74Var;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, wh1Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(MutablePreferences mutablePreferences, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(mutablePreferences, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            this.$transform.invoke((MutablePreferences) this.L$0);
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaDataStorage$editSync$1(JavaDataStorage javaDataStorage, e74 e74Var, wh1<? super JavaDataStorage$editSync$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = javaDataStorage;
        this.$transform = e74Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new JavaDataStorage$editSync$1(this.this$0, this.$transform, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super Preferences> wh1Var) {
        return ((JavaDataStorage$editSync$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        try {
            if (i == 0) {
                c.b(obj);
                if (y45.e(this.this$0.c.get(), mk0.a(true))) {
                    throw new IllegalStateException("Don't call JavaDataStorage.edit() from within an existing edit() callback.\nThis causes deadlocks, and is generally indicative of a code smell.\nInstead, either pass around the initial `MutablePreferences` instance, or don't do everything in a single callback. ");
                }
                this.this$0.c.set(mk0.a(true));
                DataStore dataStore = this.this$0.e;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, null);
                this.label = 1;
                obj = PreferencesKt.edit(dataStore, anonymousClass1, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            Preferences preferences = (Preferences) obj;
            this.this$0.c.set(mk0.a(false));
            return preferences;
        } catch (Throwable th) {
            this.this$0.c.set(mk0.a(false));
            throw th;
        }
    }
}
