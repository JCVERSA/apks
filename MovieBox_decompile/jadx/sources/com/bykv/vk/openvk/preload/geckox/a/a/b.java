package com.bykv.vk.openvk.preload.geckox.a.a;

import android.annotation.SuppressLint;
import java.io.File;
import java.util.List;

@SuppressLint({"CI_StaticFieldLeak"})
public abstract class b {

    public static final b f19973a = new d();

    public static final b f19974b;

    protected a f19975c;

    protected File f19976d;

    protected List<String> f19977e;

    static {
        new f();
        f19974b = new e();
    }

    public abstract void a();

    public void a(a aVar, File file, List<String> list) {
        this.f19975c = aVar;
        this.f19976d = file;
        this.f19977e = list;
    }
}
