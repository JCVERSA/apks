package defpackage;

import android.os.Bundle;

public abstract class bl4 {
    public Bundle a = new Bundle();
    public int b = 0;
    public int c = 0;

    public void a() {
        this.a.putInt("s_material_cache", 2);
    }

    public void b(int i) {
        if (i == 250) {
            this.c = 2;
        } else {
            this.c = 1;
        }
    }

    public void c(boolean z) {
        if (z) {
            this.a.putInt("s_material_cache", 1);
        } else {
            this.a.putInt("s_material_cache", 2);
        }
    }

    public void d() {
        if (this.c == 1 || this.b == 1) {
            this.a.putInt("s_material_cache", 1);
        } else {
            this.a.putInt("s_material_cache", 2);
        }
    }

    public void e(int i) {
        if (i == 250) {
            this.a.putInt("s_material_cache", 2);
        } else {
            this.a.putInt("s_material_cache", 1);
        }
    }

    public void f(int i) {
        if (i == 250) {
            this.b = 2;
        } else {
            this.b = 1;
        }
    }
}
