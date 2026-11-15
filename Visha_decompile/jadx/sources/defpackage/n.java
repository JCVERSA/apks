package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.tencent.mmkv.MMKV;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.subtitle.widgets.AISubtitleVideoView;
import com.transsion.magicvideo.widgets.AISubtitleLottieAnimationView;
import com.transsion.magicvideo.widgets.VideoPlayerContentView;
import com.transsion.playercommon.subtitle.model.AILaunageConfig;

public abstract class n {
    public static Boolean a;
    public static Boolean b;
    public static int c;
    public static String d;
    public static String e;
    public static String f;
    public static String g;

    public class a implements e74 {
        public final ImageView b;
        public final AISubtitleVideoView c;

        public a(ImageView imageView, AISubtitleVideoView aISubtitleVideoView) {
            this.b = imageView;
            this.c = aISubtitleVideoView;
        }

        @Override
        public zfb invoke(Boolean bool) {
            if (!bool.booleanValue()) {
                return null;
            }
            n.x(this.b, true);
            this.c.switchToAI(true);
            AISubtitleVideoView aISubtitleVideoView = this.c;
            aISubtitleVideoView.onAISubtitleTextCallback(aISubtitleVideoView.getContext().getString(R.string.visha_ai_speech_rcognizing), false);
            return null;
        }
    }

    public class b extends gf7 {
        public final Switch e;

        public b(Switch r1) {
            this.e = r1;
        }

        @Override
        public void a(View view) {
            Switch r0 = this.e;
            if (r0 != null) {
                r0.setChecked(!r0.isChecked());
            }
        }
    }

    public class c implements View.OnClickListener {
        public final View.OnClickListener b;

        public c(View.OnClickListener onClickListener) {
            this.b = onClickListener;
        }

        @Override
        public void onClick(View view) {
            View.OnClickListener onClickListener = this.b;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    public class d implements View.OnClickListener {
        public final View.OnClickListener b;

        public d(View.OnClickListener onClickListener) {
            this.b = onClickListener;
        }

        @Override
        public void onClick(View view) {
            View.OnClickListener onClickListener = this.b;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    static {
        Boolean bool = Boolean.FALSE;
        a = bool;
        b = bool;
        c = 0;
        d = "en";
        e = "none";
        f = "en";
        g = "none";
    }

    public static void c(View view, View view2, View view3, boolean z, VideoPlayerContentView videoPlayerContentView, LinearLayout linearLayout) {
        View viewFindViewById = view.findViewById(R.id.view_split);
        View viewFindViewById2 = view.findViewById(R.id.view_split_bottom);
        if (z) {
            view2.setVisibility(8);
            view3.setVisibility(0);
            d(view);
            viewFindViewById.setVisibility(0);
            viewFindViewById2.setVisibility(8);
            return;
        }
        view2.setVisibility(0);
        view3.setVisibility(8);
        View viewFindViewById3 = view.findViewById(R.id.track_one);
        View viewFindViewById4 = view.findViewById(R.id.track_two);
        viewFindViewById.setVisibility(8);
        viewFindViewById2.setVisibility(0);
        videoPlayerContentView.updateTracksView(viewFindViewById3, viewFindViewById4, view2, linearLayout);
    }

    public static void d(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ll_subtitle);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.ll_track_delay);
        linearLayout.setVisibility(8);
        linearLayout2.setVisibility(8);
    }

    public static void e(View view, LinearLayout linearLayout, boolean z, Context context) {
        TextView textView = (TextView) view.findViewById(R.id.tv_custom);
        TextView textView2 = (TextView) view.findViewById(R.id.tv_download);
        TextView textView3 = (TextView) view.findViewById(R.id.tv_title);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.ll_ai_language_from);
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.ll_ai_language_to);
        if (z) {
            int i = R.color.ai_setting_grey;
            textView.setTextColor(context.getColor(i));
            textView2.setTextColor(context.getColor(i));
            textView3.setTextColor(context.getColor(i));
            linearLayout2.setVisibility(0);
            linearLayout3.setVisibility(0);
            linearLayout.setVisibility(8);
            return;
        }
        int i2 = R.color.ai_setting_custom;
        textView.setTextColor(context.getColor(i2));
        textView2.setTextColor(context.getColor(i2));
        textView3.setTextColor(context.getColor(i2));
        linearLayout2.setVisibility(8);
        linearLayout3.setVisibility(8);
        linearLayout.setVisibility(0);
    }

