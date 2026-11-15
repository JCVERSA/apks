package com.mbridge.msdk.video.dynview.wrapper;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.MBFrameLayout;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBTextView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeFramLayout;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeTextView;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.video.dynview.widget.MBridgeRelativeLayout;
import com.mbridge.msdk.video.module.MBridgeClickCTAView;
import java.util.Map;

public class b {

    private String f38365a = "mbridge_top_play_bg";

    private String f38366b = "mbridge_top_finger_bg";

    private String f38367c = "mbridge_bottom_play_bg";

    private String f38368d = "mbridge_bottom_finger_bg";

    private String f38369e = "mbridge_tv_count";

    private String f38370f = "mbridge_sound_switch";

    private String f38371g = "mbridge_top_control";

    private String f38372h = "mbridge_tv_title";

    private String f38373i = "mbridge_tv_desc";

    private String f38374j = "mbridge_tv_install";

    private String f38375k = "mbridge_sv_starlevel";

    private String f38376l = "mbridge_sv_heat_count_level";

    private String f38377m = "mbridge_tv_cta";

    private String f38378n = "mbridge_native_ec_controller";

    private String f38379o = "mbridge_reward_shape_choice_rl";

    private String f38380p = "#FFFFFF";

    private String f38381q = "#FF000000";

    private String f38382r = "#40000000";

    private String f38383s = "#CAEF79";

    private String f38384t = "#2196F3";

    private String f38385u = "#402196F3";

    private String f38386v = "#8FC31F";

    private String f38387w = "#03A9F4";

    private String f38388x = "#FF89C120";

    private String f38389y = "#FF2BAE5D";

    private boolean f38390z = false;

    class a implements Animator.AnimatorListener {
        a() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public void a(View view, com.mbridge.msdk.video.dynview.c cVar) {
    }

    public void b(View view, com.mbridge.msdk.video.dynview.c cVar) {
        Context context;
        int iA;
        if (view == null || cVar == null || (context = view.getContext()) == null) {
            return;
        }
        if (cVar.h() == 1) {
            view.setBackground(context.getResources().getDrawable(g0.a(context, this.f38379o, "drawable")));
            TextView textView = (TextView) view.findViewById(b(this.f38372h));
            if (textView != null) {
                textView.setTextColor(Color.parseColor(this.f38381q));
            }
            TextView textView2 = (TextView) view.findViewById(b(this.f38373i));
            if (textView2 != null) {
                textView2.setTextColor(Color.parseColor(this.f38381q));
            }
            iA = t0.a(context, 2.0f);
        } else {
            iA = t0.a(context, 10.0f);
            view.getBackground().setAlpha(100);
        }
        int iA2 = t0.a(context, 8.0f);
        View viewFindViewById = view.findViewById(b(this.f38374j));
        if (viewFindViewById != null) {
            if (cVar.i() != null && (cVar.i() instanceof MBridgeClickCTAView)) {
                ((MBridgeClickCTAView) cVar.i()).setObjectAnimator(new com.mbridge.msdk.video.dynview.ui.b().a(viewFindViewById));
            }
            if (viewFindViewById instanceof TextView) {
                TextView textView3 = (TextView) viewFindViewById;
                textView3.setTextColor(Color.parseColor(this.f38380p));
                textView3.setTextSize(15.0f);
                String str = this.f38386v;
                String str2 = this.f38383s;
                com.mbridge.msdk.video.dynview.util.drawable.a.a(textView3, 1.0f, 5.0f, str2, new String[]{str, str2}, GradientDrawable.Orientation.LEFT_RIGHT);
            }
        }
        if (view.getLayoutParams() == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(iA, iA, iA, iA2);
            layoutParams.height = t0.a(context, 60.0f);
            view.setLayoutParams(layoutParams);
        }
    }

