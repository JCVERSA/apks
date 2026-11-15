package com.mgmi.e.a;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgmi.ads.api.j;
import com.mgmi.net.bean.b;

public class e<T extends com.mgmi.net.bean.b> implements f {
    protected Context a;

    public e(Context context) {
        this.a = context;
    }

    private void g(com.mgmi.net.bean.b bVar) {
        StringBuilder sb = new StringBuilder();
        if (this.a == null || bVar == null) {
            return;
        }
        sb.append(com.mgmi.platform.b.g());
        com.mgmi.f.b.a(sb, 0, 0, bVar.d(), 1, bVar.e(), (String) null, this.a);
        sb.append("&du=");
        sb.append(bVar.a());
        sb.append("&ip=");
        sb.append(bVar.b());
        sb.append("&type=");
        sb.append("6");
        sb.append("&suuid=");
        sb.append(com.mgmi.f.f.c());
        sb.append("&from=");
        sb.append(j.a().b());
        sb.append("&id=");
        sb.append(bVar.c());
        sb.append("&vid=");
        sb.append(com.mgmi.f.f.b());
        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(sb.toString()).a(this.a), new com.mgadplus.netlib.base.b() {
            @Override
            public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
            }

            @Override
            public void b(@NonNull Object obj) {
            }
        });
    }

    @Override
    public void a(com.mgmi.net.bean.b bVar) {
        g(bVar);
    }

    @Override
    public void b(com.mgmi.net.bean.b bVar) {
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            return;
        }
        sb.append(com.mgmi.platform.b.g());
        com.mgmi.f.b.a(sb, 0, 0, bVar.d(), 1, 4, (String) null, this.a);
        sb.append("&type=");
        sb.append("0");
        sb.append("&suuid=");
        sb.append(com.mgmi.f.f.c());
        sb.append("&from=");
        sb.append(j.a().b());
        sb.append("&id=");
        sb.append(bVar.c());
        sb.append("&vid=");
        sb.append(com.mgmi.f.f.b());
        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(sb.toString()).a(this.a), new com.mgadplus.netlib.base.b() {
            @Override
            public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
            }

            @Override
            public void b(@NonNull Object obj) {
            }
        });
    }

    @Override
    public void c(com.mgmi.net.bean.b bVar) {
        StringBuilder sb = new StringBuilder();
        if (this.a == null || bVar == null) {
            return;
        }
        sb.append(com.mgmi.platform.b.g());
        com.mgmi.f.b.a(sb, 0, 0, bVar.d(), 1, bVar.e(), (String) null, this.a);
        sb.append("&du=");
        sb.append(bVar.a());
        sb.append("&ip=");
        sb.append(bVar.b());
        sb.append("&z=");
        sb.append("1");
        if (bVar.j()) {
            if (bVar.h()) {
                sb.append("&type=");
                sb.append("1");
            } else {
                sb.append("&type=");
                sb.append("5");
            }
        }
        sb.append("&suuid=");
        sb.append(com.mgmi.f.f.c());
        sb.append("&from=");
        sb.append(j.a().b());
        sb.append("&id=");
        sb.append(bVar.c());
        sb.append("&vid=");
        sb.append(com.mgmi.f.f.b());
        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(sb.toString()).a(this.a), new com.mgadplus.netlib.base.b() {
            @Override
            public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
            }

            @Override
            public void b(@NonNull Object obj) {
            }
        });
    }

    @Override
    public void d(com.mgmi.net.bean.b bVar) {
        StringBuilder sb = new StringBuilder();
        if (this.a == null || bVar == null) {
            return;
        }
        sb.append(com.mgmi.platform.b.g());
        com.mgmi.f.b.a(sb, bVar.g(), -1, bVar.d(), 1, bVar.e(), bVar.f(), this.a);
        sb.append("&du=");
        sb.append(bVar.a());
        sb.append("&ip=");
        sb.append(bVar.b());
        sb.append("&z=");
        sb.append("1");
        sb.append("&suuid=");
        sb.append(com.mgmi.f.f.c());
        sb.append("&from=");
        sb.append(j.a().b());
        sb.append("&id=");
        sb.append(bVar.c());
        sb.append("&vid=");
        sb.append(com.mgmi.f.f.b());
        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(sb.toString()).a(this.a), new com.mgadplus.netlib.base.b() {
            @Override
            public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
            }

            @Override
            public void b(@NonNull Object obj) {
            }
        });
    }

    @Override
    public void e(com.mgmi.net.bean.b bVar) {
        StringBuilder sb = new StringBuilder();
        if (this.a == null || bVar == null) {
            return;
        }
        sb.append(com.mgmi.platform.b.g());
        com.mgmi.f.b.a(sb, bVar.g(), -1, bVar.d(), 3, 9, bVar.f(), this.a);
        sb.append("&vid=");
        sb.append(com.mgmi.f.f.b());
        sb.append("&from=");
        sb.append(j.a().b());
        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(sb.toString()).a(this.a), new com.mgadplus.netlib.base.b() {
            @Override
            public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
            }

            @Override
            public void b(@NonNull Object obj) {
            }
        });
    }

    @Override
    public void f(com.mgmi.net.bean.b bVar) {
        StringBuilder sb = new StringBuilder();
        if (this.a == null || bVar == null) {
            return;
        }
        sb.append(com.mgmi.platform.b.g());
        com.mgmi.f.b.a(sb, 0, 0, bVar.d(), 3, 9, (String) null, this.a);
        sb.append("&vid=");
        sb.append(com.mgmi.f.f.b());
        sb.append("&from=");
        sb.append(j.a().b());
        com.mgadplus.netlib.a.e.a(new com.mgmi.net.a.a().a(1).a(sb.toString()).a(this.a), new com.mgadplus.netlib.base.b() {
            @Override
            public void a(int i, int i2, @Nullable String str, @Nullable Throwable th, String str2) {
            }

            @Override
            public void b(@NonNull Object obj) {
            }
        });
    }
}
