package kotlin.reflect.jvm.internal.impl.util;

import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class g implements kotlin.reflect.jvm.internal.impl.util.b {
    public final String a;

    public static final class a extends g {
        public final int b;

        public a(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append("must have at least ");
            sb.append(i);
            sb.append(" value parameter");
            sb.append(i > 1 ? "s" : "");
            super(sb.toString(), null);
            this.b = i;
        }

        @Override
        public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
            y45.j(eVar, "functionDescriptor");
            return eVar.f().size() >= this.b;
        }
    }

    public static final class b extends g {
        public final int b;

        public b(int i) {
            super("must have exactly " + i + " value parameters", null);
            this.b = i;
        }

        @Override
        public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
            y45.j(eVar, "functionDescriptor");
            return eVar.f().size() == this.b;
        }
    }

    public static final class c extends g {
        public static final c b = new c();

        public c() {
            super("must have no value parameters", null);
        }

        @Override
        public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
            y45.j(eVar, "functionDescriptor");
            return eVar.f().isEmpty();
        }
    }

    public static final class d extends g {
        public static final d b = new d();

        public d() {
            super("must have a single value parameter", null);
        }

        @Override
        public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
            y45.j(eVar, "functionDescriptor");
            return eVar.f().size() == 1;
        }
    }

    public g(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @Override
    public String a(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        return kotlin.reflect.jvm.internal.impl.util.b.a.a(this, eVar);
    }

    @Override
    public String getDescription() {
        return this.a;
    }

    public g(String str) {
        this.a = str;
    }
}
