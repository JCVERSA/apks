package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.random.Random;
import kotlin.sequences.SequencesKt;

public abstract class ActivityResultRegistry {

    private static final b f586h = new b(null);

    private final Map f587a = new LinkedHashMap();

    private final Map f588b = new LinkedHashMap();

    private final Map f589c = new LinkedHashMap();

    private final List f590d = new ArrayList();

    private final transient Map f591e = new LinkedHashMap();

    private final Map f592f = new LinkedHashMap();

    private final Bundle f593g = new Bundle();

    private static final class a {

        private final androidx.activity.result.a f594a;

        private final f.a f595b;

        public a(androidx.activity.result.a callback, f.a contract) {
            Intrinsics.h(callback, "callback");
            Intrinsics.h(contract, "contract");
            this.f594a = callback;
            this.f595b = contract;
        }

        public final androidx.activity.result.a a() {
            return this.f594a;
        }

        public final f.a b() {
            return this.f595b;
        }
    }

    private static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    private static final class c {

        private final Lifecycle f596a;

        private final List f597b;

        public c(Lifecycle lifecycle) {
            Intrinsics.h(lifecycle, "lifecycle");
            this.f596a = lifecycle;
            this.f597b = new ArrayList();
        }

        public final void a(r observer) {
            Intrinsics.h(observer, "observer");
            this.f596a.a(observer);
            this.f597b.add(observer);
        }

        public final void b() {
            Iterator it = this.f597b.iterator();
            while (it.hasNext()) {
                this.f596a.d((r) it.next());
            }
            this.f597b.clear();
        }
    }

    public static final class d extends androidx.activity.result.b {

        final String f599b;

        final f.a f600c;

        d(String str, f.a aVar) {
            this.f599b = str;
            this.f600c = aVar;
        }

        @Override
        public void b(Object obj, androidx.core.app.c cVar) throws Exception {
            Object obj2 = ActivityResultRegistry.this.f588b.get(this.f599b);
            f.a aVar = this.f600c;
            if (obj2 != null) {
                int iIntValue = ((Number) obj2).intValue();
                ActivityResultRegistry.this.f590d.add(this.f599b);
                try {
                    ActivityResultRegistry.this.i(iIntValue, this.f600c, obj, cVar);
                    return;
                } catch (Exception e10) {
                    ActivityResultRegistry.this.f590d.remove(this.f599b);
                    throw e10;
                }
            }
            throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + aVar + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
        }

        @Override
        public void c() {
            ActivityResultRegistry.this.p(this.f599b);
        }
    }

    public static final class e extends androidx.activity.result.b {

        final String f602b;

        final f.a f603c;

        e(String str, f.a aVar) {
            this.f602b = str;
            this.f603c = aVar;
        }

        @Override
        public void b(Object obj, androidx.core.app.c cVar) throws Exception {
            Object obj2 = ActivityResultRegistry.this.f588b.get(this.f602b);
            f.a aVar = this.f603c;
            if (obj2 != null) {
                int iIntValue = ((Number) obj2).intValue();
                ActivityResultRegistry.this.f590d.add(this.f602b);
                try {
                    ActivityResultRegistry.this.i(iIntValue, this.f603c, obj, cVar);
                    return;
                } catch (Exception e10) {
                    ActivityResultRegistry.this.f590d.remove(this.f602b);
                    throw e10;
                }
            }
            throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + aVar + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
        }

        @Override
        public void c() {
            ActivityResultRegistry.this.p(this.f602b);
        }
    }

    private final void d(int i10, String str) {
        this.f587a.put(Integer.valueOf(i10), str);
        this.f588b.put(str, Integer.valueOf(i10));
    }

    private final void g(String str, int i10, Intent intent, a aVar) {
        if ((aVar != null ? aVar.a() : null) == null || !this.f590d.contains(str)) {
            this.f592f.remove(str);
            this.f593g.putParcelable(str, new ActivityResult(i10, intent));
        } else {
            aVar.a().a(aVar.b().c(i10, intent));
            this.f590d.remove(str);
        }
    }

    private final int h() {
        for (Number number : SequencesKt.i(new Function0<Integer>() {
            @Override
            public final Integer invoke() {
                return Integer.valueOf(Random.INSTANCE.nextInt(2147418112) + 65536);
            }
        })) {
            if (!this.f587a.containsKey(Integer.valueOf(number.intValue()))) {
                return number.intValue();
            }
        }
        throw new NoSuchElementException("Sequence contains no element matching the predicate.");
    }

    public static final void n(ActivityResultRegistry activityResultRegistry, String str, androidx.activity.result.a aVar, f.a aVar2, u uVar, Lifecycle.Event event) {
        Intrinsics.h(uVar, "<anonymous parameter 0>");
        Intrinsics.h(event, "event");
        if (Lifecycle.Event.ON_START != event) {
            if (Lifecycle.Event.ON_STOP == event) {
                activityResultRegistry.f591e.remove(str);
                return;
            } else {
                if (Lifecycle.Event.ON_DESTROY == event) {
                    activityResultRegistry.p(str);
                    return;
                }
                return;
            }
        }
        activityResultRegistry.f591e.put(str, new a(aVar, aVar2));
        if (activityResultRegistry.f592f.containsKey(str)) {
            Object obj = activityResultRegistry.f592f.get(str);
            activityResultRegistry.f592f.remove(str);
            aVar.a(obj);
        }
        ActivityResult activityResult = (ActivityResult) androidx.core.os.c.a(activityResultRegistry.f593g, str, ActivityResult.class);
        if (activityResult != null) {
            activityResultRegistry.f593g.remove(str);
            aVar.a(aVar2.c(activityResult.getResultCode(), activityResult.getData()));
        }
    }

