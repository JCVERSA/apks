package com.transsion.subtitle.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.SubtitleLanguageMapBean;
import com.transsion.moviedetailapi.bean.SubtitleItem;
import com.transsion.subtitle.bean.OpenSubtitleData;
import com.transsion.subtitle.bean.SubtitleSearchListBean;
import com.transsion.subtitle.fragment.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kg.c;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ui.d1;

public final class SubtitleDownloadViewModel extends t0 {

    private final Lazy f52933a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SubtitleDownloadViewModel.v();
        }
    });

    private final Lazy f52934b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SubtitleDownloadViewModel.w();
        }
    });

    private final b0 f52935c = new b0();

    private final b0 f52936d = new b0();

    private final b0 f52937e = new b0();

    private final b0 f52938f = new b0();

    private final b0 f52939g = new b0();

    private final b0 f52940h = new b0();

    private final b0 f52941i = new b0();

    private final b0 f52942j = new b0();

    private final b0 f52943k = new b0();

    private final mt.a p() {
        return (mt.a) this.f52933a.getValue();
    }

    public final d1 q() {
        return (d1) this.f52934b.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    /* JADX WARN: Failed to calculate best type for var: r1v13 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v13 ??, new type: com.transsion.subtitle.helper.b
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v13 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v13 ??, new type: com.transsion.subtitle.helper.b
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v15 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v15 ??, new type: com.transsion.subtitle.bean.SubtitleSearchListBean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v15 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v15 ??, new type: com.transsion.subtitle.bean.SubtitleSearchListBean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v13 com.transsion.subtitle.helper.b, new type: com.transsion.subtitle.helper.b
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.applyResolvedVars(TypeSearch.java:100)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:76)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.runMultiVariableSearch(FixTypesVisitor.java:119)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object r(i iVar, String str, DownloadBean downloadBean, String str2, int i10, Continuation continuation) {
        SubtitleDownloadViewModel$searchFromMovieBox$1 subtitleDownloadViewModel$searchFromMovieBox$1;
        String subjectId;
        String str3 = str2;
        if (continuation instanceof SubtitleDownloadViewModel$searchFromMovieBox$1) {
            subtitleDownloadViewModel$searchFromMovieBox$1 = (SubtitleDownloadViewModel$searchFromMovieBox$1) continuation;
            int i11 = subtitleDownloadViewModel$searchFromMovieBox$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                subtitleDownloadViewModel$searchFromMovieBox$1.label = i11 - Integer.MIN_VALUE;
            } else {
                subtitleDownloadViewModel$searchFromMovieBox$1 = new SubtitleDownloadViewModel$searchFromMovieBox$1(this, continuation);
            }
        } else {
            subtitleDownloadViewModel$searchFromMovieBox$1 = new SubtitleDownloadViewModel$searchFromMovieBox$1(this, continuation);
        }
        SubtitleDownloadViewModel$searchFromMovieBox$1 subtitleDownloadViewModel$searchFromMovieBox$2 = subtitleDownloadViewModel$searchFromMovieBox$1;
        Object objA = subtitleDownloadViewModel$searchFromMovieBox$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = subtitleDownloadViewModel$searchFromMovieBox$2.label;
        if (i12 == 0) {
            ResultKt.b(objA);
            if (iVar == null || iVar.b().length() == 0) {
                SubtitleSearchListBean subtitleSearchListBean = new SubtitleSearchListBean(null, null, 0, false, 12, null);
                subtitleSearchListBean.setSearchType(1);
                subtitleSearchListBean.setRefresh(Intrinsics.c(str3, "1"));
                return subtitleSearchListBean;
            }
            wf.a.C0922a.v(wf.a.f74274a, "ORSubtitle_search", "222 searchFromMovieBox name:" + iVar.b() + ",ep:" + iVar.a() + ",se:" + iVar.c(), false, 4, null);
            mt.a aVarP = p();
            String strB = iVar.b();
            if (downloadBean == null || (subjectId = downloadBean.getSubjectId()) == null) {
                subjectId = "";
            }
            String str4 = subjectId;
            int iC = iVar.c();
            int iA = iVar.a();
            subtitleDownloadViewModel$searchFromMovieBox$2.L$0 = str3;
            subtitleDownloadViewModel$searchFromMovieBox$2.label = 1;
            objA = mt.a.C0817a.a(aVarP, null, strB, str, str4, iC, iA, str2, i10, subtitleDownloadViewModel$searchFromMovieBox$2, 1, null);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            String str5 = (String) subtitleDownloadViewModel$searchFromMovieBox$2.L$0;
            ResultKt.b(objA);
            str3 = str5;
        }
        BaseDto baseDto = (BaseDto) objA;
        if (!Intrinsics.c(baseDto.getCode(), "0")) {
            SubtitleSearchListBean subtitleSearchListBean2 = new SubtitleSearchListBean(null, null, 0, false, 12, null);
            subtitleSearchListBean2.setSearchType(1);
            subtitleSearchListBean2.setRefresh(Intrinsics.c(str3, "1"));
            return subtitleSearchListBean2;
        }
        com.transsion.subtitle.helper.b.f52865a.f(r11, baseDto.getReason());
        SubtitleSearchListBean subtitleSearchListBean3 = (SubtitleSearchListBean) baseDto.getData();
        if (subtitleSearchListBean3 != 0) {
            subtitleSearchListBean3.setSearchType(r11);
            subtitleSearchListBean3.setRefresh(Intrinsics.c(str3, "1"));
            List<SubtitleItem> items = subtitleSearchListBean3.getItems();
            if (items != null) {
                Iterator<T> it = items.iterator();
                while (it.hasNext()) {
                    ((SubtitleItem) it.next()).setType(Boxing.d(2));
                }
            }
        }
        return (SubtitleSearchListBean) baseDto.getData();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object s(DownloadBean downloadBean, i iVar, List list, Continuation continuation) {
        SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1 subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1;
        String name;
        String lan;
        String strB;
        String strB2;
        String lan2;
        List list2;
        if (continuation instanceof SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1) {
            subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1 = (SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1) continuation;
            int i10 = subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1.label = i10 - Integer.MIN_VALUE;
            } else {
                subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1 = new SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1(this, continuation);
            }
        } else {
            subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1 = new SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1(this, continuation);
        }
        SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1 subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$2 = subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1;
        Object objE = subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$2.label;
        if (i11 == 0) {
            ResultKt.b(objE);
            wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), "searchFromOpenSubtitleNewApi -start", true);
            if (downloadBean == null || !downloadBean.isSeries()) {
                com.transsion.subtitle.helper.b bVar = com.transsion.subtitle.helper.b.f52865a;
                if (iVar == null || (strB = iVar.b()) == null) {
                    name = downloadBean != null ? downloadBean.getName() : null;
                    if (name == null) {
                        name = "";
                    }
                } else {
                    name = strB;
                }
                SubtitleLanguageMapBean subtitleLanguageMapBean = (SubtitleLanguageMapBean) CollectionsKt.k0(list);
                String str = (subtitleLanguageMapBean == null || (lan = subtitleLanguageMapBean.getLan()) == null) ? "" : lan;
                subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$2.label = 2;
                objE = bVar.e(name, str, null, null, subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$2);
                if (objE == objF) {
                    return objF;
                }
                list2 = (List) objE;
            } else {
                com.transsion.subtitle.helper.b bVar2 = com.transsion.subtitle.helper.b.f52865a;
                if (iVar == null || (strB2 = iVar.b()) == null) {
                    String name2 = downloadBean.getName();
                    strB2 = name2 == null ? "" : name2;
                }
                SubtitleLanguageMapBean subtitleLanguageMapBean2 = (SubtitleLanguageMapBean) CollectionsKt.k0(list);
                String str2 = (subtitleLanguageMapBean2 == null || (lan2 = subtitleLanguageMapBean2.getLan()) == null) ? "" : lan2;
                Integer numD = iVar != null ? Boxing.d(iVar.c()) : null;
                Integer numD2 = iVar != null ? Boxing.d(iVar.a()) : null;
                subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$2.label = 1;
                objE = bVar2.e(strB2, str2, numD, numD2, subtitleDownloadViewModel$searchFromOpenSubtitleNewApi$2);
                if (objE == objF) {
                    return objF;
                }
                list2 = (List) objE;
            }
        } else if (i11 == 1) {
            ResultKt.b(objE);
            list2 = (List) objE;
        } else {
            if (i11 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objE);
            list2 = (List) objE;
        }
        List list3 = list2;
        if (list3 == null || list3.isEmpty()) {
            wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), "searchFromOpenSubtitleNewApi -fail", true);
            return null;
        }
        wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), "searchFromOpenSubtitleNewApi -success", true);
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            SubtitleItem subtitleBean = ((OpenSubtitleData) it.next()).toSubtitleBean();
            if (subtitleBean != null) {
                arrayList.add(subtitleBean);
            }
        }
        SubtitleSearchListBean subtitleSearchListBean = new SubtitleSearchListBean(null, arrayList, 0, false, 12, null);
        subtitleSearchListBean.setSearchType(3);
        subtitleSearchListBean.setRefresh(true);
        return subtitleSearchListBean;
    }

    public static void u(SubtitleDownloadViewModel subtitleDownloadViewModel, i iVar, String str, List list, DownloadBean downloadBean, String str2, int i10, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            str2 = "1";
        }
        String str3 = str2;
        if ((i11 & 32) != 0) {
            i10 = 20;
        }
        subtitleDownloadViewModel.t(iVar, str, list, downloadBean, str3, i10);
    }

    public static final mt.a v() {
        return (mt.a) c.f63982e.a().h(mt.a.class);
    }

    public static final d1 w() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).z1();
        }
        return null;
    }

    public final void g(String subtitleResId) {
        Intrinsics.h(subtitleResId, "subtitleResId");
        k.d(u0.a(this), null, null, new SubtitleDownloadViewModel$getDownloadedList$1(subtitleResId, this, null), 3, null);
    }

    public final b0 h() {
        return this.f52936d;
    }

    public final void i() {
        k.d(o0.a(y0.b()), null, null, new SubtitleDownloadViewModel$getLanguageAllList$1(this, null), 3, null);
    }

    public final b0 j() {
        return this.f52938f;
    }

    public final void k(ht.a item) {
        Intrinsics.h(item, "item");
        k.d(u0.a(this), y0.b(), null, new SubtitleDownloadViewModel$getOpenSubNewApiDownloadInfo$1(item, this, null), 2, null);
    }

    public final b0 l() {
        return this.f52942j;
    }

    public final b0 m() {
        return this.f52943k;
    }

    public final b0 n() {
        return this.f52937e;
    }

    public final b0 o() {
        return this.f52941i;
    }

    public final void t(i iVar, String languages, List languageList, DownloadBean downloadBean, String nextPage, int i10) {
        Intrinsics.h(languages, "languages");
        Intrinsics.h(languageList, "languageList");
        Intrinsics.h(nextPage, "nextPage");
        k.d(u0.a(this), y0.b(), null, new SubtitleDownloadViewModel$searchSubtitleList$1(this, downloadBean, iVar, languageList, languages, nextPage, i10, null), 2, null);
    }
}
