package com.transsion.ad.bidding.video;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.google.android.material.imageview.ShapeableImageView;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.R$id;
import com.transsion.ad.R$mipmap;
import com.transsion.ad.bidding.base.AbsBiddingActivity;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.view.MemberTagView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\u0003J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0014H\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u0003J\u000f\u0010\u001c\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001c\u0010\u0003J\u0011\u0010\u001d\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u001d\u0010\u000fJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u001e\u0010\u000fJ\u0011\u0010\u001f\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u001f\u0010\u000fR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006("}, d2 = {"Lcom/transsion/ad/bidding/video/BiddingBuyOutBuyOutVideoActivity;", "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "<init>", "()V", "", "U0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/view/View;", "o0", "()Landroid/view/View;", "Landroid/widget/FrameLayout;", "j0", "()Landroid/widget/FrameLayout;", "p0", "", "g0", "()I", "D0", "i", "y0", "(I)V", "r0", "Z0", "c0", "k0", "l0", "", "o", "Z", "isCanClickClose", "Lsh/f;", TtmlNode.TAG_P, "Lsh/f;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingBuyOutBuyOutVideoActivity extends AbsBiddingActivity {

    private boolean isCanClickClose;

    private sh.f binding;

    public static final void T0(ConstraintLayout constraintLayout, BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity) {
        constraintLayout.setPadding(constraintLayout.getPaddingLeft(), ImmersionBar.getStatusBarHeight((Activity) biddingBuyOutBuyOutVideoActivity), constraintLayout.getPaddingRight(), constraintLayout.getPaddingBottom());
    }

    private final void U0() {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        ShapeableImageView shapeableImageView;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatTextView appCompatTextView6;
        ShapeableImageView shapeableImageView2;
        try {
            Result.Companion companion = Result.INSTANCE;
            sh.f fVar = this.binding;
            if (fVar != null && (shapeableImageView2 = fVar.f72112o) != null) {
                AdPlans mAdPlan = getMAdPlan();
                if (TextUtils.isEmpty(mAdPlan != null ? mAdPlan.getAdvertiserAvatarPath() : null)) {
                    RequestManager requestManagerWith = Glide.with((FragmentActivity) this);
                    AdPlans mAdPlan2 = getMAdPlan();
                    requestManagerWith.load2(mAdPlan2 != null ? mAdPlan2.getAdvertiserAvatar() : null).into(shapeableImageView2);
                } else {
                    RequestManager requestManagerWith2 = Glide.with((FragmentActivity) this);
                    AdPlans mAdPlan3 = getMAdPlan();
                    requestManagerWith2.load2(mAdPlan3 != null ? mAdPlan3.getAdvertiserAvatarPath() : null).into(shapeableImageView2);
                }
            }
            sh.f fVar2 = this.binding;
            if (fVar2 != null && (appCompatTextView6 = fVar2.f72116s) != null) {
                AdMaterialList mAdMaterialList = getMAdMaterialList();
                appCompatTextView6.setText(mAdMaterialList != null ? mAdMaterialList.getTitle() : null);
            }
            sh.f fVar3 = this.binding;
            if (fVar3 != null && (appCompatTextView5 = fVar3.f72115r) != null) {
                AdMaterialList mAdMaterialList2 = getMAdMaterialList();
                appCompatTextView5.setText(mAdMaterialList2 != null ? mAdMaterialList2.getDesc() : null);
            }
            sh.f fVar4 = this.binding;
            if (fVar4 != null && (appCompatTextView4 = fVar4.f72113p) != null) {
                AdMaterialList mAdMaterialList3 = getMAdMaterialList();
                appCompatTextView4.setText(mAdMaterialList3 != null ? mAdMaterialList3.getButtonText() : null);
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        try {
            sh.f fVar5 = this.binding;
            if (fVar5 != null && (shapeableImageView = fVar5.f72108k) != null) {
                AdPlans mAdPlan4 = getMAdPlan();
                if (TextUtils.isEmpty(mAdPlan4 != null ? mAdPlan4.getAdvertiserAvatarPath() : null)) {
                    RequestManager requestManagerWith3 = Glide.with((FragmentActivity) this);
                    AdPlans mAdPlan5 = getMAdPlan();
                    requestManagerWith3.load2(mAdPlan5 != null ? mAdPlan5.getAdvertiserAvatar() : null).into(shapeableImageView);
                } else {
                    RequestManager requestManagerWith4 = Glide.with((FragmentActivity) this);
                    AdPlans mAdPlan6 = getMAdPlan();
                    requestManagerWith4.load2(mAdPlan6 != null ? mAdPlan6.getAdvertiserAvatarPath() : null).into(shapeableImageView);
                }
            }
            sh.f fVar6 = this.binding;
            if (fVar6 != null && (appCompatTextView3 = fVar6.f72111n) != null) {
                AdMaterialList mAdMaterialList4 = getMAdMaterialList();
                appCompatTextView3.setText(mAdMaterialList4 != null ? mAdMaterialList4.getTitle() : null);
            }
            sh.f fVar7 = this.binding;
            if (fVar7 != null && (appCompatTextView2 = fVar7.f72110m) != null) {
                AdMaterialList mAdMaterialList5 = getMAdMaterialList();
                appCompatTextView2.setText(mAdMaterialList5 != null ? mAdMaterialList5.getDesc() : null);
            }
            sh.f fVar8 = this.binding;
            if (fVar8 != null && (appCompatTextView = fVar8.f72109l) != null) {
                AdMaterialList mAdMaterialList6 = getMAdMaterialList();
                appCompatTextView.setText(mAdMaterialList6 != null ? mAdMaterialList6.getButtonText() : null);
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th3) {
            Result.Companion companion3 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th3));
        }
    }

    public static final Unit V0(BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity, View it) {
        Intrinsics.h(it, "it");
        biddingBuyOutBuyOutVideoActivity.V();
        return Unit.f64096a;
    }

    public static final void W0(BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity, View view) {
        if (biddingBuyOutBuyOutVideoActivity.isCanClickClose) {
            biddingBuyOutBuyOutVideoActivity.Z0();
        } else {
            xh.b.a.c(biddingBuyOutBuyOutVideoActivity, 3, "showAdInformation() --> setOnClickListener() --> 只有在最后10秒的时候才能点击", null, false, 4, null);
        }
    }

    public static final void X0(BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity, View view) {
        biddingBuyOutBuyOutVideoActivity.b0();
    }

    public static final void Y0(BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity, View view) {
        biddingBuyOutBuyOutVideoActivity.K0();
    }

    public static final Unit a1(BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity) {
        biddingBuyOutBuyOutVideoActivity.b0();
        return Unit.f64096a;
    }

    public static final Unit b1(BiddingBuyOutBuyOutVideoActivity biddingBuyOutBuyOutVideoActivity) {
        biddingBuyOutBuyOutVideoActivity.C0(false);
        return Unit.f64096a;
    }

    @Override
    public void D0() {
        MemberTagView memberTagView;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        U0();
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R$id.clAdEndLayout);
        if (constraintLayout != null) {
            constraintLayout.setOnClickListener(new ci.g(0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return BiddingBuyOutBuyOutVideoActivity.V0(this.f41024a, (View) obj);
                }
            }, 1, null));
        }
        sh.f fVar = this.binding;
        if (fVar != null && (appCompatImageView2 = fVar.f72106i) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    BiddingBuyOutBuyOutVideoActivity.W0(this.f41025a, view);
                }
            });
        }
        sh.f fVar2 = this.binding;
        if (fVar2 != null && (appCompatImageView = fVar2.f72105h) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    BiddingBuyOutBuyOutVideoActivity.X0(this.f41026a, view);
                }
            });
        }
        sh.f fVar3 = this.binding;
        if (fVar3 == null || (memberTagView = fVar3.f72118u) == null) {
            return;
        }
        memberTagView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                BiddingBuyOutBuyOutVideoActivity.Y0(this.f41027a, view);
            }
        });
    }

    public void Z0() {
        if (!this.isCanClickClose) {
            xh.b.a.c(this, 3, "showCloseAdDialog() --> 只有在最后10秒的时候才能展示", null, false, 4, null);
        } else {
            C0(true);
            new BiddingCloseAdDialog().b0(new Function0() {
                @Override
                public final Object invoke() {
                    return BiddingBuyOutBuyOutVideoActivity.a1(this.f41030a);
                }
            }, new Function0() {
                @Override
                public final Object invoke() {
                    return BiddingBuyOutBuyOutVideoActivity.b1(this.f41031a);
                }
            }).c0(this, "CloseAdDialog");
        }
    }

    @Override
    public View c0() {
        return findViewById(R$id.adIcon);
    }

    @Override
    public int g0() {
        return com.transsion.ad.scene.b.f41153a.g();
    }

    @Override
    public String getLogTag() {
        return "ad_v";
    }

    @Override
    public FrameLayout j0() {
        sh.f fVar = this.binding;
        if (fVar != null) {
            return fVar.f72103f;
        }
        return null;
    }

    @Override
    public View k0() {
        sh.f fVar = this.binding;
        if (fVar != null) {
            return fVar.f72118u;
        }
        return null;
    }

    @Override
    public View l0() {
        sh.f fVar = this.binding;
        if (fVar != null) {
            return fVar.f72119v;
        }
        return null;
    }

    @Override
    public View o0() {
        sh.f fVarC = sh.f.c(getLayoutInflater());
        this.binding = fVarC;
        if (fVarC != null) {
            return fVarC.getRoot();
        }
        return null;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        final ConstraintLayout constraintLayout;
        super.onCreate(savedInstanceState);
        sh.f fVar = this.binding;
        if (fVar == null || (constraintLayout = fVar.f72102e) == null) {
            return;
        }
        constraintLayout.post(new Runnable() {
            @Override
            public final void run() {
                BiddingBuyOutBuyOutVideoActivity.T0(constraintLayout, this);
            }
        });
    }

    @Override
    public FrameLayout p0() {
        sh.f fVar = this.binding;
        if (fVar != null) {
            return fVar.f72104g;
        }
        return null;
    }

    @Override
    public void r0() {
        ConstraintLayout constraintLayout;
        sh.f fVar = this.binding;
        if (fVar == null || (constraintLayout = fVar.f72100c) == null) {
            return;
        }
        constraintLayout.setVisibility(0);
    }

    @Override
    public void y0(int i10) {
        AppCompatImageView appCompatImageView;
        LinearLayout linearLayout;
        AppCompatTextView appCompatTextView;
        sh.f fVar;
        LinearLayout linearLayout2;
        AppCompatImageView appCompatImageView2;
        if (i10 <= 10) {
            this.isCanClickClose = true;
            sh.f fVar2 = this.binding;
            if (fVar2 != null && (appCompatImageView2 = fVar2.f72106i) != null) {
                appCompatImageView2.setImageResource(R$mipmap.ad_video_01);
            }
        } else {
            sh.f fVar3 = this.binding;
            if (fVar3 != null && (appCompatImageView = fVar3.f72106i) != null) {
                appCompatImageView.setImageResource(R$mipmap.ad_video_03);
            }
        }
        if (i10 == g0() && (fVar = this.binding) != null && (linearLayout2 = fVar.f72107j) != null) {
            linearLayout2.setVisibility(0);
        }
        String str = i10 + "s";
        sh.f fVar4 = this.binding;
        if (fVar4 != null && (appCompatTextView = fVar4.f72114q) != null) {
            appCompatTextView.setText(str);
        }
        if (i10 == 0) {
            sh.f fVar5 = this.binding;
            if (fVar5 != null && (linearLayout = fVar5.f72107j) != null) {
                linearLayout.setVisibility(8);
            }
            Y();
        }
    }
}