    private final void o(String str) {
        if (((Integer) this.f588b.get(str)) != null) {
            return;
        }
        d(h(), str);
    }

    public final boolean e(int i10, int i11, Intent intent) {
        String str = (String) this.f587a.get(Integer.valueOf(i10));
        if (str == null) {
            return false;
        }
        g(str, i11, intent, (a) this.f591e.get(str));
        return true;
    }

    public final boolean f(int i10, Object obj) {
        String str = (String) this.f587a.get(Integer.valueOf(i10));
        if (str == null) {
            return false;
        }
        a aVar = (a) this.f591e.get(str);
        if ((aVar != null ? aVar.a() : null) == null) {
            this.f593g.remove(str);
            this.f592f.put(str, obj);
            return true;
        }
        androidx.activity.result.a aVarA = aVar.a();
        Intrinsics.f(aVarA, "null cannot be cast to non-null type androidx.activity.result.ActivityResultCallback<O of androidx.activity.result.ActivityResultRegistry.dispatchResult>");
        if (!this.f590d.remove(str)) {
            return true;
        }
        aVarA.a(obj);
        return true;
    }

    public abstract void i(int i10, f.a aVar, Object obj, androidx.core.app.c cVar);

    public final void j(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
        if (stringArrayList2 != null) {
            this.f590d.addAll(stringArrayList2);
        }
        Bundle bundle2 = bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
        if (bundle2 != null) {
            this.f593g.putAll(bundle2);
        }
        int size = stringArrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            String str = stringArrayList.get(i10);
            if (this.f588b.containsKey(str)) {
                Integer num = (Integer) this.f588b.remove(str);
                if (!this.f593g.containsKey(str)) {
                    TypeIntrinsics.d(this.f587a).remove(num);
                }
            }
            Integer num2 = integerArrayList.get(i10);
            Intrinsics.g(num2, "rcs[i]");
            int iIntValue = num2.intValue();
            String str2 = stringArrayList.get(i10);
            Intrinsics.g(str2, "keys[i]");
            d(iIntValue, str2);
        }
    }

    public final void k(Bundle outState) {
        Intrinsics.h(outState, "outState");
        outState.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(this.f588b.values()));
        outState.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(this.f588b.keySet()));
        outState.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(this.f590d));
        outState.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", new Bundle(this.f593g));
    }

    public final androidx.activity.result.b l(final String key, u lifecycleOwner, final f.a contract, final androidx.activity.result.a callback) {
        Intrinsics.h(key, "key");
        Intrinsics.h(lifecycleOwner, "lifecycleOwner");
        Intrinsics.h(contract, "contract");
        Intrinsics.h(callback, "callback");
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.b().isAtLeast(Lifecycle.State.STARTED)) {
            throw new IllegalStateException(("LifecycleOwner " + lifecycleOwner + " is attempting to register while current state is " + lifecycle.b() + ". LifecycleOwners must call register before they are STARTED.").toString());
        }
        o(key);
        c cVar = (c) this.f589c.get(key);
        if (cVar == null) {
            cVar = new c(lifecycle);
        }
        cVar.a(new r() {
            @Override
            public final void onStateChanged(u uVar, Lifecycle.Event event) {
                ActivityResultRegistry.n(this.f608a, key, callback, contract, uVar, event);
            }
        });
        this.f589c.put(key, cVar);
        return new d(key, contract);
    }

    public final androidx.activity.result.b m(String key, f.a contract, androidx.activity.result.a callback) {
        Intrinsics.h(key, "key");
        Intrinsics.h(contract, "contract");
        Intrinsics.h(callback, "callback");
        o(key);
        this.f591e.put(key, new a(callback, contract));
        if (this.f592f.containsKey(key)) {
            Object obj = this.f592f.get(key);
            this.f592f.remove(key);
            callback.a(obj);
        }
        ActivityResult activityResult = (ActivityResult) androidx.core.os.c.a(this.f593g, key, ActivityResult.class);
        if (activityResult != null) {
            this.f593g.remove(key);
            callback.a(contract.c(activityResult.getResultCode(), activityResult.getData()));
        }
        return new e(key, contract);
    }

    public final void p(String key) {
        Integer num;
        Intrinsics.h(key, "key");
        if (!this.f590d.contains(key) && (num = (Integer) this.f588b.remove(key)) != null) {
            this.f587a.remove(num);
        }
        this.f591e.remove(key);
        if (this.f592f.containsKey(key)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + key + ": " + this.f592f.get(key));
            this.f592f.remove(key);
        }
        if (this.f593g.containsKey(key)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + key + ": " + ((ActivityResult) androidx.core.os.c.a(this.f593g, key, ActivityResult.class)));
            this.f593g.remove(key);
        }
        c cVar = (c) this.f589c.get(key);
        if (cVar != null) {
            cVar.b();
            this.f589c.remove(key);
        }
    }
}
