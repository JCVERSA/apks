package com.transsion.home.viewmodel;

import android.app.Application;
import android.net.Uri;
import androidx.p009lifecycle.u0;
import com.google.gson.Gson;
import com.tencent.mmkv.MMKV;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.edcation.CourseManager;
import com.transsion.home.bean.DisplayMeta;
import com.transsion.home.bean.FeedsLayoutType;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.SubOperateData;
import com.transsion.home.bean.TrendingRequestEntity;
import com.transsion.home.bean.TrendingRespItem;
import com.transsion.home.bean.TrendingRespItemType;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.y0;

public final class SubTabViewModel extends androidx.p009lifecycle.b {

    public static final a f44478h = new a(null);

    public static final int f44479i = 8;

    private final androidx.p009lifecycle.b0 f44480b;

    private final androidx.p009lifecycle.b0 f44481c;

    private final Lazy f44482d;

    private final yk.e f44483e;

    private int f44484f;

    private boolean f44485g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubTabViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f44480b = new androidx.p009lifecycle.b0();
        this.f44481c = new androidx.p009lifecycle.b0();
        this.f44482d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return SubTabViewModel.x();
            }
        });
        this.f44483e = (yk.e) kg.c.f63982e.a().h(yk.e.class);
        this.f44484f = 1;
        this.f44485g = ij.g.f62108a.b();
    }

    public final List l(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            TrendingRespItem trendingRespItem = (TrendingRespItem) it.next();
            Integer type = trendingRespItem.getType();
            int value = TrendingRespItemType.SUBJECT.getValue();
            if (type != null && type.intValue() == value && trendingRespItem.getSubject() != null) {
                OperateItem operateItem = new OperateItem(null, PostItemType.SUBJECT.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870909, null);
                operateItem.setFeedsSubject(trendingRespItem.getSubject());
                arrayList.add(operateItem);
            }
        }
        return arrayList;
    }

    public final List m(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            TrendingRespItem trendingRespItem = (TrendingRespItem) it.next();
            UGCContent content = trendingRespItem.getContent();
            if ((content != null ? content.getVideo() : null) != null) {
                DisplayMeta displayMeta = trendingRespItem.getDisplayMeta();
                if (Intrinsics.c(displayMeta != null ? displayMeta.getLayoutType() : null, FeedsLayoutType.FULL.getValue())) {
                    String value = PostItemType.TRENDING_FEES_BIG.getValue();
                    UGCContent content2 = trendingRespItem.getContent();
                    arrayList.add(new OperateItem(null, value, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, content2 != null ? content2.getVideo() : null, null, null, null, null, null, null, null, null, 535822333, null));
                } else {
                    String value2 = PostItemType.TRENDING_FEES_GRID.getValue();
                    UGCContent content3 = trendingRespItem.getContent();
                    arrayList.add(new OperateItem(null, value2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, content3 != null ? content3.getVideo() : null, null, null, null, null, null, null, null, null, 535822333, null));
                }
            }
        }
        return arrayList;
    }

    private final String o(String str, int i10) {
        return str + "_" + i10;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0019  */
    public final Object r(int i10, String str, Continuation continuation) {
        SubTabViewModel$getSubOperation$1 subTabViewModel$getSubOperation$1;
        int i11;
        String str2;
        BaseDto baseDto;
        List<OperateItem> items;
        SubOperateData subOperateData;
        List<OperateItem> items2;
        SubOperateData subOperateData2;
        String version;
        if (continuation instanceof SubTabViewModel$getSubOperation$1) {
            subTabViewModel$getSubOperation$1 = (SubTabViewModel$getSubOperation$1) continuation;
            int i12 = subTabViewModel$getSubOperation$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                subTabViewModel$getSubOperation$1.label = i12 - Integer.MIN_VALUE;
            } else {
                subTabViewModel$getSubOperation$1 = new SubTabViewModel$getSubOperation$1(this, continuation);
            }
        } else {
            subTabViewModel$getSubOperation$1 = new SubTabViewModel$getSubOperation$1(this, continuation);
        }
        SubTabViewModel$getSubOperation$1 subTabViewModel$getSubOperation$2 = subTabViewModel$getSubOperation$1;
        Object objD = subTabViewModel$getSubOperation$2.result;
        Object objF = IntrinsicsKt.f();
        int i13 = subTabViewModel$getSubOperation$2.label;
        if (i13 == 0) {
            ResultKt.b(objD);
            String string = zk.e.f76812a.b().getString(o("sub_operation_version_prefix", i10), "");
            if (this.f44485g) {
                yk.e eVar = this.f44483e;
                subTabViewModel$getSubOperation$2.L$0 = string;
                subTabViewModel$getSubOperation$2.I$0 = i10;
                subTabViewModel$getSubOperation$2.label = 1;
                objD = yk.e.a.f(eVar, null, i10, string, str, subTabViewModel$getSubOperation$2, 1, null);
                if (objD == objF) {
                    return objF;
                }
                i11 = i10;
                str2 = string;
                baseDto = (BaseDto) objD;
            } else {
                yk.e eVar2 = this.f44483e;
                subTabViewModel$getSubOperation$2.L$0 = string;
                subTabViewModel$getSubOperation$2.I$0 = i10;
                subTabViewModel$getSubOperation$2.label = 2;
                objD = yk.e.a.d(eVar2, null, i10, string, subTabViewModel$getSubOperation$2, 1, null);
                if (objD == objF) {
                    return objF;
                }
                i11 = i10;
                str2 = string;
                baseDto = (BaseDto) objD;
            }
        } else if (i13 == 1) {
            i11 = subTabViewModel$getSubOperation$2.I$0;
            str2 = (String) subTabViewModel$getSubOperation$2.L$0;
            ResultKt.b(objD);
            baseDto = (BaseDto) objD;
        } else {
            if (i13 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i11 = subTabViewModel$getSubOperation$2.I$0;
            str2 = (String) subTabViewModel$getSubOperation$2.L$0;
            ResultKt.b(objD);
            baseDto = (BaseDto) objD;
        }
        if (str2 == null || str2.length() == 0 || (subOperateData = (SubOperateData) baseDto.getData()) == null || (items2 = subOperateData.getItems()) == null || !items2.isEmpty() || (subOperateData2 = (SubOperateData) baseDto.getData()) == null || (version = subOperateData2.getVersion()) == null || version.length() <= 0) {
            SubOperateData subOperateData3 = (SubOperateData) baseDto.getData();
            if (subOperateData3 != null && (items = subOperateData3.getItems()) != null && (!items.isEmpty())) {
                String json = new Gson().toJson(baseDto.getData());
                zk.e eVar3 = zk.e.f76812a;
                eVar3.b().putString(o("sub_operation_prefix", i11), json);
                MMKV mmkvB = eVar3.b();
                String strO = o("sub_operation_version_prefix", i11);
                SubOperateData subOperateData4 = (SubOperateData) baseDto.getData();
                mmkvB.putString(strO, subOperateData4 != null ? subOperateData4.getVersion() : null);
            }
        } else {
            baseDto.setData(com.blankj.utilcode.util.o.d(zk.e.f76812a.b().getString(o("sub_operation_prefix", i11), ""), SubOperateData.class));
        }
        return baseDto.getData();
    }

    public final void u(SubOperateData subOperateData) {
        List<OperateItem> items;
        if (subOperateData == null || (items = subOperateData.getItems()) == null) {
            return;
        }
        for (OperateItem operateItem : items) {
            if (Intrinsics.c(operateItem.getType(), PostItemType.UGC_SUBJECT_LIST.getValue()) && Intrinsics.c(operateItem.getStyleTemplate(), com.transsion.home.adapter.operateUGC.b.O)) {
                operateItem.setType(PostItemType.UGC_VERTICAL_OPT_LIST.getValue());
            }
        }
    }

    public final void v(int i10, SubOperateData subOperateData) {
        List<OperateItem> items;
        List<OperateItem> items2;
        if (HomeTabId.INSTANCE.h(Integer.valueOf(i10), true) && !ij.o.f62115a.i()) {
            CourseManager.r(CourseManager.f42905a, null, null, 3, null);
            if (subOperateData != null && (items2 = subOperateData.getItems()) != null) {
                items2.add(1, new OperateItem(null, PostItemType.MY_COURSE.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870909, null));
            }
        }
        String trendingTitle = subOperateData != null ? subOperateData.getTrendingTitle() : null;
        if (trendingTitle == null || trendingTitle.length() == 0 || subOperateData == null || (items = subOperateData.getItems()) == null) {
            return;
        }
        items.add(new OperateItem(subOperateData.getTrendingTitle(), PostItemType.FEEDS_TITLE.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870908, null));
    }

    public static final androidx.p009lifecycle.b0 x() {
        return new androidx.p009lifecycle.b0();
    }

    public final void n(int i10, boolean z10, String str) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new SubTabViewModel$fetchOperateData$1(z10, this, new Ref.ObjectRef(), i10, str, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 p() {
        return this.f44480b;
    }

    public final androidx.p009lifecycle.b0 q() {
        return this.f44481c;
    }

    public final androidx.p009lifecycle.b0 s() {
        return (androidx.p009lifecycle.b0) this.f44482d.getValue();
    }

    public final void t(int i10, String str, boolean z10) {
        String string;
        if (z10) {
            this.f44484f = 1;
        }
        TrendingRequestEntity trendingRequestEntity = new TrendingRequestEntity();
        int i11 = this.f44484f;
        this.f44484f = i11 + 1;
        trendingRequestEntity.setPage(String.valueOf(i11));
        trendingRequestEntity.setPerPage(this.f44485g ? 14 : 12);
        trendingRequestEntity.setSessionId(jg.b.f63119a.h());
        Uri uriB = com.transsion.baselib.report.h.f42200a.b();
        if (uriB == null || (string = uriB.toString()) == null) {
            string = "";
        }
        trendingRequestEntity.setDeepLink(string);
        trendingRequestEntity.setLatest_events(new ej.a(ej.b.f59709a.e()));
        ij.o oVar = ij.o.f62115a;
        if (oVar.i()) {
            trendingRequestEntity.setGrade(oVar.e());
        }
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new SubTabViewModel$getTrendingList$1(trendingRequestEntity, this, str, i10, null), 2, null);
    }

    public final void w(boolean z10) {
        this.f44485g = z10;
    }
}
