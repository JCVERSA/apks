package defpackage;

import android.os.StrictMode;

public abstract class z4g {
    public static StrictMode.VmPolicy a() {
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (d28.k()) {
            StrictMode.setVmPolicy(igf.a(new StrictMode.VmPolicy.Builder(vmPolicy)).build());
        }
        return vmPolicy;
    }
}
