package com.transsion.player.longvideo.member;

import com.transsion.mb.config.manager.ConfigBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import org.json.JSONObject;

public final class r {

    public static final r f46212a = new r();

    private r() {
    }

    public static Integer c(r rVar, List list, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = rVar.i();
        }
        return rVar.b(list, i10);
    }

    public static Integer e(r rVar, qn.b[] bVarArr, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = rVar.i();
        }
        return rVar.d(bVarArr, i10);
    }

    public static ln.c g(r rVar, List list, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = rVar.i();
        }
        return rVar.f(list, i10);
    }

    public static boolean l(r rVar, List list, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = rVar.i();
        }
        return rVar.k(list, i10);
    }

    public static final int m(ln.c it) {
        Intrinsics.h(it, "it");
        return f46212a.r(it.e());
    }

    public static boolean o(r rVar, qn.b[] bVarArr, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = rVar.i();
        }
        return rVar.n(bVarArr, i10);
    }

    public final Integer b(List list, int i10) {
        Object next;
        if (list == null) {
            return null;
        }
        Iterator it = list.iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                int iAbs = Math.abs(f46212a.r(((ln.c) next).e()) - i10);
                do {
                    Object next2 = it.next();
                    int iAbs2 = Math.abs(f46212a.r(((ln.c) next2).e()) - i10);
                    if (iAbs > iAbs2) {
                        next = next2;
                        iAbs = iAbs2;
                    }
                } while (it.hasNext());
            }
        } else {
            next = null;
        }
        ln.c cVar = (ln.c) next;
        if (cVar != null) {
            return Integer.valueOf(f46212a.r(cVar.e()));
        }
        return null;
    }

    public final Integer d(qn.b[] formats, int i10) {
        qn.b bVar;
        Intrinsics.h(formats, "formats");
        if (formats.length != 0) {
            bVar = formats[0];
            int iY = ArraysKt.Y(formats);
            if (iY != 0) {
                int iAbs = Math.abs(bVar.c() - i10);
                int i11 = 1;
                if (1 <= iY) {
                    while (true) {
                        qn.b bVar2 = formats[i11];
                        int iAbs2 = Math.abs(bVar2.c() - i10);
                        if (iAbs > iAbs2) {
                            bVar = bVar2;
                            iAbs = iAbs2;
                        }
                        if (i11 == iY) {
                            break;
                        }
                        i11++;
                    }
                }
            }
        } else {
            bVar = null;
        }
        if (bVar != null) {
            return Integer.valueOf(bVar.c());
        }
        return null;
    }

    public final ln.c f(List list, int i10) {
        Object obj;
        Intrinsics.h(list, "list");
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (f46212a.r(((ln.c) obj2).e()) < i10) {
                arrayList.add(obj2);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                int iR = f46212a.r(((ln.c) next).e());
                do {
                    Object next2 = it.next();
                    int iR2 = f46212a.r(((ln.c) next2).e());
                    if (iR < iR2) {
                        next = next2;
                        iR = iR2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        return (ln.c) obj;
    }

    public final ln.b h(List resolutionList) {
        Object obj;
        Intrinsics.h(resolutionList, "resolutionList");
        Iterator it = resolutionList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                int iR = f46212a.r(((ln.b) next).d());
                do {
                    Object next2 = it.next();
                    int iR2 = f46212a.r(((ln.b) next2).d());
                    if (iR < iR2) {
                        next = next2;
                        iR = iR2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        return (ln.b) obj;
    }

    public final int i() {
        Object objM453constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("stream_resolution_ratio", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf(new JSONObject(value).optInt("vipResolutionRatio")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 1080;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final String j() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(s(i()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = String.valueOf(f46212a.i());
        }
        return (String) objM453constructorimpl;
    }

    public final boolean k(List list, int i10) {
        Sequence sequenceZ;
        Sequence sequenceY;
        if (list == null || (sequenceZ = CollectionsKt.Z(list)) == null || (sequenceY = SequencesKt.y(sequenceZ, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return Integer.valueOf(r.m((ln.c) obj));
            }
        })) == null) {
            return false;
        }
        Iterator f64466a = sequenceY.getF64466a();
        while (f64466a.hasNext()) {
            if (((Number) f64466a.next()).intValue() >= i10) {
                return true;
            }
        }
        return false;
    }

    public final boolean n(qn.b[] formats, int i10) {
        Intrinsics.h(formats, "formats");
        for (qn.b bVar : formats) {
            if (bVar.c() >= i10) {
                return true;
            }
        }
        return false;
    }

    public final boolean p() {
        Object objM453constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("stream_resolution_ratio", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(new JSONObject(value).optBoolean("isVipIntercept")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final boolean q(String resolution) {
        Intrinsics.h(resolution, "resolution");
        return r(resolution) >= i();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0072  */
    public final int r(String str) {
        Integer num;
        if (str == null || StringsKt.q0(str)) {
            return 0;
        }
        String upperCase = StringsKt.n1(str).toString().toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        int iHashCode = upperCase.hashCode();
        if (iHashCode != 1625) {
            if (iHashCode != 1687) {
                if (iHashCode != 1718) {
                    if (iHashCode == 1811 && upperCase.equals("8K")) {
                        num = 4320;
                    } else {
                        num = null;
                    }
                } else if (upperCase.equals("5K")) {
                    num = 2880;
                } else {
                    num = null;
                }
            } else if (upperCase.equals("4K")) {
                num = 2160;
            } else {
                num = null;
            }
        } else if (upperCase.equals("2K")) {
            num = 1440;
        } else {
            num = null;
        }
        if (num != null) {
            return num.intValue();
        }
        Integer numV = StringsKt.v(StringsKt.J0(upperCase, "P"));
        if (numV != null) {
            return numV.intValue();
        }
        return 0;
    }

    public final String s(int i10) {
        if (i10 >= 4320) {
            return "8K";
        }
        if (i10 >= 2880) {
            return "5K";
        }
        if (i10 >= 2160) {
            return "4K";
        }
        if (i10 >= 1440) {
            return "2K";
        }
        if (i10 >= 1080) {
            return "1080P";
        }
        if (i10 >= 720) {
            return "720P";
        }
        if (i10 >= 576) {
            return "576P";
        }
        if (i10 >= 480) {
            return "480P";
        }
        if (i10 >= 360) {
            return "360P";
        }
        if (i10 >= 240) {
            return "240P";
        }
        return i10 + "P";
    }
}