    public void a(View view, Map<String, Object> map) {
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        ImageView imageView4;
        if (view == null || !(view instanceof MBridgeFramLayout)) {
            return;
        }
        MBridgeFramLayout mBridgeFramLayout = (MBridgeFramLayout) view;
        AnimatorSet animatorSet = new AnimatorSet();
        if (view.getContext() != null) {
            if (map != null && map.containsKey("is_dy_success")) {
                this.f38390z = ((Boolean) map.get("is_dy_success")).booleanValue();
            }
            if (this.f38390z) {
                imageView = (ImageView) view.findViewById(a(this.f38365a));
                imageView2 = (ImageView) view.findViewById(a(this.f38366b));
                imageView3 = (ImageView) view.findViewById(a(this.f38367c));
                imageView4 = (ImageView) view.findViewById(a(this.f38368d));
            } else {
                imageView = (ImageView) view.findViewById(b(this.f38365a));
                imageView2 = (ImageView) view.findViewById(b(this.f38366b));
                imageView3 = (ImageView) view.findViewById(b(this.f38367c));
                imageView4 = (ImageView) view.findViewById(b(this.f38368d));
            }
            ObjectAnimator objectAnimatorB = imageView != null ? new com.mbridge.msdk.video.dynview.ui.b().b(imageView) : null;
            ObjectAnimator objectAnimatorC = imageView2 != null ? new com.mbridge.msdk.video.dynview.ui.b().c(imageView2) : null;
            ObjectAnimator objectAnimatorB2 = imageView3 != null ? new com.mbridge.msdk.video.dynview.ui.b().b(imageView3) : null;
            ObjectAnimator objectAnimatorC2 = imageView4 != null ? new com.mbridge.msdk.video.dynview.ui.b().c(imageView4) : null;
            if (objectAnimatorB == null || objectAnimatorB2 == null || objectAnimatorC == null || objectAnimatorC2 == null) {
                return;
            }
            animatorSet.playTogether(objectAnimatorB, objectAnimatorB2, objectAnimatorC, objectAnimatorC2);
            mBridgeFramLayout.setAnimatorSet(animatorSet);
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00fb  */
    public void a(View view, com.mbridge.msdk.video.dynview.c cVar, Map<String, Object> map) {
        TextView textView;
        TextView textView2;
        String str;
        String str2;
        String str3;
        float f10;
        String str4;
        RelativeLayout.LayoutParams layoutParams;
        Context context = view != null ? view.getContext() : null;
        if (context == null || cVar == null) {
            return;
        }
        if (map != null && map.containsKey("is_dy_success")) {
            boolean zBooleanValue = ((Boolean) map.get("is_dy_success")).booleanValue();
            this.f38390z = zBooleanValue;
            if (zBooleanValue) {
                textView = (TextView) view.findViewById(a(this.f38369e));
                textView2 = (TextView) view.findViewById(a("mbridge_reward_click_tv"));
            } else {
                textView = (TextView) view.findViewById(b(this.f38369e));
                textView2 = (TextView) view.findViewById(b("mbridge_reward_click_tv"));
            }
        } else {
            textView = (TextView) view.findViewById(b(this.f38369e));
            textView2 = (TextView) view.findViewById(b("mbridge_reward_click_tv"));
        }
        if (textView != null) {
            textView.setBackgroundResource(g0.a(context, "mbridge_reward_shape_progress", "drawable"));
            textView.setTextColor(Color.parseColor(this.f38380p));
            textView.setTextSize(11.0f);
        }
        if (textView2 != null) {
            textView2.setTextSize(20.0f);
            if (textView2 instanceof MBridgeTextView) {
                ((MBridgeTextView) textView2).setObjectAnimator(new com.mbridge.msdk.video.dynview.ui.b().a(textView2));
            }
            if (textView2 instanceof MBTextView) {
                ((MBTextView) textView2).setAnimator(new com.mbridge.msdk.video.dynview.ui.b().a(textView2));
            }
        }
        String str5 = this.f38381q;
        String str6 = this.f38383s;
        int iL = cVar.l();
        float f11 = 10.0f;
        if (iL == 302) {
            str = this.f38384t;
            str2 = this.f38387w;
            str5 = this.f38380p;
            str6 = this.f38385u;
        } else {
            if (iL == 802) {
                String str7 = this.f38380p;
                str5 = this.f38381q;
                f11 = 25.0f;
                str3 = this.f38382r;
                str4 = str7;
                f10 = 0.5f;
                str2 = str4;
            } else if (iL != 5002010) {
                str = this.f38386v;
                str2 = this.f38383s;
                f11 = 5.0f;
            } else {
                String str8 = this.f38386v;
                str5 = this.f38380p;
                str4 = str8;
                str2 = str4;
                f10 = 1.0f;
                str3 = str2;
            }
            if (textView2 != null) {
                textView2.setTextColor(Color.parseColor(str5));
                com.mbridge.msdk.video.dynview.util.drawable.a.a(textView2, f10, f11, str3, new String[]{str4, str2}, GradientDrawable.Orientation.LEFT_RIGHT);
            }
            if (cVar.i() != null && (layoutParams = (RelativeLayout.LayoutParams) cVar.i().getLayoutParams()) != null) {
                layoutParams.setMargins(0, 0, 0, 0);
                cVar.i().setLayoutParams(layoutParams);
            }
            a(view);
        }
        str3 = str6;
        str4 = str;
        f10 = 1.0f;
        if (textView2 != null) {
            textView2.setTextColor(Color.parseColor(str5));
            com.mbridge.msdk.video.dynview.util.drawable.a.a(textView2, f10, f11, str3, new String[]{str4, str2}, GradientDrawable.Orientation.LEFT_RIGHT);
        }
        if (cVar.i() != null) {
            layoutParams.setMargins(0, 0, 0, 0);
            cVar.i().setLayoutParams(layoutParams);
        }
        a(view);
    }

    public void b(View view, com.mbridge.msdk.video.dynview.c cVar, Map<String, Object> map) {
        LinearLayout linearLayout;
        View viewFindViewById;
        if (view == null || cVar == null) {
            return;
        }
        Context context = view.getContext();
        if (context != null) {
            if (map != null && map.containsKey("is_dy_success")) {
                this.f38390z = ((Boolean) map.get("is_dy_success")).booleanValue();
            }
            if (this.f38390z) {
                linearLayout = (LinearLayout) view.findViewById(a(this.f38375k));
                viewFindViewById = view.findViewById(a(this.f38377m));
            } else {
                linearLayout = (LinearLayout) view.findViewById(b(this.f38375k));
                viewFindViewById = view.findViewById(b(this.f38377m));
            }
            View view2 = viewFindViewById;
            if (linearLayout != null && (linearLayout instanceof MBridgeLevelLayoutView)) {
                if (cVar.h() == 1) {
                    linearLayout.setOrientation(1);
                } else {
                    linearLayout.setOrientation(0);
                }
            }
            if (linearLayout != null && (linearLayout instanceof MBStarLevelLayoutView)) {
                linearLayout.setOrientation(0);
            }
            a(context, view, cVar);
            if (view2 != null) {
                if (view2 instanceof TextView) {
                    TextView textView = (TextView) view2;
                    textView.setTextColor(Color.parseColor(this.f38380p));
                    textView.setTextSize(22.0f);
                    com.mbridge.msdk.video.dynview.util.drawable.a.a(view2, 1.0f, cVar.l() == 1302 ? 25 : 5, this.f38383s, new String[]{this.f38388x, this.f38389y}, GradientDrawable.Orientation.LEFT_RIGHT);
                }
                try {
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(new com.mbridge.msdk.video.dynview.ui.b().a(view2));
                    animatorSet.addListener(new a());
                    if (view instanceof MBFrameLayout) {
                        ((MBFrameLayout) view).setAnimator(animatorSet);
                    }
                    if (view instanceof MBridgeFramLayout) {
                        ((MBridgeFramLayout) view).setAnimatorSet(animatorSet);
                    }
                    if (view instanceof MBridgeRelativeLayout) {
                        ((MBridgeRelativeLayout) view).setAnimatorSet(animatorSet);
                    }
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        e10.printStackTrace();
                    }
                }
            }
        }
        new com.mbridge.msdk.video.dynview.ui.b().a(view, 500L);
    }

    public int b(String str) {
        return g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "id");
    }

