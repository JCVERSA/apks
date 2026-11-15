package androidx.datastore.migrations;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.datastore.core.DataMigration;
import defpackage.c74;
import defpackage.i81;
import defpackage.mk0;
import defpackage.nt1;
import defpackage.s74;
import defpackage.u74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.yi5;
import defpackage.z45;
import defpackage.zfb;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010#\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u00013B\u0089\u0001\b\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012$\b\u0002\u0010\r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\t\u0012(\u0010\u0010\u001a$\b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000e\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0014\u0010\u0015Bw\b\u0017\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012$\b\u0002\u0010\r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\t\u0012(\u0010\u0010\u001a$\b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000e¢\u0006\u0004\b\u0014\u0010\u0016By\b\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0017\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012$\b\u0002\u0010\r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\t\u0012(\u0010\u0010\u001a$\b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000e¢\u0006\u0004\b\u0014\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001cH\u0002¢\u0006\u0004\b \u0010!J\u0018\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b#\u0010$J\u0018\u0010\u0010\u001a\u00028\u00002\u0006\u0010\"\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u0010\u0010$J\u0010\u0010%\u001a\u00020\u0019H\u0096@¢\u0006\u0004\b%\u0010&R0\u0010\r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010'R6\u0010\u0010\u001a$\b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010(R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010)R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010*R\u001b\u0010/\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u001c\u00101\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u0001008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102¨\u00064"}, d2 = {"Landroidx/datastore/migrations/SharedPreferencesMigration;", "T", "Landroidx/datastore/core/DataMigration;", "Lkotlin/Function0;", "Landroid/content/SharedPreferences;", "produceSharedPreferences", "", "", "keysToMigrate", "Lkotlin/Function2;", "Lwh1;", "", "", "shouldRunMigration", "Lkotlin/Function3;", "Landroidx/datastore/migrations/SharedPreferencesView;", "migrate", "Landroid/content/Context;", "context", "name", MethodDecl.initName, "(Lc74;Ljava/util/Set;Ls74;Lu74;Landroid/content/Context;Ljava/lang/String;)V", "(Lc74;Ljava/util/Set;Ls74;Lu74;)V", "sharedPreferencesName", "(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Ls74;Lu74;)V", "Lzfb;", "deleteSharedPreferences", "(Landroid/content/Context;Ljava/lang/String;)V", "Ljava/io/File;", "getSharedPrefsFile", "(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;", "prefsFile", "getSharedPrefsBackup", "(Ljava/io/File;)Ljava/io/File;", "currentData", "shouldMigrate", "(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;", "cleanUp", "(Lwh1;)Ljava/lang/Object;", "Ls74;", "Lu74;", "Landroid/content/Context;", "Ljava/lang/String;", "sharedPrefs$delegate", "Lyi5;", "getSharedPrefs", "()Landroid/content/SharedPreferences;", "sharedPrefs", "", "keySet", "Ljava/util/Set;", "Api24Impl", "datastore_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SharedPreferencesMigration<T> implements DataMigration<T> {
    private final Context context;
    private final Set<String> keySet;
    private final u74 migrate;
    private final String name;

    private final yi5 sharedPrefs;
    private final s74 shouldRunMigration;

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@"}, d2 = {"<anonymous>", "", "T", "it"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.migrations.SharedPreferencesMigration$1", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        int label;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(wh1Var);
        }

        @Override
        public final Object invoke(T t, wh1<? super Boolean> wh1Var) {
            return ((AnonymousClass1) create(t, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            return mk0.a(true);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@"}, d2 = {"<anonymous>", "", "T", "it"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.migrations.SharedPreferencesMigration$2", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        int label;

        public AnonymousClass2(wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass2(wh1Var);
        }

        @Override
        public final Object invoke(T t, wh1<? super Boolean> wh1Var) {
            return ((AnonymousClass2) create(t, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            return mk0.a(true);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@"}, d2 = {"<anonymous>", "", "T", "it"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.migrations.SharedPreferencesMigration$3", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements s74 {
        int label;

        public AnonymousClass3(wh1<? super AnonymousClass3> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass3(wh1Var);
        }

        @Override
        public final Object invoke(T t, wh1<? super Boolean> wh1Var) {
            return ((AnonymousClass3) create(t, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            return mk0.a(true);
        }
    }

    @RequiresApi(24)
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Landroidx/datastore/migrations/SharedPreferencesMigration$Api24Impl;", "", "()V", "deleteSharedPreferences", "", "context", "Landroid/content/Context;", "name", "", "datastore_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Api24Impl {
        public static final Api24Impl INSTANCE = new Api24Impl();

        private Api24Impl() {
        }

        @DoNotInline
        public static final boolean deleteSharedPreferences(Context context, String name) {
            y45.j(context, "context");
            y45.j(name, "name");
            return context.deleteSharedPreferences(name);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.migrations.SharedPreferencesMigration", f = "SharedPreferencesMigration.android.kt", l = {151}, m = "shouldMigrate")
    public static final class C04971 extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;
        final SharedPreferencesMigration<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04971(SharedPreferencesMigration<T> sharedPreferencesMigration, wh1<? super C04971> wh1Var) {
            super(wh1Var);
            this.this$0 = sharedPreferencesMigration;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.shouldMigrate(null, this);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(c74 c74Var, u74 u74Var) {
        this(c74Var, (Set) null, (s74) null, u74Var, 6, (DefaultConstructorMarker) null);
        y45.j(c74Var, "produceSharedPreferences");
        y45.j(u74Var, "migrate");
    }

    private final void deleteSharedPreferences(Context context, String name) {
        Api24Impl.deleteSharedPreferences(context, name);
    }

    private final SharedPreferences getSharedPrefs() {
        return (SharedPreferences) this.sharedPrefs.getValue();
    }

    private final File getSharedPrefsBackup(File prefsFile) {
        return new File(prefsFile.getPath() + ".bak");
    }

    private final File getSharedPrefsFile(Context context, String name) {
        return new File(new File(context.getApplicationInfo().dataDir, "shared_prefs"), name + ".xml");
    }

    @Override
    public Object cleanUp(wh1<? super zfb> wh1Var) throws IOException {
        Context context;
        String str;
        SharedPreferences.Editor editorEdit = getSharedPrefs().edit();
        Set<String> set = this.keySet;
        if (set == null) {
            editorEdit.clear();
        } else {
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                editorEdit.remove((String) it.next());
            }
        }
        if (!editorEdit.commit()) {
            throw new IOException("Unable to delete migrated keys from SharedPreferences.");
        }
        if (getSharedPrefs().getAll().isEmpty() && (context = this.context) != null && (str = this.name) != null) {
            deleteSharedPreferences(context, str);
        }
        Set<String> set2 = this.keySet;
        if (set2 != null) {
            set2.clear();
        }
        return zfb.a;
    }

    @Override
    public Object migrate(T t, wh1<? super T> wh1Var) {
        return this.migrate.invoke(new SharedPreferencesView(getSharedPrefs(), this.keySet), t, wh1Var);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object shouldMigrate(T t, wh1<? super Boolean> wh1Var) {
        C04971 c04971;
        if (wh1Var instanceof C04971) {
            c04971 = (C04971) wh1Var;
            int i = c04971.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04971.label = i - Integer.MIN_VALUE;
            } else {
                c04971 = new C04971(this, wh1Var);
            }
        } else {
            c04971 = new C04971(this, wh1Var);
        }
        Object objInvoke = c04971.result;
        Object objF = z45.f();
        int i2 = c04971.label;
        boolean z = true;
        if (i2 == 0) {
            c.b(objInvoke);
            s74 s74Var = this.shouldRunMigration;
            c04971.L$0 = this;
            c04971.label = 1;
            objInvoke = s74Var.invoke(t, c04971);
            if (objInvoke == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this = (SharedPreferencesMigration) c04971.L$0;
            c.b(objInvoke);
        }
        if (!((Boolean) objInvoke).booleanValue()) {
            return mk0.a(false);
        }
        Set<String> set = this.keySet;
        if (set == null) {
            Map<String, ?> all = this.getSharedPrefs().getAll();
            y45.i(all, "sharedPrefs.all");
            if (all.isEmpty()) {
                z = false;
            }
        } else {
            Set<String> set2 = set;
            SharedPreferences sharedPrefs = this.getSharedPrefs();
            if ((set2 instanceof Collection) && set2.isEmpty()) {
                z = false;
            } else {
                Iterator<T> it = set2.iterator();
                while (it.hasNext()) {
                    if (sharedPrefs.contains((String) it.next())) {
                    }
                }
                z = false;
            }
        }
        return mk0.a(z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(c74 c74Var, Set<String> set, u74 u74Var) {
        this(c74Var, set, (s74) null, u74Var, 4, (DefaultConstructorMarker) null);
        y45.j(c74Var, "produceSharedPreferences");
        y45.j(set, "keysToMigrate");
        y45.j(u74Var, "migrate");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(Context context, String str, u74 u74Var) {
        this(context, str, null, null, u74Var, 12, null);
        y45.j(context, "context");
        y45.j(str, "sharedPreferencesName");
        y45.j(u74Var, "migrate");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(Context context, String str, Set<String> set, u74 u74Var) {
        this(context, str, set, null, u74Var, 8, null);
        y45.j(context, "context");
        y45.j(str, "sharedPreferencesName");
        y45.j(set, "keysToMigrate");
        y45.j(u74Var, "migrate");
    }

    private SharedPreferencesMigration(c74 c74Var, Set<String> set, s74 s74Var, u74 u74Var, Context context, String str) {
        this.shouldRunMigration = s74Var;
        this.migrate = u74Var;
        this.context = context;
        this.name = str;
        this.sharedPrefs = b.a(c74Var);
        this.keySet = set == SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() ? null : i81.f1(set);
    }

    public SharedPreferencesMigration(c74 c74Var, Set set, s74 s74Var, u74 u74Var, Context context, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c74Var, (Set<String>) set, (i & 4) != 0 ? new AnonymousClass1(null) : s74Var, u74Var, context, str);
    }

    public SharedPreferencesMigration(c74 c74Var, Set set, s74 s74Var, u74 u74Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c74Var, (Set<String>) ((i & 2) != 0 ? SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() : set), (i & 4) != 0 ? new AnonymousClass2(null) : s74Var, u74Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(c74 c74Var, Set<String> set, s74 s74Var, u74 u74Var) {
        this(c74Var, set, s74Var, u74Var, (Context) null, (String) null);
        y45.j(c74Var, "produceSharedPreferences");
        y45.j(set, "keysToMigrate");
        y45.j(s74Var, "shouldRunMigration");
        y45.j(u74Var, "migrate");
    }

    public SharedPreferencesMigration(Context context, String str, Set set, s74 s74Var, u74 u74Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i & 4) != 0 ? SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() : set, (i & 8) != 0 ? new AnonymousClass3(null) : s74Var, u74Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(final Context context, final String str, Set<String> set, s74 s74Var, u74 u74Var) {
        this(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final SharedPreferences invoke() {
                SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
                y45.i(sharedPreferences, "context.getSharedPrefere…me, Context.MODE_PRIVATE)");
                return sharedPreferences;
            }
        }, set, s74Var, u74Var, context, str);
        y45.j(context, "context");
        y45.j(str, "sharedPreferencesName");
        y45.j(set, "keysToMigrate");
        y45.j(s74Var, "shouldRunMigration");
        y45.j(u74Var, "migrate");
    }
}
