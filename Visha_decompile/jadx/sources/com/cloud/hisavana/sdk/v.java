package com.cloud.hisavana.sdk;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSChronometer;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.hisavana.sdk.v;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import defpackage.hz9;
import defpackage.ikd;
import defpackage.mrd;
import defpackage.r6;
import defpackage.ul4;
import defpackage.y45;
import defpackage.yt4;
import defpackage.zfb;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Result;

public final class v extends yt4 {
    public boolean d;
    public int e;
    public boolean f;
    public int g;
    public long h;
    public int i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(Activity activity, View view, mrd mrdVar) {
        super(activity, view, mrdVar);
        y45.j(activity, "activity");
        y45.j(view, "rootView");
        y45.j(mrdVar, "helper");
        this.i = -1;
        this.j = -1;
    }

    public static final void n(v vVar, View view) {
        y45.j(vVar, "this$0");
        vVar.p(null, true);
    }

    @Override
    public void b(ImageView imageView, float f) {
        if (imageView != null) {
            imageView.setImageResource(0.0f == f ? R.drawable.hisavana_volume_close : R.drawable.hisavana_volume_open);
        }
    }

    @Override
    public void c(HSChronometer hSChronometer) {
        if (hSChronometer != null) {
            hSChronometer.setTickStringFormat(hSChronometer.getResources().getString(R.string.reward_before_tip_r02));
            hSChronometer.setFinishedString(hSChronometer.getResources().getString(R.string.reward_after_tip_r02));
        }
    }

    @Override
    public void d(AdsDTO adsDTO) {
        HSCommonUtils hSCommonUtils = HSCommonUtils.a;
        this.e = hSCommonUtils.e(adsDTO);
        this.d = hSCommonUtils.d(adsDTO);
        q(adsDTO);
        f().b();
    }

    @Override
    public void e(boolean z, DownUpPointBean downUpPointBean, View view) {
        if (view != null) {
            o(downUpPointBean, view);
        }
        p(downUpPointBean, false);
    }

    @Override
    public void h() {
        this.h = System.currentTimeMillis();
    }

    @Override
    public void i() {
        if (this.f) {
            this.f = false;
            long jCurrentTimeMillis = ((long) this.g) - ((System.currentTimeMillis() - this.h) / ((long) 1000));
            if (jCurrentTimeMillis <= 0) {
                f().a();
                return;
            }
            this.g = (int) jCurrentTimeMillis;
            TextView textView = (TextView) g().findViewById(R.id.tv_reward_tips);
            if (textView == null) {
                return;
            }
            hz9 hz9Var = hz9.a;
            Locale locale = Locale.getDefault();
            String string = ul4.a().getResources().getString(R.string.hs_download_reward_pull_live);
            y45.i(string, "getString(...)");
            String str = String.format(locale, string, Arrays.copyOf(new Object[]{Integer.valueOf(this.g)}, 1));
            y45.i(str, "format(...)");
            textView.setText(str);
        }
    }

    @Override
    public void j() {
        try {
            View viewFindViewById = g().findViewById(R.id.iv_reward_gift);
            y45.i(viewFindViewById, "findViewById(...)");
            ((ImageView) viewFindViewById).setImageResource(R.drawable.ad_reward_time_gift_done);
        } catch (Throwable unused) {
        }
    }

    @Override
    public void k() {
        zfb zfbVar;
        if (!f().getIsLandscape()) {
            a().setContentView(R.layout.activity_rewarded_r02);
            return;
        }
        AdsDTO adsDTOF = f().getAdBean();
        if (adsDTOF != null) {
            if (y45.e(adsDTOF.getScale(), "9:16")) {
                a().setContentView(R.layout.activity_rewarded_r02_916);
            } else {
                a().setContentView(R.layout.activity_rewarded_r02);
            }
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            a().setContentView(R.layout.activity_rewarded_r02);
        }
    }