    public static void f(AISubtitleVideoView aISubtitleVideoView, ImageView imageView, boolean z) {
        aISubtitleVideoView.switchToAI(false);
        aISubtitleVideoView.clearAISubtitleText();
        s();
        if (!z) {
            j(imageView, aISubtitleVideoView, a.booleanValue(), b.booleanValue());
        } else {
            i(imageView, aISubtitleVideoView);
            r(false);
        }
    }

    public static void g(ImageView imageView, final AISubtitleVideoView aISubtitleVideoView) {
        if (!w.j()) {
            w5a.b().g(new a(imageView, aISubtitleVideoView), new hw4() {
                @Override
                public final void a(String str) {
                    aISubtitleVideoView.onAISubtitleTextCallback(str, true);
                }
            });
            return;
        }
        r(false);
        x(imageView, true);
        aISubtitleVideoView.switchToAI(true);
        aISubtitleVideoView.onAISubtitleTextCallback(aISubtitleVideoView.getContext().getString(R.string.visha_ai_speech_rcognizing), false);
    }

    public static void h(boolean z, String str, AISubtitleVideoView aISubtitleVideoView, boolean z2) {
        u(z2, z, str);
        if (z) {
            aISubtitleVideoView.setCheckedLanguageFrom(str, z2);
        } else {
            aISubtitleVideoView.setCheckedLanguageTo(str, z2, true);
        }
    }

    public static void i(ImageView imageView, AISubtitleVideoView aISubtitleVideoView) {
        Log.d("AIPlayerContentViewManager", "handleLocalSubtitleStart");
        aISubtitleVideoView.switchToAI(false);
        x(imageView, true);
    }

    public static void j(ImageView imageView, AISubtitleVideoView aISubtitleVideoView, boolean z, boolean z2) {
        Log.d("AIPlayerContentViewManager", "handleLocalSubtitleStop subtitleIsOn:" + z + ",aiSubtitleIsOn:" + z2);
        x(imageView, z);
    }

    public static void k(AISubtitleVideoView aISubtitleVideoView, AISubtitleLottieAnimationView aISubtitleLottieAnimationView, boolean z) {
        w(z, false);
        if (b.booleanValue() && !z) {
            f(aISubtitleVideoView, aISubtitleLottieAnimationView, false);
        } else if (!z) {
            aISubtitleVideoView.clearLocalSubtitleText();
        }
        b = a;
        MMKV.p().y("all_subtitke_off_on", a.booleanValue());
        MMKV.p().y("ai_subtitke_off_on", b.booleanValue());
        if (aISubtitleVideoView != null && c < 3 && a.booleanValue()) {
            c++;
            MMKV.p().t("subtitle_off_on_timer", c);
            aISubtitleVideoView.setShowSetting();
        }
        if (b.booleanValue()) {
            g(aISubtitleLottieAnimationView, aISubtitleVideoView);
        } else {
            j(aISubtitleLottieAnimationView, aISubtitleVideoView, a.booleanValue(), b.booleanValue());
        }
        if (aISubtitleLottieAnimationView != null) {
            aISubtitleLottieAnimationView.playAnimation();
        }
    }

