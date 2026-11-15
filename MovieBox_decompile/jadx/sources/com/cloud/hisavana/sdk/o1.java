package com.cloud.hisavana.sdk;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSChronometer;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

public final class o1 extends k0 {

    private boolean f22096d;

    private int f22097e;

    private boolean f22098f;

    private int f22099g;

    private long f22100h;

    private int f22101i;

    private int f22102j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(Activity activity, View rootView, z3 helper) {
        super(activity, rootView, helper);
        Intrinsics.h(activity, "activity");
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(helper, "helper");
        this.f22101i = -1;
        this.f22102j = -1;
    }

    public static final void n(o1 this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.p(null, true);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0023  */
    private final void q(AdsDTO adsDTO) {
        String buttonTxt;
        StoreMarkView storeMarkView;
        NativeBean nativeObject;
        PslinkInfo pslinkInfo;
        NativeBean nativeObject2;
        AdsProtocolBean.Ext ext;
        NativeBean nativeObject3;
        try {
            TextView textView = (TextView) g().findViewById(R$id.ad_btn);
            String descriptionTxt = null;
            descriptionTxt = null;
            String descriptionTxt2 = null;
            dwellTime = null;
            Integer dwellTime = null;
            descriptionTxt = null;
            if (textView != null) {
                if (adsDTO != null) {
                    int installApk = adsDTO.getInstallApk();
                    NativeBean nativeObject4 = adsDTO.getNativeObject();
                    if (nativeObject4 != null) {
                        buttonTxt = nativeObject4.getButtonTxt(installApk);
                    } else {
                        buttonTxt = null;
                    }
                } else {
                    buttonTxt = null;
                }
                textView.setText(buttonTxt);
            }
            if (textView != null) {
                CharSequence text = textView.getText();
                textView.setVisibility((text == null || text.length() <= 0) ? 8 : 0);
            }
            TextView textView2 = (TextView) g().findViewById(R$id.tv_reward_tips);
            ImageView imageView = (ImageView) g().findViewById(R$id.iv_download_app_score);
            TextView textView3 = (TextView) g().findViewById(R$id.ad_description);
            ConstraintLayout constraintLayout = (ConstraintLayout) g().findViewById(R$id.ad_float_container);
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        o1.n(this.f22071a, view);
                    }
                });
            }
            try {
                storeMarkView = (StoreMarkView) g().findViewById(R$id.ps_mark_view);
            } catch (Throwable unused) {
                storeMarkView = null;
            }
            int i10 = this.f22097e;
            if (i10 == 2) {
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
                if (textView3 != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(com.cloud.hisavana.sdk.common.util.r.f21605a.h((adsDTO == null || (pslinkInfo = adsDTO.getPslinkInfo()) == null) ? null : pslinkInfo.getSourceSize()));
                    sb2.append(" · ");
                    if (adsDTO != null && (nativeObject = adsDTO.getNativeObject()) != null) {
                        descriptionTxt = nativeObject.getDescriptionTxt();
                    }
                    sb2.append(descriptionTxt);
                    textView3.setText(sb2.toString());
                }
                if (textView2 == null) {
                    return;
                }
                textView2.setText(com.cloud.sdk.commonutil.util.e.a().getResources().getString(R$string.hs_download_reward_pull_new));
                return;
            }
            if (i10 != 3) {
                if (imageView != null) {
                    imageView.setVisibility(0);
                }
                if (textView3 != null) {
                    StringBuilder sb3 = new StringBuilder();
                    w2.a aVar = w2.f22392a;
                    sb3.append(aVar.b(aVar.i(adsDTO)));
                    sb3.append(" · ");
                    if (adsDTO != null && (nativeObject3 = adsDTO.getNativeObject()) != null) {
                        descriptionTxt2 = nativeObject3.getDescriptionTxt();
                    }
                    sb3.append(descriptionTxt2);
                    textView3.setText(sb3.toString());
                }
                if (textView2 == null) {
                    return;
                }
                textView2.setText(com.cloud.sdk.commonutil.util.e.a().getResources().getString(R$string.hs_download_reward_pull_new));
                return;
            }
            if (storeMarkView != null) {
                storeMarkView.setVisibility(8);
            }
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            if (!f().getIsLandscape()) {
                androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
                bVar.p(constraintLayout);
                bVar.n(R$id.ad_btn, 4);
                bVar.s(R$id.ad_btn, 4, R$id.iv_reward_download_bg, 4);
                bVar.W(R$id.ad_btn, 0.5f);
                bVar.U(R$id.ad_btn, 3, 0);
                bVar.i(constraintLayout);
            }
            if (textView3 != null) {
                StringBuilder sb4 = new StringBuilder();
                w2.a aVar2 = w2.f22392a;
                sb4.append(aVar2.b(aVar2.i(adsDTO)));
                sb4.append(" · ");
                sb4.append((adsDTO == null || (nativeObject2 = adsDTO.getNativeObject()) == null) ? null : nativeObject2.getDescriptionTxt());
                textView3.setText(sb4.toString());
            }
            if (adsDTO != null && (ext = adsDTO.getExt()) != null) {
                dwellTime = ext.getDwellTime();
            }
            int iIntValue = dwellTime == null ? 0 : dwellTime.intValue();
            this.f22099g = iIntValue;
            if (iIntValue <= 0) {
                if (textView2 == null) {
                    return;
                }
                textView2.setText(com.cloud.sdk.commonutil.util.e.a().getResources().getString(R$string.hs_download_reward_pull_live_no_time));
            } else {
                if (textView2 == null) {
                    return;
                }
                StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
                Locale locale = Locale.getDefault();
                String string = com.cloud.sdk.commonutil.util.e.a().getResources().getString(R$string.hs_download_reward_pull_live);
                Intrinsics.g(string, "getString(...)");
                String str = String.format(locale, string, Arrays.copyOf(new Object[]{Integer.valueOf(this.f22099g)}, 1));
                Intrinsics.g(str, "format(...)");
                textView2.setText(str);
            }
        } catch (Throwable unused2) {
        }
    }

    @Override
    public void b(ImageView imageView, float f10) {
        if (imageView != null) {
            imageView.setImageResource(0.0f == f10 ? R$drawable.hisavana_volume_close : R$drawable.hisavana_volume_open);
        }
    }

    @Override
    public void c(HSChronometer hSChronometer) {
        if (hSChronometer != null) {
            hSChronometer.setTickStringFormat(hSChronometer.getResources().getString(R$string.reward_before_tip_r02));
            hSChronometer.setFinishedString(hSChronometer.getResources().getString(R$string.reward_after_tip_r02));
        }
    }

    @Override
    public void d(AdsDTO adsDTO) {
        com.cloud.hisavana.sdk.common.util.r rVar = com.cloud.hisavana.sdk.common.util.r.f21605a;
        this.f22097e = rVar.d(adsDTO);
        this.f22096d = rVar.c(adsDTO);
        q(adsDTO);
        f().b();
    }

    @Override
    public void e(boolean z10, DownUpPointBean downUpPointBean, View view) {
        if (view != null) {
            o(downUpPointBean, view);
        }
        p(downUpPointBean, false);
    }

    @Override
    public void h() {
        this.f22100h = System.currentTimeMillis();
    }

    @Override
    public void i() {
        if (this.f22098f) {
            this.f22098f = false;
            long jCurrentTimeMillis = ((long) this.f22099g) - ((System.currentTimeMillis() - this.f22100h) / ((long) 1000));
            if (jCurrentTimeMillis <= 0) {
                f().a();
                return;
            }
            this.f22099g = (int) jCurrentTimeMillis;
            TextView textView = (TextView) g().findViewById(R$id.tv_reward_tips);
            if (textView == null) {
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            Locale locale = Locale.getDefault();
            String string = com.cloud.sdk.commonutil.util.e.a().getResources().getString(R$string.hs_download_reward_pull_live);
            Intrinsics.g(string, "getString(...)");
            String str = String.format(locale, string, Arrays.copyOf(new Object[]{Integer.valueOf(this.f22099g)}, 1));
            Intrinsics.g(str, "format(...)");
            textView.setText(str);
        }
    }

    @Override
    public void j() {
        try {
            View viewFindViewById = g().findViewById(R$id.iv_reward_gift);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            ((ImageView) viewFindViewById).setImageResource(R$drawable.ad_reward_time_gift_done);
        } catch (Throwable unused) {
        }
    }

    @Override
    public void k() {
        Unit unit;
        if (!f().getIsLandscape()) {
            a().setContentView(R$layout.activity_rewarded_r02);
            return;
        }
        AdsDTO adBean = f().getAdBean();
        if (adBean != null) {
            if (Intrinsics.c(adBean.getScale(), "9:16")) {
                a().setContentView(R$layout.activity_rewarded_r02_916);
            } else {
                a().setContentView(R$layout.activity_rewarded_r02);
            }
            unit = Unit.f64096a;
        } else {
            unit = null;
        }
        if (unit == null) {
            a().setContentView(R$layout.activity_rewarded_r02);
        }
    }

    @Override
    public void l() {
        Object objM453constructorimpl;
        Object obj;
        Object objM453constructorimpl2;
        if (c7.b.h()) {
            int i10 = this.f22097e;
            if (i10 == 2) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(com.cloud.sdk.commonutil.util.e.a().getString(R$string.hs_reward_claimed_download));
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                }
                obj = Result.m459isFailureimpl(objM453constructorimpl) ? "" : objM453constructorimpl;
                Intrinsics.g(obj, "getOrDefault(...)");
                HSToastUtil.f((String) obj);
                return;
            }
            if (i10 != 3) {
                return;
            }
            try {
                Result.Companion companion3 = Result.INSTANCE;
                objM453constructorimpl2 = Result.m453constructorimpl(com.cloud.sdk.commonutil.util.e.a().getString(R$string.hs_reward_claimed_toast));
            } catch (Throwable th3) {
                Result.Companion companion4 = Result.INSTANCE;
                objM453constructorimpl2 = Result.m453constructorimpl(ResultKt.a(th3));
            }
            obj = Result.m459isFailureimpl(objM453constructorimpl2) ? "" : objM453constructorimpl2;
            Intrinsics.g(obj, "getOrDefault(...)");
            HSToastUtil.f((String) obj);
        }
    }

    public final void o(DownUpPointBean downUpPointBean, View view) {
        Intrinsics.h(view, "view");
        if (downUpPointBean != null) {
            try {
                if (this.f22101i == -1 || this.f22102j == -1) {
                    int[] iArr = new int[2];
                    view.getLocationOnScreen(iArr);
                    this.f22101i = iArr[0];
                    this.f22102j = iArr[1];
                }
                if (this.f22101i == -1 || this.f22102j == -1) {
                    return;
                }
                downUpPointBean.setDownX(downUpPointBean.getDownX() + this.f22101i);
                downUpPointBean.setDownY(downUpPointBean.getDownY() + this.f22102j);
            } catch (Throwable th2) {
                b4.b().w("RewardR02SytleImpl", "calculateLocation error: " + th2.getMessage());
            }
        }
    }

    public final void p(DownUpPointBean downUpPointBean, boolean z10) {
        int i10 = this.f22097e;
        if (i10 != 2) {
            if (i10 != 3) {
                f().b(false, downUpPointBean);
                return;
            } else {
                this.f22098f = true;
                f().b(false, downUpPointBean);
                return;
            }
        }
        if (!this.f22096d && !z10) {
            f().a(downUpPointBean);
            return;
        }
        f().d();
        if (z10) {
            f().a(2);
        } else {
            f().a(1);
        }
        f().b(false, downUpPointBean);
        f().e();
    }
}
