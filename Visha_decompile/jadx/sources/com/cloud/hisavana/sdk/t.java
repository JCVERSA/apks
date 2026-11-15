package com.cloud.hisavana.sdk;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSChronometer;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.hisavana.sdk.t;
import defpackage.mrd;
import defpackage.y45;
import defpackage.yt4;
import defpackage.zfb;

public final class t extends yt4 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(Activity activity, View view, mrd mrdVar) {
        super(activity, view, mrdVar);
        y45.j(activity, "activity");
        y45.j(view, "rootView");
        y45.j(mrdVar, "helper");
    }

    public static final void o(t tVar, View view) {
        y45.j(tVar, "this$0");
        try {
            tVar.f().a(2);
            tVar.f().b(false, null);
        } catch (Throwable unused) {
        }
    }

    public static final void p(t tVar, View view) {
        y45.j(tVar, "this$0");
        mrd mrdVarF = tVar.f();
        if (mrdVarF != null) {
            mrdVarF.b(false, null);
        }
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
            hSChronometer.setTickStringFormat(hSChronometer.getResources().getString(R.string.reward_before_tip));
            hSChronometer.setFinishedString(hSChronometer.getResources().getString(R.string.reward_after_tip));
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0040  */
    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:19:0x0054  */
    /* JADX WARN: Code duplicated, block: B:22:0x006b  */
    /* JADX WARN: Instruction removed from duplicated block: B:19:0x0054, please report this as an issue */
    @Override
    public void d(AdsDTO adsDTO) {
        String descriptionTxt;
        NativeBean nativeObject;
        TextView textView = (TextView) g().findViewById(R.id.ad_description);
        TextView textView2 = (TextView) g().findViewById(R.id.source_size);
        String strM = HSCommonUtils.a.m(adsDTO);
        String buttonTxt = null;
        if (f().getIsLandscape()) {
            if (!y45.e(adsDTO != null ? adsDTO.getScale() : null, "9:16")) {
                if (adsDTO != null) {
                    descriptionTxt = null;
                } else {
                    descriptionTxt = null;
                }
                if (!TextUtils.isEmpty(strM)) {
                    descriptionTxt = strM + " · " + descriptionTxt;
                }
                if (textView != null) {
                    textView.setText(descriptionTxt);
                }
            } else if (textView2 != null) {
                textView2.setText(strM);
            }
        } else {
            if (adsDTO != null || (nativeObject = adsDTO.getNativeObject()) == null) {
                descriptionTxt = null;
            } else {
                descriptionTxt = nativeObject.getDescriptionTxt();
            }
            if (!TextUtils.isEmpty(strM)) {
                descriptionTxt = strM + " · " + descriptionTxt;
            }
            if (textView != null) {
                textView.setText(descriptionTxt);
            }
        }
        TextView textView3 = (TextView) g().findViewById(R.id.ad_btn);
        if (textView3 != null) {
            if (adsDTO != null) {
                int installApk = adsDTO.getInstallApk();
                NativeBean nativeObject2 = adsDTO.getNativeObject();
                if (nativeObject2 != null) {
                    buttonTxt = nativeObject2.getButtonTxt(installApk);
                }
            }
            textView3.setText(buttonTxt);
        }
        if (textView3 != null) {
            CharSequence text = textView3.getText();
            textView3.setVisibility((text == null || text.length() <= 0) ? 8 : 0);
        }
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    t.o(this.b, view);
                }
            });
        }
        View viewFindViewById = g().findViewById(R.id.ad_float_container);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    t.p(this.b, view);
                }
            });
        }
    }

    @Override
    public void e(boolean z, DownUpPointBean downUpPointBean, View view) {
        f().a(1);
        f().b(z, downUpPointBean);
    }

    @Override
    public void h() {
    }

    @Override
    public void i() {
    }

    @Override
    public void j() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0076, code lost:
    
        if (r1.length() > 0) goto L26;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void k() {
        zfb zfbVar;
        if (!f().getIsLandscape()) {
            a().setContentView(R.layout.activity_rewarded_r01);
            return;
        }
        AdsDTO adsDTOF = f().getAdBean();
        if (adsDTOF != null) {
            String scale = adsDTOF.getScale();
            if (scale == null || scale.length() == 0) {
                a().setContentView(R.layout.activity_rewarded_r01);
                return;
            }
            int installApk = adsDTOF.getInstallApk();
            NativeBean nativeObject = adsDTOF.getNativeObject();
            if (nativeObject != null) {
                y45.g(nativeObject);
                String logoUrl = nativeObject.getLogoUrl();
                y45.i(logoUrl, "getLogoUrl(...)");
                if (logoUrl.length() <= 0) {
                    String titleTxt = nativeObject.getTitleTxt();
                    y45.i(titleTxt, "getTitleTxt(...)");
                    if (titleTxt.length() <= 0) {
                        String descriptionTxt = nativeObject.getDescriptionTxt();
                        y45.i(descriptionTxt, "getDescriptionTxt(...)");
                        if (descriptionTxt.length() <= 0) {
                            String buttonTxt = nativeObject.getButtonTxt(installApk);
                            y45.i(buttonTxt, "getButtonTxt(...)");
                        }
                    }
                }
                if (y45.e(adsDTOF.getScale(), "9:16")) {
                    f().a(true);
                    a().setContentView(R.layout.activity_rewarded_r01_916);
                } else {
                    a().setContentView(R.layout.activity_rewarded_r01);
                }
                zfbVar = zfb.a;
            }
            a().setContentView(R.layout.activity_rewarded_r01_expose);
            return;
        }
        zfbVar = null;
        if (zfbVar == null) {
            a().setContentView(R.layout.activity_rewarded_r01);
        }
    }

    @Override
    public void l() {
    }
}