    public static void l(final View view, final View view2, final View view3, final Switch r17, final Context context, final AISubtitleVideoView aISubtitleVideoView, final ImageView imageView, final Boolean bool, final VideoPlayerContentView videoPlayerContentView, final LinearLayout linearLayout, final LinearLayout linearLayout2) {
        if (view == null) {
            return;
        }
        if (r17 != null) {
            Log.e("AIPlayerContentViewManager", "initAISubtitleForSettingDialog " + b);
            r17.setChecked(b.booleanValue());
            e(view, linearLayout, r17.isChecked(), context);
            c(view, view2, view3, r17.isChecked(), videoPlayerContentView, linearLayout);
        }
        linearLayout2.setOnClickListener(new b(r17));
        if (r17 != null) {
            r17.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    n.t(view, view2, view3, r17, context, aISubtitleVideoView, imageView, bool, videoPlayerContentView, linearLayout, linearLayout2);
                }
            });
        }
    }

    public static void m(View view, View.OnClickListener onClickListener) {
        ((LinearLayout) view.findViewById(R.id.ll_local_language_from)).setOnClickListener(new c(onClickListener));
        ((TextView) view.findViewById(R.id.tv_local_from_language)).setText(j0.b(view.getContext(), f));
        ((LinearLayout) view.findViewById(R.id.ll_local_language_to)).setOnClickListener(new d(onClickListener));
        ((TextView) view.findViewById(R.id.tv_local_to_language)).setText(j0.b(view.getContext(), g));
    }

    public static void n() {
        d = MMKV.p().m("ai_from_language", "en");
        e = MMKV.p().m("ai_to_language", j0.c());
        f = MMKV.p().m("local_subtitle_language_from", "en");
        b = Boolean.valueOf(MMKV.p().d("ai_subtitke_off_on"));
        boolean zD = MMKV.p().d("all_subtitke_off_on");
        c = MMKV.p().f("subtitle_off_on_timer");
        w(zD, true);
        Log.d("AIPlayerContentViewManager", "initSubtitleDefault subtitleIsOn:" + zD + ",aISubtitleOn:" + b + ",fromLangCode:" + d + ",toLangCode:" + e + ",localFromLangCode:" + f + ",localToLangCode:" + g);
    }

    public static void q(String str) {
        Log.i("AIPlayerContentViewManager", "setToLocalTranslateLanguageCode " + str);
        g = str;
    }

    public static void r(boolean z) {
        Log.i("AIPlayerContentViewManager", "startAISubtitle forceStart:" + z + ",mAISubtitleOn:" + b);
        String str = b.booleanValue() ? d : f;
        AILaunageConfig aILaunageConfig = new AILaunageConfig(str, j0.a(str, b.booleanValue() ? e : g));
        if (z) {
            w5a.b().b(aILaunageConfig, b.booleanValue());
        } else {
            w5a.b().i(aILaunageConfig, b.booleanValue());
        }
    }

    public static void s() {
        w5a.b().stop();
    }

    public static void t(View view, View view2, View view3, Switch r13, Context context, AISubtitleVideoView aISubtitleVideoView, ImageView imageView, Boolean bool, VideoPlayerContentView videoPlayerContentView, LinearLayout linearLayout, LinearLayout linearLayout2) {
        if (r13.isChecked() && w5a.a().isEmpty()) {
            videoPlayerContentView.showDownloadLanguagePackPromptDialog();
            r13.setChecked(false);
            return;
        }
        b = Boolean.valueOf(r13.isChecked());
        videoPlayerContentView.reLoadCurSubtitleDataForAIState();
        c(view, view2, view3, b.booleanValue(), videoPlayerContentView, linearLayout);
        MMKV.p().y("ai_subtitke_off_on", b.booleanValue());
        if (b.booleanValue()) {
            w(true, false);
            videoPlayerContentView.updateSubtitleVisibility();
            MMKV.p().y("all_subtitke_off_on", b.booleanValue());
            g(imageView, aISubtitleVideoView);
        } else {
            f(aISubtitleVideoView, imageView, bool.booleanValue());
        }
        e(view, linearLayout, b.booleanValue(), context);
        ny5.e(b.booleanValue(), "vd_video_aisub_realtime_switch");
    }

    public static void u(boolean z, boolean z2, String str) {
        if (z2) {
            if (z) {
                d = str;
                return;
            } else {
                f = str;
                return;
            }
        }
        if (z) {
            e = str;
        } else {
            g = str;
        }
    }

    public static void v() {
        if (w.j()) {
            w5a.d(new AILaunageConfig(f, g), false);
        }
    }

    public static void w(boolean z, boolean z2) {
        if ((a.booleanValue() == z && !z2) || !w.j()) {
            a = Boolean.valueOf(z);
            return;
        }
        a = Boolean.valueOf(z);
        if (z) {
            r(true);
        } else {
            s();
        }
    }

    public static void x(ImageView imageView, boolean z) {
        Log.d("AIPlayerContentViewManager", "handleSubtitleSwitchState " + z);
        if (imageView != null) {
            imageView.setImageResource(z ? R.drawable.ic_ai_on : R.drawable.ic_ai_off);
        }
    }
}
