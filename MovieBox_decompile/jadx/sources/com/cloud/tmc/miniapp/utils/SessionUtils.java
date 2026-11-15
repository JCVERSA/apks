package com.cloud.tmc.miniapp.utils;

import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.render.proxy.SessionUtilProxy;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

public final class SessionUtils implements SessionUtilProxy {
    public final ConcurrentHashMap<String, OooO00o> OooO00o = new ConcurrentHashMap<>();

    public static final class OooO00o {
        public boolean OooO00o;
        public String OooO0O0;

        public OooO00o() {
            this(false, null, 3);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OooO00o)) {
                return false;
            }
            OooO00o oooO00o = (OooO00o) obj;
            return this.OooO00o == oooO00o.OooO00o && Intrinsics.c(this.OooO0O0, oooO00o.OooO0O0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v4 */
        public int hashCode() {
            boolean z10 = this.OooO00o;
            ?? r10 = z10;
            if (z10) {
                r10 = 1;
            }
            return this.OooO0O0.hashCode() + (r10 * 31);
        }

        public String toString() {
            return "IdData(isColdOpen=" + this.OooO00o + ", id=" + this.OooO0O0 + ")";
        }

        public OooO00o(boolean z10, String id2) {
            Intrinsics.h(id2, "id");
            this.OooO00o = z10;
            this.OooO0O0 = id2;
        }

        public OooO00o(boolean z10, String str, int i10) {
            this((i10 & 1) != 0 ? true : z10, (i10 & 2) != 0 ? "" : str);
        }
    }

    @Override
    public String getId(String str) {
        OooO00o oooO00o;
        String str2;
        if (str == null) {
            return "";
        }
        try {
            return (!this.OooO00o.containsKey(str) || (oooO00o = this.OooO00o.get(str)) == null || (str2 = oooO00o.OooO0O0) == null) ? "" : str2;
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override
    public void removeSession(String str) {
        if (str != null) {
            try {
                this.OooO00o.remove(str);
            } catch (Throwable unused) {
                Unit unit = Unit.f64096a;
            }
        }
    }

    @Override
    public void updateSession(String str, boolean z10, boolean z11) {
        if (str != null) {
            int i10 = 1;
            boolean z12 = false;
            try {
                if (z11) {
                    this.OooO00o.remove(str);
                    this.OooO00o.put(str, new OooO00o(z12, DeviceUtil.getGAId() + "_" + System.currentTimeMillis(), i10));
                } else if (this.OooO00o.containsKey(str)) {
                    OooO00o oooO00o = (OooO00o) MapsKt.i(this.OooO00o, str);
                    boolean z13 = oooO00o.OooO00o;
                    if (z13 && z10) {
                        oooO00o.OooO00o = false;
                    } else if (z10 && !z13) {
                        String str2 = DeviceUtil.getGAId() + "_" + System.currentTimeMillis();
                        Intrinsics.h(str2, "<set-?>");
                        oooO00o.OooO0O0 = str2;
                    }
                } else {
                    this.OooO00o.put(str, new OooO00o(z12, DeviceUtil.getGAId() + "_" + System.currentTimeMillis(), i10));
                }
            } catch (Throwable unused) {
            }
        }
    }
}
