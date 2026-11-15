package io.appmetrica.analytics.impl;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.internal.CounterConfiguration;
import org.json.JSONObject;

public class C2992xh extends C2431b4 {
    protected I8 c;
    protected C2641jf d;
    public boolean e;
    public String f;

    public C2992xh(@NonNull C2791pf c2791pf, @NonNull CounterConfiguration counterConfiguration) {
        this(c2791pf, counterConfiguration, null);
    }

    public final void a(Tk tk) {
        this.c = new I8(tk);
    }

    public final Bundle c() {
        Bundle bundle = new Bundle();
        this.b.toBundle(bundle);
        C2791pf c2791pf = this.a;
        synchronized (c2791pf) {
            bundle.putParcelable("PROCESS_CFG_OBJ", c2791pf);
        }
        return bundle;
    }

    @Nullable
    public final String d() {
        I8 i8 = this.c;
        if (i8.a.isEmpty()) {
            return null;
        }
        return new JSONObject(i8.a).toString();
    }

    @Nullable
    public final synchronized String e() {
        return this.f;
    }

    public boolean f() {
        return this.e;
    }

    public C2992xh(@NonNull C2791pf c2791pf, @NonNull CounterConfiguration counterConfiguration, @Nullable String str) {
        super(c2791pf, counterConfiguration);
        this.e = true;
        this.f = str;
    }
}
