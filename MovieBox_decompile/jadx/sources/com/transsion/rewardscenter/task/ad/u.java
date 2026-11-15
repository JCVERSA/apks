package com.transsion.rewardscenter.task.ad;

import com.tencent.mmkv.MMKV;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class u {

    private static v.c f49123c;

    private static MemberTaskItem f49126f;

    private static MemberTaskItem f49127g;

    private static MemberTaskItem f49128h;

    private static MemberTaskItem f49129i;

    private static MemberTaskItem f49130j;

    public static final u f49121a = new u();

    private static final Lazy f49122b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return u.o();
        }
    });

    private static List f49124d = CollectionsKt.l();

    private static List f49125e = CollectionsKt.l();

    public static final int f49131k = 8;

    private u() {
    }

    private final MMKV f() {
        return (MMKV) f49122b.getValue();
    }

    public static final MMKV o() {
        return MMKV.I("StageTaskAdCache");
    }

    public final void b(v vVar, MemberTaskItem memberTaskItem) {
        int iIntValue = 0;
        if (memberTaskItem == null) {
            return;
        }
        MemberTaskItem memberTaskItem2 = f49126f;
        Pair pairA = TuplesKt.a(memberTaskItem2 != null ? memberTaskItem2.getTaskId() : null, f49126f);
        MemberTaskItem memberTaskItem3 = f49127g;
        Pair pairA2 = TuplesKt.a(memberTaskItem3 != null ? memberTaskItem3.getTaskId() : null, f49127g);
        MemberTaskItem memberTaskItem4 = f49128h;
        Pair pairA3 = TuplesKt.a(memberTaskItem4 != null ? memberTaskItem4.getTaskId() : null, f49128h);
        MemberTaskItem memberTaskItem5 = f49130j;
        Pair pairA4 = TuplesKt.a(memberTaskItem5 != null ? memberTaskItem5.getTaskId() : null, f49130j);
        MemberTaskItem memberTaskItem6 = f49129i;
        MemberTaskItem memberTaskItem7 = (MemberTaskItem) MapsKt.l(pairA, pairA2, pairA3, pairA4, TuplesKt.a(memberTaskItem6 != null ? memberTaskItem6.getTaskId() : null, f49129i)).get(memberTaskItem.getTaskId());
        if (memberTaskItem7 != null) {
            memberTaskItem7.setProgress(memberTaskItem.getProgress());
            memberTaskItem7.setTotalProgress(memberTaskItem.getTotalProgress());
            memberTaskItem7.setStatus(memberTaskItem.getStatus());
        }
        Integer totalProgress = memberTaskItem.getTotalProgress();
        if (totalProgress != null) {
            int iIntValue2 = totalProgress.intValue();
            Integer progress = memberTaskItem.getProgress();
            iIntValue = iIntValue2 - (progress != null ? progress.intValue() : 0);
        }
        if (iIntValue <= 0) {
            p(vVar);
        }
    }

    public final boolean c(String sceneId, String packageName) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(packageName, "packageName");
        int iHashCode = sceneId.hashCode();
        if (iHashCode != 1154212438) {
            if (iHashCode != 1383510840) {
                if (iHashCode == 2139474598 && sceneId.equals("MemberCenterStageNativeScene")) {
                    v.c cVar = f49123c;
                    List listE = CollectionsKt.e(cVar != null ? cVar.i() : null);
                    if (!(listE instanceof Collection) || !listE.isEmpty()) {
                        Iterator it = listE.iterator();
                        while (it.hasNext()) {
                            if (Intrinsics.c((String) it.next(), packageName)) {
                                return true;
                            }
                        }
                    }
                    List list = f49125e;
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (((v.a) obj).k()) {
                            arrayList.add(obj);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            if (Intrinsics.c(((v.a) it2.next()).i(), packageName)) {
                                return true;
                            }
                        }
                    }
                }
            } else if (sceneId.equals("MemberTaskRegularNativeScene")) {
                v.c cVar2 = f49123c;
                List listE2 = CollectionsKt.e(cVar2 != null ? cVar2.i() : null);
                if (!(listE2 instanceof Collection) || !listE2.isEmpty()) {
                    Iterator it3 = listE2.iterator();
                    while (it3.hasNext()) {
                        if (Intrinsics.c((String) it3.next(), packageName)) {
                            return true;
                        }
                    }
                }
                List list2 = f49124d;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it4 = list2.iterator();
                    while (it4.hasNext()) {
                        if (Intrinsics.c(((v.c) it4.next()).i(), packageName)) {
                            return true;
                        }
                    }
                }
                List list3 = f49125e;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : list3) {
                    if (((v.a) obj2).k()) {
                        arrayList2.add(obj2);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    Iterator it5 = arrayList2.iterator();
                    while (it5.hasNext()) {
                        if (Intrinsics.c(((v.a) it5.next()).i(), packageName)) {
                            return true;
                        }
                    }
                }
            }
        } else if (sceneId.equals("MemberTaskStageNativeScene")) {
            List list4 = f49124d;
            if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                Iterator it6 = list4.iterator();
                while (it6.hasNext()) {
                    if (Intrinsics.c(((v.c) it6.next()).i(), packageName)) {
                        return true;
                    }
                }
            }
            List list5 = f49125e;
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : list5) {
                if (((v.a) obj3).k()) {
                    arrayList3.add(obj3);
                }
            }
            if (!arrayList3.isEmpty()) {
                Iterator it7 = arrayList3.iterator();
                while (it7.hasNext()) {
                    if (Intrinsics.c(((v.a) it7.next()).i(), packageName)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final List d() {
        return f49125e;
    }

    public final List e() {
        return f49124d;
    }

    public final MemberTaskItem g() {
        return f49129i;
    }

    public final MemberTaskItem h() {
        return f49128h;
    }

    public final MemberTaskItem i() {
        return f49130j;
    }

    public final MemberTaskItem j() {
        return f49126f;
    }

    public final MemberTaskItem k() {
        return f49127g;
    }

    public final AdTaskState l(String str) {
        if (str == null) {
            return null;
        }
        int i10 = f().getInt("task_state_" + str, -1);
        if (i10 != -1) {
            return AdTaskState.getEntries().get(i10);
        }
        return null;
    }

    public final boolean m(String sceneId, String str) {
        boolean zN;
        Intrinsics.h(sceneId, "sceneId");
        boolean z10 = true;
        boolean z11 = false;
        if (str != null) {
            u uVar = f49121a;
            boolean zC = uVar.c(sceneId, str);
            zN = uVar.n(str);
            if (!StringsKt.q0(str) && !zC && !zN) {
                z10 = false;
            }
            z11 = zC;
        } else {
            zN = false;
        }
        wf.a.C0922a.f(wf.a.f74274a, "StageTaskAd", "isFiltered = " + z10 + ", packageName: " + str + ", isDuplicate: " + z11 + ", isInCooldown: " + zN, false, 4, null);
        return z10;
    }

    public final boolean n(String packageName) {
        Intrinsics.h(packageName, "packageName");
        MMKV mmkvF = f();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("package_cooldown_");
        sb2.append(packageName);
        return System.currentTimeMillis() < mmkvF.getLong(sb2.toString(), 0L);
    }

    public final void p(v vVar) {
        ArrayList arrayList;
        AdTaskState adTaskStateE;
        if (vVar instanceof v.c) {
            v.c cVar = f49123c;
            if (cVar != null && (adTaskStateE = cVar.e()) != null && adTaskStateE.ordinal() < AdTaskState.CLAIMED_STAGE1.ordinal()) {
                f49123c = null;
            }
            List list = f49124d;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (((v.c) obj).e().ordinal() >= AdTaskState.CLAIMED_STAGE1.ordinal()) {
                    arrayList2.add(obj);
                }
            }
            f49124d = arrayList2;
            return;
        }
        if (vVar instanceof v.a) {
            if (((v.a) vVar).k()) {
                List list2 = f49125e;
                arrayList = new ArrayList();
                for (Object obj2 : list2) {
                    if (!((v.a) obj2).k()) {
                        arrayList.add(obj2);
                    }
                }
            } else {
                List list3 = f49125e;
                arrayList = new ArrayList();
                for (Object obj3 : list3) {
                    if (((v.a) obj3).k()) {
                        arrayList.add(obj3);
                    }
                }
            }
            f49125e = arrayList;
        }
    }

    public final void q(v.a item) {
        Intrinsics.h(item, "item");
        List list = f49125e;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!Intrinsics.c((v.a) obj, item)) {
                arrayList.add(obj);
            }
        }
        f49125e = arrayList;
    }

    public final void r(List taskInfos) {
        Object obj;
        Object next;
        Object next2;
        Object next3;
        Object next4;
        Intrinsics.h(taskInfos, "taskInfos");
        List list = taskInfos;
        Iterator it = list.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Integer taskSubType = ((MemberTaskItem) next).getTaskSubType();
            int value = TaskType.AD_STAGE_1ST.getValue();
            if (taskSubType != null && taskSubType.intValue() == value) {
                break;
            }
        }
        f49126f = (MemberTaskItem) next;
        Iterator it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
            Integer taskSubType2 = ((MemberTaskItem) next2).getTaskSubType();
            int value2 = TaskType.AD_STAGE_2ND.getValue();
            if (taskSubType2 != null && taskSubType2.intValue() == value2) {
                break;
            }
        }
        f49127g = (MemberTaskItem) next2;
        Iterator it3 = list.iterator();
        while (true) {
            if (!it3.hasNext()) {
                next3 = null;
                break;
            }
            next3 = it3.next();
            Integer taskSubType3 = ((MemberTaskItem) next3).getTaskSubType();
            int value3 = TaskType.AD_REGULAR_PULL_NEW.getValue();
            if (taskSubType3 != null && taskSubType3.intValue() == value3) {
                break;
            }
        }
        f49128h = (MemberTaskItem) next3;
        Iterator it4 = list.iterator();
        while (true) {
            if (!it4.hasNext()) {
                next4 = null;
                break;
            }
            next4 = it4.next();
            Integer taskSubType4 = ((MemberTaskItem) next4).getTaskSubType();
            int value4 = TaskType.AD_REGULAR_PULL_LIVE.getValue();
            if (taskSubType4 != null && taskSubType4.intValue() == value4) {
                break;
            }
        }
        f49129i = (MemberTaskItem) next4;
        for (Object obj2 : list) {
            Integer taskSubType5 = ((MemberTaskItem) obj2).getTaskSubType();
            int value5 = TaskType.AD_REWARD.getValue();
            if (taskSubType5 != null && taskSubType5.intValue() == value5) {
                obj = obj2;
                break;
            }
        }
        f49130j = (MemberTaskItem) obj;
    }

    public final void s(List list) {
        Intrinsics.h(list, "<set-?>");
        f49125e = list;
    }

    public final void t(List list) {
        Intrinsics.h(list, "<set-?>");
        f49124d = list;
    }

    public final void u(String packageName, Integer num) {
        Intrinsics.h(packageName, "packageName");
        long j10 = 60;
        long jCurrentTimeMillis = System.currentTimeMillis() + ((num != null ? num.intValue() : 3L) * ((long) 24) * j10 * j10 * 1000);
        f().putLong("package_cooldown_" + packageName, jCurrentTimeMillis);
    }

    public final void v(String str, AdTaskState adTaskState) {
        Intrinsics.h(adTaskState, "adTaskState");
        if (str == null) {
            return;
        }
        f().putInt("task_state_" + str, adTaskState.ordinal());
    }
}
