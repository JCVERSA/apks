package com.transsion.player.longvideo.helper;

import com.transsion.player.longvideo.member.ResolutionMemberManager;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

public final class LongVodResolutionHelper {

    public static final a f46057b = new a(null);

    private String f46058a = "";

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final boolean c(ln.c cVar, String str) {
        Integer numV = StringsKt.v(str);
        int iIntValue = numV != null ? numV.intValue() : 0;
        Integer numV2 = StringsKt.v(cVar.e());
        int iIntValue2 = numV2 != null ? numV2.intValue() : 0;
        return iIntValue2 > 0 && iIntValue > 0 && iIntValue2 > iIntValue;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v8, types: [T, ln.c] */
    /* JADX WARN: Type inference failed for: r2v16, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v9, types: [T, ln.c] */
    /* JADX WARN: Type inference failed for: r7v10, types: [T, ln.c] */
    /* JADX WARN: Type inference failed for: r8v13, types: [T, ln.c] */
    /* JADX WARN: Type inference failed for: r8v8, types: [T, ln.c] */
    public final Object d(ln.a aVar, Continuation continuation) {
        LongVodResolutionHelper$getMp4DefaultPlayBean$1 longVodResolutionHelper$getMp4DefaultPlayBean$1;
        Object next;
        List list;
        Ref.ObjectRef objectRef;
        ln.c cVar;
        Object next2;
        if (continuation instanceof LongVodResolutionHelper$getMp4DefaultPlayBean$1) {
            longVodResolutionHelper$getMp4DefaultPlayBean$1 = (LongVodResolutionHelper$getMp4DefaultPlayBean$1) continuation;
            int i10 = longVodResolutionHelper$getMp4DefaultPlayBean$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                longVodResolutionHelper$getMp4DefaultPlayBean$1.label = i10 - Integer.MIN_VALUE;
            } else {
                longVodResolutionHelper$getMp4DefaultPlayBean$1 = new LongVodResolutionHelper$getMp4DefaultPlayBean$1(this, continuation);
            }
        } else {
            longVodResolutionHelper$getMp4DefaultPlayBean$1 = new LongVodResolutionHelper$getMp4DefaultPlayBean$1(this, continuation);
        }
        Object obj = longVodResolutionHelper$getMp4DefaultPlayBean$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = longVodResolutionHelper$getMp4DefaultPlayBean$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            List listJ = aVar.j();
            if (listJ.isEmpty()) {
                return null;
            }
            String string = this.f46058a;
            if (string.length() == 0) {
                string = com.transsion.baselib.report.launch.b.f42221a.b().getString("key_stream_resolution", "");
                if (string == null) {
                    string = "";
                }
                this.f46058a = string;
            }
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "getMp4DefaultPlayBean, savedResolution： " + this.f46058a, false, 4, null);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            List<??> list2 = listJ;
            for (?? r10 : list2) {
                if (!r10.j()) {
                    objectRef2.element = r10;
                }
            }
            T t10 = objectRef2.element;
            if (t10 != 0) {
                return t10;
            }
            if (string.length() == 0) {
                Iterator it = list2.iterator();
                do {
                    if (!it.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it.next();
                } while (!Intrinsics.c(((ln.c) next2).e(), "480"));
                objectRef2.element = (ln.c) next2;
            } else {
                for (?? r11 : list2) {
                    if (Intrinsics.c(r11.e(), string)) {
                        objectRef2.element = r11;
                    }
                }
                if (objectRef2.element == 0) {
                    Iterator it2 = list2.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                    } while (!c((ln.c) next, string));
                    objectRef2.element = (ln.c) next;
                }
            }
            if (objectRef2.element == 0) {
                objectRef2.element = CollectionsKt.u0(listJ);
            }
            if (this.f46058a.length() == 0 && (cVar = (ln.c) objectRef2.element) != null) {
                g(cVar.e());
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            ln.c cVar2 = (ln.c) objectRef2.element;
            wf.a.C0922a.f(c0922a, LongVodPlayerView.TAG, "getMp4DefaultPlayBean, bean.resolutions： " + (cVar2 != null ? cVar2.e() : null), false, 4, null);
            ResolutionMemberManager resolutionMemberManager = ResolutionMemberManager.f46182a;
            longVodResolutionHelper$getMp4DefaultPlayBean$1.L$0 = listJ;
            longVodResolutionHelper$getMp4DefaultPlayBean$1.L$1 = objectRef2;
            longVodResolutionHelper$getMp4DefaultPlayBean$1.label = 1;
            Object objF2 = resolutionMemberManager.f(aVar, longVodResolutionHelper$getMp4DefaultPlayBean$1);
            if (objF2 == objF) {
                return objF;
            }
            list = listJ;
            obj = objF2;
            objectRef = objectRef2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) longVodResolutionHelper$getMp4DefaultPlayBean$1.L$1;
            list = (List) longVodResolutionHelper$getMp4DefaultPlayBean$1.L$0;
            ResultKt.b(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            com.transsion.player.longvideo.member.r rVar = com.transsion.player.longvideo.member.r.f46212a;
            if (rVar.q(((ln.c) objectRef.element).e()) && !ij.o.f62115a.i() && !ij.g.f62108a.b()) {
                wf.a.C0922a c0922a2 = wf.a.f74274a;
                wf.a.C0922a.f(c0922a2, "vipResolution", "getMp4DefaultPlayBean() --> 当前没有解锁，需要降级到720P以下，当前bean.resolutions = " + ((ln.c) objectRef.element).e(), false, 4, null);
                T t11 = objectRef.element;
                ((ln.c) t11).m(((ln.c) t11).e());
                ?? G = com.transsion.player.longvideo.member.r.g(rVar, list, 0, 2, null);
                objectRef.element = G;
                wf.a.C0922a.f(c0922a2, "vipResolution", "getMp4DefaultPlayBean() --> 降级后的bean.resolutions = " + (G != 0 ? G.e() : null), false, 4, null);
            }
        }
        return objectRef.element;
    }

    public final Object b(ln.a aVar, Continuation continuation) {
        if (aVar.j().isEmpty()) {
            return null;
        }
        ln.c cVar = (ln.c) CollectionsKt.i0(aVar.j());
        com.transsion.player.longvideo.member.k.f46204a.a("LongVodResolutionHelper --> getDefaultPlayStream() --> 是MP4格式 = " + aVar.w());
        return aVar.w() ? d(aVar, continuation) : cVar;
    }

    public final ln.c e(ln.a bean, ln.b config) {
        Intrinsics.h(bean, "bean");
        Intrinsics.h(config, "config");
        for (ln.c cVar : bean.j()) {
            if (StringsKt.c0(config.d(), cVar.e(), false, 2, null)) {
                return cVar;
            }
        }
        return null;
    }

    public final List f(ln.c playStream, List mp4Streams) {
        Intrinsics.h(playStream, "playStream");
        Intrinsics.h(mp4Streams, "mp4Streams");
        ArrayList arrayList = new ArrayList();
        Iterator it = mp4Streams.iterator();
        while (it.hasNext()) {
            ln.c cVar = (ln.c) it.next();
            arrayList.add(new ln.b(Intrinsics.c(cVar.e(), playStream.e()), cVar.e() + "P", null, 4, null));
        }
        return arrayList;
    }

    public final void g(String resolution) {
        Intrinsics.h(resolution, "resolution");
        wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "save, resolution： " + resolution, false, 4, null);
        this.f46058a = resolution;
        com.transsion.baselib.report.launch.b.f42221a.b().putString("key_stream_resolution", resolution);
    }
}
