package com.google.firebase.perf.v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import com.google.protobuf.b1;
import com.google.protobuf.m0;
import com.google.protobuf.t0;
import com.google.protobuf.y;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class i extends GeneratedMessageLite implements t0 {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 4;
    public static final int COUNTERS_FIELD_NUMBER = 6;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 8;
    private static final i DEFAULT_INSTANCE;
    public static final int DURATION_US_FIELD_NUMBER = 5;
    public static final int IS_AUTO_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile b1 PARSER = null;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 9;
    public static final int SUBTRACES_FIELD_NUMBER = 7;
    private int bitField0_;
    private long clientStartTimeUs_;
    private long durationUs_;
    private boolean isAuto_;
    private MapFieldLite<String, Long> counters_ = MapFieldLite.emptyMapField();
    private MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    private String name_ = "";
    private y.j subtraces_ = GeneratedMessageLite.emptyProtobufList();
    private y.j perfSessions_ = GeneratedMessageLite.emptyProtobufList();

    static class a {

        static final int[] f31576a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f31576a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31576a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31576a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31576a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f31576a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f31576a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f31576a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class b extends GeneratedMessageLite.b implements t0 {
        b(a aVar) {
            this();
        }

        public b d(Iterable iterable) {
            copyOnWrite();
            ((i) this.instance).q(iterable);
            return this;
        }

        public b h(Iterable iterable) {
            copyOnWrite();
            ((i) this.instance).r(iterable);
            return this;
        }

        public b j(h hVar) {
            copyOnWrite();
            ((i) this.instance).s(hVar);
            return this;
        }

        public b k(i iVar) {
            copyOnWrite();
            ((i) this.instance).t(iVar);
            return this;
        }

        public b l(Map map) {
            copyOnWrite();
            ((i) this.instance).C().putAll(map);
            return this;
        }

        public b m(Map map) {
            copyOnWrite();
            ((i) this.instance).D().putAll(map);
            return this;
        }

        public b n(String str, long j10) {
            str.getClass();
            copyOnWrite();
            ((i) this.instance).C().put(str, Long.valueOf(j10));
            return this;
        }

        public b o(String str, String str2) {
            str.getClass();
            str2.getClass();
            copyOnWrite();
            ((i) this.instance).D().put(str, str2);
            return this;
        }

        public b p(long j10) {
            copyOnWrite();
            ((i) this.instance).N(j10);
            return this;
        }

        public b q(long j10) {
            copyOnWrite();
            ((i) this.instance).O(j10);
            return this;
        }

        public b r(String str) {
            copyOnWrite();
            ((i) this.instance).P(str);
            return this;
        }

        private b() {
            super(i.DEFAULT_INSTANCE);
        }
    }

    private static final class c {

        static final m0 f31577a = m0.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.INT64, 0L);
    }

    private static final class d {

        static final m0 f31578a;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f31578a = m0.newDefaultInstance(fieldType, "", fieldType, "");
        }
    }

    static {
        i iVar = new i();
        DEFAULT_INSTANCE = iVar;
        GeneratedMessageLite.registerDefaultInstance(i.class, iVar);
    }

    private i() {
    }

    public static i A() {
        return DEFAULT_INSTANCE;
    }

    public Map C() {
        return K();
    }

    public Map D() {
        return L();
    }

    private MapFieldLite I() {
        return this.counters_;
    }

    private MapFieldLite J() {
        return this.customAttributes_;
    }

    private MapFieldLite K() {
        if (!this.counters_.isMutable()) {
            this.counters_ = this.counters_.mutableCopy();
        }
        return this.counters_;
    }

    private MapFieldLite L() {
        if (!this.customAttributes_.isMutable()) {
            this.customAttributes_ = this.customAttributes_.mutableCopy();
        }
        return this.customAttributes_;
    }

    public static b M() {
        return (b) DEFAULT_INSTANCE.createBuilder();
    }

    public void N(long j10) {
        this.bitField0_ |= 4;
        this.clientStartTimeUs_ = j10;
    }

    public void O(long j10) {
        this.bitField0_ |= 8;
        this.durationUs_ = j10;
    }

    public void P(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.name_ = str;
    }

    public void q(Iterable iterable) {
        v();
        com.google.protobuf.a.addAll(iterable, (List) this.perfSessions_);
    }

    public void r(Iterable iterable) {
        w();
        com.google.protobuf.a.addAll(iterable, (List) this.subtraces_);
    }

    public void s(h hVar) {
        hVar.getClass();
        v();
        this.perfSessions_.add(hVar);
    }

    public void t(i iVar) {
        iVar.getClass();
        w();
        this.subtraces_.add(iVar);
    }

    private void v() {
        y.j jVar = this.perfSessions_;
        if (jVar.isModifiable()) {
            return;
        }
        this.perfSessions_ = GeneratedMessageLite.mutableCopy(jVar);
    }

    private void w() {
        y.j jVar = this.subtraces_;
        if (jVar.isModifiable()) {
            return;
        }
        this.subtraces_ = GeneratedMessageLite.mutableCopy(jVar);
    }

    public long B() {
        return this.durationUs_;
    }

    public String E() {
        return this.name_;
    }

    public List F() {
        return this.perfSessions_;
    }

    public List G() {
        return this.subtraces_;
    }

    public boolean H() {
        return (this.bitField0_ & 4) != 0;
    }

    @Override
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (a.f31576a[methodToInvoke.ordinal()]) {
            case 1:
                return new i();
            case 2:
                return new b(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\b\u0000\u0001\u0001\t\b\u0002\u0002\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0004ဂ\u0002\u0005ဂ\u0003\u00062\u0007\u001b\b2\t\u001b", new Object[]{"bitField0_", "name_", "isAuto_", "clientStartTimeUs_", "durationUs_", "counters_", c.f31577a, "subtraces_", i.class, "customAttributes_", d.f31578a, "perfSessions_", h.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                b1 cVar = PARSER;
                if (cVar == null) {
                    synchronized (i.class) {
                        try {
                            cVar = PARSER;
                            if (cVar == null) {
                                cVar = new GeneratedMessageLite.c(DEFAULT_INSTANCE);
                                PARSER = cVar;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                        break;
                    }
                }
                return cVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public boolean u(String str) {
        str.getClass();
        return J().containsKey(str);
    }

    public int x() {
        return I().size();
    }

    public Map y() {
        return Collections.unmodifiableMap(I());
    }

    public Map z() {
        return Collections.unmodifiableMap(J());
    }
}
