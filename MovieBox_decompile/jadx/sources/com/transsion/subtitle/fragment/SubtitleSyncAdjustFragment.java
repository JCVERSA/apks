package com.transsion.subtitle.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.subtitle.view.SubtitleSyncAdjustView;
import com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u001d\u0010\n\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0016\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0016\u0010\u0011J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u0017\u0010\u001e\u001a\u00020\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\"R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006("}, d2 = {"Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;", "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;", "Ljt/h;", "<init>", "()V", "", "l0", "", "Lht/a;", "list", "n0", "(Ljava/util/List;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "j0", "(Landroid/view/LayoutInflater;)Ljt/h;", "initView", "", "hidden", "onHiddenChanged", "(Z)V", "lazyLoadData", "Llt/b;", "mCallback", "m0", "(Llt/b;)V", "Lcom/transsion/subtitle/helper/h;", "g", "Lcom/transsion/subtitle/helper/h;", "stHelper", "h", "ndHelper", "i", "Llt/b;", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubtitleSyncAdjustFragment extends SubtitleBaseFragment<jt.h> {

    private com.transsion.subtitle.helper.h stHelper;

    private com.transsion.subtitle.helper.h ndHelper;

    private lt.b mCallback;

    public static final void k0(SubtitleSyncAdjustFragment subtitleSyncAdjustFragment, View view) {
        androidx.p009lifecycle.b0 b0VarH;
        SubtitleDownloadViewModel viewModel = subtitleSyncAdjustFragment.getViewModel();
        if (viewModel == null || (b0VarH = viewModel.h()) == null) {
            return;
        }
        b0VarH.q("SELECT_SUBTITLE");
    }

    private final void l0() {
        List<ht.a> listL;
        ArrayList arrayList = new ArrayList();
        lt.b bVar = this.mCallback;
        if (bVar == null || (listL = bVar.j()) == null) {
            listL = CollectionsKt.l();
        }
        for (ht.a aVar : listL) {
            if (aVar.f()) {
                arrayList.add(aVar);
            }
        }
        n0(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void n0(List list) {
        jt.h hVar;
        SubtitleSyncAdjustView subtitleSyncAdjustView;
        jt.h hVar2;
        SubtitleSyncAdjustView subtitleSyncAdjustView2;
        Space space;
        Space space2;
        SubtitleSyncAdjustView subtitleSyncAdjustView3;
        SubtitleSyncAdjustView subtitleSyncAdjustView4;
        SubtitleSyncAdjustView subtitleSyncAdjustView5;
        com.transsion.subtitle.a.f52708a.a(SubtitleSyncAdjustFragment.class.getSimpleName() + " --> showSyncAdjustLayout() --> list.size = " + list.size());
        jt.h hVar3 = (jt.h) getMViewBinding();
        if (hVar3 != null && (subtitleSyncAdjustView5 = hVar3.f63311f) != null) {
            subtitleSyncAdjustView5.setVisibility(8);
        }
        jt.h hVar4 = (jt.h) getMViewBinding();
        if (hVar4 != null && (subtitleSyncAdjustView4 = hVar4.f63310e) != null) {
            subtitleSyncAdjustView4.setVisibility(8);
        }
        if (list.size() == 1) {
            ht.a aVar = (ht.a) list.get(0);
            jt.h hVar5 = (jt.h) getMViewBinding();
            if (hVar5 != null && (subtitleSyncAdjustView3 = hVar5.f63311f) != null) {
                subtitleSyncAdjustView3.setVisibility(0);
                subtitleSyncAdjustView3.setTitle("");
                com.transsion.subtitle.helper.h hVar6 = this.stHelper;
                if (hVar6 != null) {
                    hVar6.r(aVar);
                }
                com.transsion.subtitle.helper.h hVar7 = this.stHelper;
                if (hVar7 != null) {
                    hVar7.q(new Function2() {
                        @Override
                        public final Object invoke(Object obj, Object obj2) {
                            return SubtitleSyncAdjustFragment.q0(this.f52824a, (ht.a) obj, ((Long) obj2).longValue());
                        }
                    });
                }
            }
            jt.h hVar8 = (jt.h) getMViewBinding();
            if (hVar8 == null || (space2 = hVar8.f63308c) == null) {
                return;
            }
            space2.setVisibility(8);
            return;
        }
        jt.h hVar9 = (jt.h) getMViewBinding();
        if (hVar9 != null && (space = hVar9.f63308c) != null) {
            space.setVisibility(0);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ht.a aVar2 = (ht.a) it.next();
            if (TextUtils.equals(aVar2.a(), "1st") && (hVar2 = (jt.h) getMViewBinding()) != null && (subtitleSyncAdjustView2 = hVar2.f63311f) != null) {
                subtitleSyncAdjustView2.setVisibility(0);
                subtitleSyncAdjustView2.setTitle("1st " + aVar2.b().getName());
                com.transsion.subtitle.helper.h hVar10 = this.stHelper;
                if (hVar10 != null) {
                    hVar10.r(aVar2);
                }
                com.transsion.subtitle.helper.h hVar11 = this.stHelper;
                if (hVar11 != null) {
                    hVar11.q(new Function2() {
                        @Override
                        public final Object invoke(Object obj, Object obj2) {
                            return SubtitleSyncAdjustFragment.o0(this.f52826a, (ht.a) obj, ((Long) obj2).longValue());
                        }
                    });
                }
            }
            if (TextUtils.equals(aVar2.a(), "2nd") && (hVar = (jt.h) getMViewBinding()) != null && (subtitleSyncAdjustView = hVar.f63310e) != null) {
                subtitleSyncAdjustView.setVisibility(0);
                subtitleSyncAdjustView.setTitle("2nd " + aVar2.b().getName());
                com.transsion.subtitle.helper.h hVar12 = this.ndHelper;
                if (hVar12 != null) {
                    hVar12.r(aVar2);
                }
                com.transsion.subtitle.helper.h hVar13 = this.ndHelper;
                if (hVar13 != null) {
                    hVar13.q(new Function2() {
                        @Override
                        public final Object invoke(Object obj, Object obj2) {
                            return SubtitleSyncAdjustFragment.p0(this.f52828a, (ht.a) obj, ((Long) obj2).longValue());
                        }
                    });
                }
            }
        }
    }

    public static final Unit o0(SubtitleSyncAdjustFragment subtitleSyncAdjustFragment, ht.a aVar, long j10) {
        lt.b bVar = subtitleSyncAdjustFragment.mCallback;
        if (bVar != null) {
            bVar.l(aVar, j10);
        }
        return Unit.f64096a;
    }

    public static final Unit p0(SubtitleSyncAdjustFragment subtitleSyncAdjustFragment, ht.a aVar, long j10) {
        lt.b bVar = subtitleSyncAdjustFragment.mCallback;
        if (bVar != null) {
            bVar.l(aVar, j10);
        }
        return Unit.f64096a;
    }

    public static final Unit q0(SubtitleSyncAdjustFragment subtitleSyncAdjustFragment, ht.a aVar, long j10) {
        lt.b bVar = subtitleSyncAdjustFragment.mCallback;
        if (bVar != null) {
            bVar.l(aVar, j10);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        AppCompatImageView appCompatImageView;
        Intrinsics.h(view, "view");
        jt.h hVar = (jt.h) getMViewBinding();
        if (hVar != null && (appCompatImageView = hVar.f63307b) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SubtitleSyncAdjustFragment.k0(this.f52822a, view2);
                }
            });
        }
        jt.h hVar2 = (jt.h) getMViewBinding();
        com.transsion.subtitle.helper.h hVar3 = new com.transsion.subtitle.helper.h(hVar2 != null ? hVar2.f63311f : null);
        hVar3.o(null);
        this.stHelper = hVar3;
        jt.h hVar4 = (jt.h) getMViewBinding();
        com.transsion.subtitle.helper.h hVar5 = new com.transsion.subtitle.helper.h(hVar4 != null ? hVar4.f63310e : null);
        hVar5.o(null);
        this.ndHelper = hVar5;
    }

    @Override
    public jt.h getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        jt.h hVarC = jt.h.c(inflater);
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }

    @Override
    public void lazyLoadData() {
        l0();
    }

    public final void m0(lt.b mCallback) {
        this.mCallback = mCallback;
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        l0();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        e0("dialog_subtitle_sync_adjust");
    }
}