    private void a(View view) {
        RelativeLayout relativeLayout;
        if (this.f38390z) {
            relativeLayout = (RelativeLayout) view.findViewById(a(this.f38371g));
        } else {
            relativeLayout = (RelativeLayout) view.findViewById(b(this.f38371g));
        }
        if (relativeLayout != null) {
            if (com.mbridge.msdk.video.dynview.constant.a.f38172a == 0 && com.mbridge.msdk.video.dynview.constant.a.f38173b == 0 && com.mbridge.msdk.video.dynview.constant.a.f38174c == 0 && com.mbridge.msdk.video.dynview.constant.a.f38175d == 0) {
                return;
            }
            relativeLayout.setVisibility(4);
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
            alphaAnimation.setDuration(200L);
            relativeLayout.startAnimation(alphaAnimation);
            relativeLayout.setVisibility(0);
        }
    }

    private void a(Context context, View view, com.mbridge.msdk.video.dynview.c cVar) {
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(b(this.f38378n));
        if (relativeLayout != null) {
            if (relativeLayout.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.setMargins(layoutParams.leftMargin + com.mbridge.msdk.video.dynview.constant.a.f38172a, layoutParams.topMargin + com.mbridge.msdk.video.dynview.constant.a.f38174c, layoutParams.rightMargin + com.mbridge.msdk.video.dynview.constant.a.f38173b, layoutParams.bottomMargin + com.mbridge.msdk.video.dynview.constant.a.f38175d);
                relativeLayout.setLayoutParams(layoutParams);
            }
            if (relativeLayout.getLayoutParams() instanceof FrameLayout.LayoutParams) {
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams2.setMargins(layoutParams2.leftMargin + com.mbridge.msdk.video.dynview.constant.a.f38172a, layoutParams2.topMargin + com.mbridge.msdk.video.dynview.constant.a.f38174c, layoutParams2.rightMargin + com.mbridge.msdk.video.dynview.constant.a.f38173b, layoutParams2.bottomMargin + com.mbridge.msdk.video.dynview.constant.a.f38175d);
                relativeLayout.setLayoutParams(layoutParams2);
            }
        }
    }

    public int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return str.hashCode();
    }
}
