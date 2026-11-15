package com.vungle.ads.internal.model;

import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.m1;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.w1;

public final class i {
    public static final b Companion = new b(null);
    private final d device;
    private final c.h ext;
    private final int ordinalView;
    private final h request;
    private final c.j user;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final kotlinx.serialization.descriptors.f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.RtbToken", aVar, 5);
            pluginGeneratedSerialDescriptor.l("device", false);
            pluginGeneratedSerialDescriptor.l("user", true);
            pluginGeneratedSerialDescriptor.l("ext", true);
            pluginGeneratedSerialDescriptor.l("request", true);
            pluginGeneratedSerialDescriptor.l("ordinal_view", false);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            return new kotlinx.serialization.b[]{d.a.INSTANCE, ry.a.s(c.j.a.INSTANCE), ry.a.s(c.h.a.INSTANCE), ry.a.s(h.a.INSTANCE), r0.f65223a};
        }

        @Override
        public i deserialize(sy.e decoder) {
            Object objN;
            int i10;
            Object objN2;
            Object objN3;
            int i11;
            Object objY;
            Intrinsics.h(decoder, "decoder");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            sy.c cVarB = decoder.b(descriptor2);
            if (cVarB.p()) {
                objY = cVarB.y(descriptor2, 0, d.a.INSTANCE, null);
                objN2 = cVarB.n(descriptor2, 1, c.j.a.INSTANCE, null);
                Object objN4 = cVarB.n(descriptor2, 2, c.h.a.INSTANCE, null);
                objN3 = cVarB.n(descriptor2, 3, h.a.INSTANCE, null);
                i11 = cVarB.i(descriptor2, 4);
                objN = objN4;
                i10 = 31;
            } else {
                boolean z10 = true;
                int i12 = 0;
                Object objY2 = null;
                Object objN5 = null;
                objN = null;
                Object objN6 = null;
                int i13 = 0;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        objY2 = cVarB.y(descriptor2, 0, d.a.INSTANCE, objY2);
                        i13 |= 1;
                    } else if (iO == 1) {
                        objN5 = cVarB.n(descriptor2, 1, c.j.a.INSTANCE, objN5);
                        i13 |= 2;
                    } else if (iO == 2) {
                        objN = cVarB.n(descriptor2, 2, c.h.a.INSTANCE, objN);
                        i13 |= 4;
                    } else if (iO == 3) {
                        objN6 = cVarB.n(descriptor2, 3, h.a.INSTANCE, objN6);
                        i13 |= 8;
                    } else {
                        if (iO != 4) {
                            throw new UnknownFieldException(iO);
                        }
                        i12 = cVarB.i(descriptor2, 4);
                        i13 |= 16;
                    }
                }
                i10 = i13;
                objN2 = objN5;
                objN3 = objN6;
                i11 = i12;
                objY = objY2;
            }
            cVarB.c(descriptor2);
            return new i(i10, (d) objY, (c.j) objN2, (c.h) objN, (h) objN3, i11, (w1) null);
        }

        @Override
        public kotlinx.serialization.descriptors.f getDescriptor() {
            return descriptor;
        }

        @Override
        public void serialize(sy.f encoder, i value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            sy.d dVarB = encoder.b(descriptor2);
            i.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
        }

        @Override
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final kotlinx.serialization.b serializer() {
            return a.INSTANCE;
        }

        private b() {
        }
    }

    @Deprecated
    public i(int i10, d dVar, c.j jVar, c.h hVar, h hVar2, int i11, w1 w1Var) {
        if (17 != (i10 & 17)) {
            m1.a(i10, 17, a.INSTANCE.getDescriptor());
        }
        this.device = dVar;
        if ((i10 & 2) == 0) {
            this.user = null;
        } else {
            this.user = jVar;
        }
        if ((i10 & 4) == 0) {
            this.ext = null;
        } else {
            this.ext = hVar;
        }
        if ((i10 & 8) == 0) {
            this.request = null;
        } else {
            this.request = hVar2;
        }
        this.ordinalView = i11;
    }

    public static i copy$default(i iVar, d dVar, c.j jVar, c.h hVar, h hVar2, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            dVar = iVar.device;
        }
        if ((i11 & 2) != 0) {
            jVar = iVar.user;
        }
        c.j jVar2 = jVar;
        if ((i11 & 4) != 0) {
            hVar = iVar.ext;
        }
        c.h hVar3 = hVar;
        if ((i11 & 8) != 0) {
            hVar2 = iVar.request;
        }
        h hVar4 = hVar2;
        if ((i11 & 16) != 0) {
            i10 = iVar.ordinalView;
        }
        return iVar.copy(dVar, jVar2, hVar3, hVar4, i10);
    }

    public static void getOrdinalView$annotations() {
    }

    @JvmStatic
    public static final void write$Self(i self, sy.d output, kotlinx.serialization.descriptors.f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        output.C(serialDesc, 0, d.a.INSTANCE, self.device);
        if (output.z(serialDesc, 1) || self.user != null) {
            output.i(serialDesc, 1, c.j.a.INSTANCE, self.user);
        }
        if (output.z(serialDesc, 2) || self.ext != null) {
            output.i(serialDesc, 2, c.h.a.INSTANCE, self.ext);
        }
        if (output.z(serialDesc, 3) || self.request != null) {
            output.i(serialDesc, 3, h.a.INSTANCE, self.request);
        }
        output.w(serialDesc, 4, self.ordinalView);
    }

    public final d component1() {
        return this.device;
    }

    public final c.j component2() {
        return this.user;
    }

    public final c.h component3() {
        return this.ext;
    }

    public final h component4() {
        return this.request;
    }

    public final int component5() {
        return this.ordinalView;
    }

    public final i copy(d device, c.j jVar, c.h hVar, h hVar2, int i10) {
        Intrinsics.h(device, "device");
        return new i(device, jVar, hVar, hVar2, i10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return Intrinsics.c(this.device, iVar.device) && Intrinsics.c(this.user, iVar.user) && Intrinsics.c(this.ext, iVar.ext) && Intrinsics.c(this.request, iVar.request) && this.ordinalView == iVar.ordinalView;
    }

    public final d getDevice() {
        return this.device;
    }

    public final c.h getExt() {
        return this.ext;
    }

    public final int getOrdinalView() {
        return this.ordinalView;
    }

    public final h getRequest() {
        return this.request;
    }

    public final c.j getUser() {
        return this.user;
    }

    public int hashCode() {
        int iHashCode = this.device.hashCode() * 31;
        c.j jVar = this.user;
        int iHashCode2 = (iHashCode + (jVar == null ? 0 : jVar.hashCode())) * 31;
        c.h hVar = this.ext;
        int iHashCode3 = (iHashCode2 + (hVar == null ? 0 : hVar.hashCode())) * 31;
        h hVar2 = this.request;
        return ((iHashCode3 + (hVar2 != null ? hVar2.hashCode() : 0)) * 31) + this.ordinalView;
    }

    public String toString() {
        return "RtbToken(device=" + this.device + ", user=" + this.user + ", ext=" + this.ext + ", request=" + this.request + ", ordinalView=" + this.ordinalView + ')';
    }

    public i(d device, c.j jVar, c.h hVar, h hVar2, int i10) {
        Intrinsics.h(device, "device");
        this.device = device;
        this.user = jVar;
        this.ext = hVar;
        this.request = hVar2;
        this.ordinalView = i10;
    }

    public i(d dVar, c.j jVar, c.h hVar, h hVar2, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar, (i11 & 2) != 0 ? null : jVar, (i11 & 4) != 0 ? null : hVar, (i11 & 8) != 0 ? null : hVar2, i10);
    }
}