    @Override
    public void l() {
        Object objM279constructorimpl;
        Object obj;
        Object objM279constructorimpl2;
        if (r6.j()) {
            int i = this.e;
            if (i == 2) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM279constructorimpl = Result.m279constructorimpl(ul4.a().getString(R.string.hs_reward_claimed_download));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
                }
                obj = Result.m285isFailureimpl(objM279constructorimpl) ? "" : objM279constructorimpl;
                y45.i(obj, "getOrDefault(...)");
                HSToastUtil.f((String) obj);
                return;
            }
            if (i != 3) {
                return;
            }
            try {
                Result.Companion companion3 = Result.INSTANCE;
                objM279constructorimpl2 = Result.m279constructorimpl(ul4.a().getString(R.string.hs_reward_claimed_toast));
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                objM279constructorimpl2 = Result.m279constructorimpl(kotlin.c.a(th2));
            }
            obj = Result.m285isFailureimpl(objM279constructorimpl2) ? "" : objM279constructorimpl2;
            y45.i(obj, "getOrDefault(...)");
            HSToastUtil.f((String) obj);
        }
    }

    public final void o(DownUpPointBean downUpPointBean, View view) {
        y45.j(view, "view");
        if (downUpPointBean != null) {
            try {
                if (this.i == -1 || this.j == -1) {
                    int[] iArr = new int[2];
                    view.getLocationOnScreen(iArr);
                    this.i = iArr[0];
                    this.j = iArr[1];
                }
                if (this.i == -1 || this.j == -1) {
                    return;
                }
                downUpPointBean.setDownX(downUpPointBean.getDownX() + this.i);
                downUpPointBean.setDownY(downUpPointBean.getDownY() + this.j);
            } catch (Throwable th) {
                ikd.b().w("RewardR02SytleImpl", "calculateLocation error: " + th.getMessage());
            }
        }
    }

    public final void p(DownUpPointBean downUpPointBean, boolean z) {
        int i = this.e;
        if (i != 2) {
            if (i != 3) {
                f().b(false, downUpPointBean);
                return;
            } else {
                this.f = true;
                f().b(false, downUpPointBean);
                return;
            }
        }
        if (!this.d && !z) {
            f().a(downUpPointBean);
            return;
        }
        f().d();
        if (z) {
            f().a(2);
        } else {
            f().a(1);
        }
        f().b(false, downUpPointBean);
        f().e();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0021  */
    public final void q(AdsDTO adsDTO) {
        String buttonTxt;
        StoreMarkView storeMarkView;
        NativeBean nativeObject;
        PslinkInfo pslinkInfo;
        NativeBean nativeObject2;
        AdsProtocolBean.Ext ext;
        NativeBean nativeObject3;
        try {
            TextView textView = (TextView) g().findViewById(R.id.ad_btn);
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
            int iIntValue = 0;
            if (textView != null) {
                CharSequence text = textView.getText();
                textView.setVisibility((text == null || text.length() <= 0) ? 8 : 0);
            }
            TextView textView2 = (TextView) g().findViewById(R.id.tv_reward_tips);
            ImageView imageView = (ImageView) g().findViewById(R.id.iv_download_app_score);
            TextView textView3 = (TextView) g().findViewById(R.id.ad_description);
            ConstraintLayout constraintLayout = (ConstraintLayout) g().findViewById(R.id.ad_float_container);
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        v.n(this.b, view);
                    }
                });
            }
            try {
                storeMarkView = (StoreMarkView) g().findViewById(R.id.ps_mark_view);
            } catch (Throwable unused) {
                storeMarkView = null;
            }
            int i = this.e;
            if (i == 2) {
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
                if (textView3 != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(HSCommonUtils.a.j((adsDTO == null || (pslinkInfo = adsDTO.getPslinkInfo()) == null) ? null : pslinkInfo.getSourceSize()));
                    sb.append(" · ");
                    if (adsDTO != null && (nativeObject = adsDTO.getNativeObject()) != null) {
                        descriptionTxt = nativeObject.getDescriptionTxt();
                    }
                    sb.append(descriptionTxt);
                    textView3.setText(sb.toString());
                }
                if (textView2 == null) {
                    return;
                }
                textView2.setText(ul4.a().getResources().getString(R.string.hs_download_reward_pull_new));
                return;
            }
            if (i != 3) {
                if (imageView != null) {
                    imageView.setVisibility(0);
                }
                if (textView3 != null) {
                    StringBuilder sb2 = new StringBuilder();
                    w.a aVar = w.a;
                    sb2.append(aVar.b(aVar.j(adsDTO)));
                    sb2.append(" · ");
                    if (adsDTO != null && (nativeObject3 = adsDTO.getNativeObject()) != null) {
                        descriptionTxt2 = nativeObject3.getDescriptionTxt();
                    }
                    sb2.append(descriptionTxt2);
                    textView3.setText(sb2.toString());
                }
                if (textView2 == null) {
                    return;
                }
                textView2.setText(ul4.a().getResources().getString(R.string.hs_download_reward_pull_new));
                return;
            }
            if (storeMarkView != null) {
                storeMarkView.setVisibility(8);
            }
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            if (!f().getIsLandscape()) {
                ConstraintSet constraintSet = new ConstraintSet();
                constraintSet.clone(constraintLayout);
                int i2 = R.id.ad_btn;
                constraintSet.clear(i2, 4);
                constraintSet.connect(i2, 4, R.id.iv_reward_download_bg, 4);
                constraintSet.setVerticalBias(i2, 0.5f);
                constraintSet.setMargin(i2, 3, 0);
                constraintSet.applyTo(constraintLayout);
            }
            if (textView3 != null) {
                StringBuilder sb3 = new StringBuilder();
                w.a aVar2 = w.a;
                sb3.append(aVar2.b(aVar2.j(adsDTO)));
                sb3.append(" · ");
                sb3.append((adsDTO == null || (nativeObject2 = adsDTO.getNativeObject()) == null) ? null : nativeObject2.getDescriptionTxt());
                textView3.setText(sb3.toString());
            }
            if (adsDTO != null && (ext = adsDTO.getExt()) != null) {
                dwellTime = ext.getDwellTime();
            }
            if (dwellTime != null) {
                iIntValue = dwellTime.intValue();
            }
            this.g = iIntValue;
            if (iIntValue <= 0) {
                if (textView2 == null) {
                    return;
                }
                textView2.setText(ul4.a().getResources().getString(R.string.hs_download_reward_pull_live_no_time));
            } else {
                if (textView2 == null) {
                    return;
                }
                hz9 hz9Var = hz9.a;
                Locale locale = Locale.getDefault();
                String string = ul4.a().getResources().getString(R.string.hs_download_reward_pull_live);
                y45.i(string, "getString(...)");
                String str = String.format(locale, string, Arrays.copyOf(new Object[]{Integer.valueOf(this.g)}, 1));
                y45.i(str, "format(...)");
                textView2.setText(str);
            }
        } catch (Throwable unused2) {
        }
    }
}
