package com.alibaba.fastjson.util;

import b5.b2;
import b5.o;
import c5.a0;
import c5.b0;
import c5.b1;
import c5.c1;
import c5.e1;
import c5.f1;
import c5.g1;
import c5.h1;
import c5.i1;
import c5.j1;
import c5.m1;
import c5.o0;
import c5.p;
import c5.p0;
import c5.q;
import c5.r0;
import c5.s0;
import c5.x0;
import c5.z0;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.JSONPathException;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.ProtectionDomain;
import java.util.HashMap;
import java.util.Map;

public class a extends ClassLoader {

    private static Map f17577b = new HashMap();

    private static ProtectionDomain f17576a = (ProtectionDomain) AccessController.doPrivileged(new C0153a());

    static class C0153a implements PrivilegedAction {
        C0153a() {
        }

        @Override
        public Object run() {
            return a.class.getProtectionDomain();
        }
    }

    static {
        Class[] clsArr = {com.alibaba.fastjson.a.class, JSONObject.class, JSONArray.class, JSONPath.class, com.alibaba.fastjson.b.class, JSONException.class, JSONPathException.class, com.alibaba.fastjson.d.class, com.alibaba.fastjson.e.class, com.alibaba.fastjson.f.class, com.alibaba.fastjson.g.class, d.class, TypeUtils.class, f.class, g.class, ParameterizedTypeImpl.class, h.class, z0.class, p0.class, i1.class, f1.class, o0.class, j1.class, h1.class, s0.class, r0.class, b0.class, c5.i.class, q.class, x0.class, b1.class, c1.class, m1.class, SerializerFeature.class, a0.class, e1.class, g1.class, o.class, a5.h.class, a5.a.class, a5.b.class, a5.c.class, a5.g.class, a5.f.class, a5.i.class, Feature.class, a5.e.class, a5.d.class, b5.d.class, b2.class, b5.j.class, b5.i.class, b5.k.class, p.class, b5.l.class, b5.f.class};
        for (int i10 = 0; i10 < 56; i10++) {
            Class cls = clsArr[i10];
            f17577b.put(cls.getName(), cls);
        }
    }

    public a() {
        super(b());
    }

    static ClassLoader b() {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader != null) {
            try {
                contextClassLoader.loadClass(com.alibaba.fastjson.a.class.getName());
                return contextClassLoader;
            } catch (ClassNotFoundException unused) {
            }
        }
        return com.alibaba.fastjson.a.class.getClassLoader();
    }

    public Class a(String str, byte[] bArr, int i10, int i11) {
        return defineClass(str, bArr, i10, i11, f17576a);
    }

    public boolean c(Class cls) {
        ClassLoader classLoader = cls.getClassLoader();
        if (classLoader == null) {
            return false;
        }
        for (ClassLoader parent = this; parent != null; parent = parent.getParent()) {
            if (parent == classLoader) {
                return false;
            }
        }
        return true;
    }

    @Override
    protected Class loadClass(String str, boolean z10) {
        Class cls = (Class) f17577b.get(str);
        return cls != null ? cls : super.loadClass(str, z10);
    }

    public a(ClassLoader classLoader) {
        super(classLoader);
    }
}
