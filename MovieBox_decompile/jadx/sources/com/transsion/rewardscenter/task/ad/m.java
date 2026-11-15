package com.transsion.rewardscenter.task.ad;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenterapi.MemberTaskItem;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class m extends BaseItemProvider {

    private final MemberTaskAdHelper f49100e;

    private boolean f49101f;

    private int f49102g;

    private int f49103h;

    private int f49104i;

    private final int f49105j = AdTaskType.REGULAR_AD.getValue();

    private final int f49106k = R$layout.member_task_regular_item_layout;

    public class a {

        public static final int[] f49107a;

        static {
            int[] iArr = new int[AdTaskState.values().length];
            try {
                iArr[AdTaskState.DOWNLOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdTaskState.INSTALLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AdTaskState.PLAYED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AdTaskState.COMPLETED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AdTaskState.NORMAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AdTaskState.PLAYING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f49107a = iArr;
        }
    }

    public m(MemberTaskAdHelper memberTaskAdHelper) {
        this.f49100e = memberTaskAdHelper;
    }

    private final void C(v.a aVar) {
        NativeWrapperAdView nativeWrapperAdViewH = aVar.h();
        if (nativeWrapperAdViewH != null) {
            NativeWrapperAdView.simulatingClick$default(nativeWrapperAdViewH, aVar.c(), null, aVar.j(), 2, null);
        }
    }

    private final void D(v.a aVar) {
        HashMap map = new HashMap();
        map.put("module_name", "member_ad_task_regular");
        map.put("ad_state", aVar.e().name());
        map.put("pull_new", String.valueOf(aVar.k()));
        qi.h.f69682a.o("MemberAdTask", map);
    }

    private final void E() {
        HashMap map = new HashMap();
        map.put("module_name", "member_ad_task_regular");
        qi.h.f69682a.z("MemberAdTask", map);
    }

    private final void F(BaseViewHolder baseViewHolder, v.a aVar) {
        FrameLayout frameLayout = (FrameLayout) baseViewHolder.getView(R$id.ad_container);
        MemberTaskAdHelper memberTaskAdHelper = this.f49100e;
        if (memberTaskAdHelper != null) {
            memberTaskAdHelper.Q(aVar);
        }
        NativeWrapperAdView nativeWrapperAdViewH = aVar.h();
        if (nativeWrapperAdViewH != null) {
            ViewParent parent = nativeWrapperAdViewH.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(nativeWrapperAdViewH);
            }
            frameLayout.removeAllViews();
            frameLayout.addView(nativeWrapperAdViewH);
        }
    }

    private final void G(v.a aVar) {
        u.f49121a.v(aVar.i(), aVar.e());
    }

    private final void H(BaseViewHolder baseViewHolder, v.a aVar, boolean z10) {
        TextView textView = (TextView) baseViewHolder.getView(R$id.btn_action);
        int i10 = a.f49107a[aVar.e().ordinal()];
        if (i10 == 1) {
            textView.setText("Downloading...");
            textView.setTextColor(this.f49103h);
            return;
        }
        if (i10 == 2 || i10 == 3) {
            textView.setText("Claim");
            textView.setTextColor(this.f49102g);
        } else if (i10 != 4) {
            textView.setText(z10 ? "Install" : "Open");
            textView.setTextColor(this.f49102g);
        } else {
            textView.setText("Completed");
            textView.setTextColor(this.f49104i);
        }
    }

    static void I(m mVar, BaseViewHolder baseViewHolder, v.a aVar, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        mVar.H(baseViewHolder, aVar, z10);
    }

    private final void J(final BaseViewHolder baseViewHolder, final v.a aVar, final boolean z10) {
        uf.c.c((TextView) baseViewHolder.getView(R$id.btn_action), 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return m.K(this.f49090a, aVar, z10, baseViewHolder, (View) obj);
            }
        }, 1, null);
    }

    public static final Unit K(final m mVar, final v.a aVar, boolean z10, final BaseViewHolder baseViewHolder, View it) {
        Intrinsics.h(it, "it");
        mVar.D(aVar);
        int i10 = a.f49107a[aVar.e().ordinal()];
        if (i10 == 2) {
            MemberTaskAdHelper memberTaskAdHelper = mVar.f49100e;
            if (memberTaskAdHelper != null) {
                memberTaskAdHelper.z(aVar, new Function0() {
                    @Override
                    public final Object invoke() {
                        return m.L(aVar, mVar, baseViewHolder);
                    }
                });
            }
        } else if (i10 == 3) {
            MemberTaskAdHelper memberTaskAdHelper2 = mVar.f49100e;
            if (memberTaskAdHelper2 != null) {
                memberTaskAdHelper2.z(aVar, new Function0() {
                    @Override
                    public final Object invoke() {
                        return m.M(aVar, mVar, baseViewHolder);
                    }
                });
            }
        } else if (i10 == 5) {
            if (z10) {
                aVar.m(AdTaskState.DOWNLOADING);
                aVar.o(System.currentTimeMillis());
            } else {
                aVar.m(AdTaskState.PLAYING);
            }
            I(mVar, baseViewHolder, aVar, false, 4, null);
            mVar.G(aVar);
            mVar.C(aVar);
        }
        return Unit.f64096a;
    }

    public static final Unit L(v.a aVar, m mVar, BaseViewHolder baseViewHolder) {
        aVar.m(AdTaskState.COMPLETED);
        I(mVar, baseViewHolder, aVar, false, 4, null);
        mVar.G(aVar);
        mVar.f49100e.y(aVar.i(), Integer.valueOf(mVar.f49100e.q(aVar.c().getSceneId())));
        u.f49121a.q(aVar);
        return Unit.f64096a;
    }

    public static final Unit M(v.a aVar, m mVar, BaseViewHolder baseViewHolder) {
        aVar.m(AdTaskState.COMPLETED);
        I(mVar, baseViewHolder, aVar, false, 4, null);
        mVar.G(aVar);
        return Unit.f64096a;
    }

    private final void N(BaseViewHolder baseViewHolder, boolean z10) {
        TextView textView = (TextView) baseViewHolder.getView(R$id.member_point);
        if (z10) {
            MemberTaskItem memberTaskItemH = u.f49121a.h();
            textView.setText("+" + (memberTaskItemH != null ? memberTaskItemH.getRewardAmount() : null) + " points");
            return;
        }
        MemberTaskItem memberTaskItemG = u.f49121a.g();
        textView.setText("+" + (memberTaskItemG != null ? memberTaskItemG.getRewardAmount() : null) + " points");
    }

    @Override
    public void b(BaseViewHolder helper, v item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (item instanceof v.a) {
            v.a aVar = (v.a) item;
            F(helper, aVar);
            boolean zK = aVar.k();
            N(helper, zK);
            if (!zK && aVar.e() == AdTaskState.COMPLETED) {
                aVar.m(AdTaskState.NORMAL);
            }
            H(helper, aVar, zK);
            J(helper, aVar, zK);
            if (this.f49101f) {
                return;
            }
            this.f49101f = true;
            E();
        }
    }

    @Override
    public int l() {
        return this.f49105j;
    }

    @Override
    public int m() {
        return this.f49106k;
    }

    @Override
    public BaseViewHolder r(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(m(), parent, false);
        this.f49102g = androidx.core.content.b.getColor(parent.getContext(), R$color.white);
        this.f49103h = androidx.core.content.b.getColor(parent.getContext(), R$color.white_50);
        this.f49104i = androidx.core.content.b.getColor(parent.getContext(), R$color.white_40);
        Intrinsics.e(viewInflate);
        return new BaseViewHolder(viewInflate);
    }
}
