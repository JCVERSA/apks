package com.transsion.magicvideo.subtitle.widgets;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.avery.subtitle.widget.SubtitleTextView;
import com.blankj.utilcode.util.ThreadUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.magicvideo.R;
import com.transsion.playercommon.subtitle.model.AILaunageConfig;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.popup.ISelectCallback;
import com.transsion.widgetslib.widget.OSIconTextView;
import defpackage.av3;
import defpackage.gw4;
import defpackage.j;
import defpackage.j0;
import defpackage.k;
import defpackage.n;
import defpackage.ny5;
import defpackage.w;
import defpackage.w5a;
import defpackage.woc;
import defpackage.zt4;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AISubtitleVideoView extends SubtitleVideoView implements View.OnClickListener, SubtitleTextView.a {
    public static final boolean DYNAMICALLY_ADJUST_HEIGHT = true;
    public TextView C;
    public TextView D;
    public TextView E;
    public TextView F;
    public OSIconTextView G;
    public LinearLayout H;
    public RelativeLayout I;
    public LinearLayout J;
    public ViewStub K;
    public ViewStub L;
    public View M;
    public SubtitleTextScrollView N;
    public k O;
    public String P;
    public String Q;
    public boolean R;
    public boolean S;
    public boolean T;
    public GradientDrawable U;
    public int V;
    public float W;
    public int a0;
    public int b0;
    public int c0;
    public int d0;
    public List e0;
    public zt4 f0;
    public Runnable g0;
    public d mAISubtitleViewOperateCallBack;

    public class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            AISubtitleVideoView.this.N.fullScroll(130);
        }
    }

    public class b implements ISelectCallback {
        public final boolean a;

        public b(boolean z) {
            this.a = z;
        }

        @Override
        public void selectCallback(gw4 gw4Var) {
            n.u(AISubtitleVideoView.this.R, this.a, gw4Var.displayText());
            if (this.a) {
                AISubtitleVideoView.this.setCheckedLanguageFrom(gw4Var.displayText(), AISubtitleVideoView.this.R);
                ny5.f(gw4Var.displayText(), "playpage", AISubtitleVideoView.this.R ? "vd_video_aisub_sourlang_switch" : "vd_video_losub_tran_lang_select");
            } else {
                AISubtitleVideoView.this.setCheckedLanguageTo(gw4Var.displayText(), AISubtitleVideoView.this.R, true);
                ny5.f(gw4Var.displayText(), "playpage", AISubtitleVideoView.this.R ? "vd_video_aisub_tranlang_switch" : "vd_video_losub_tran_tranlang_select");
            }
            AISubtitleVideoView.this.O.f();
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            AISubtitleVideoView.this.s(motionEvent);
            return false;
        }
    }

    public interface d {
        void a(boolean z);

        void b();

        void c(String str, Boolean bool);

        void d(String str, Boolean bool, boolean z);
    }

    public AISubtitleVideoView(Context context) {
        super(context);
        this.e0 = new ArrayList();
        this.g0 = new Runnable() {
            @Override
            public void run() {
                AISubtitleVideoView.this.showSettingView(false);
                if (AISubtitleVideoView.this.O != null) {
                    AISubtitleVideoView.this.O.f();
                }
            }
        };
    }

    public void clearAISubtitleText() {
        this.c.clearAISubtitleText();
    }

    public void clearLocalSubtitleText() {
        this.c.onTransCallback("");
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override
    public int g() {
        return R.layout.subtitles_ai_visha_layout;
    }

    @Override
    public void initView(Context context) {
        super.initView(context);
        int color = context.getColor(R.color.ai_subtitle_bg_color);
        this.b0 = color;
        this.a0 = color;
        int color2 = context.getColor(R.color.subtitle_default_text_color);
        this.d0 = color2;
        this.c0 = color2;
        this.P = n.d;
        this.Q = n.e;
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.tracks_view);
        this.H = linearLayout;
        this.U = (GradientDrawable) linearLayout.getBackground();
        this.K = (ViewStub) findViewById(R.id.stub_language_setting_container);
        this.L = (ViewStub) findViewById(R.id.stub_switch_ai_container);
        SubtitleTextScrollView subtitleTextScrollView = (SubtitleTextScrollView) findViewById(R.id.sv_subtitle_view);
        this.N = subtitleTextScrollView;
        subtitleTextScrollView.setVerticalScrollBarEnabled(false);
        this.R = n.b.booleanValue();
        x();
        this.M = findViewById(R.id.split);
        SubtitleTextView subtitleTextView = this.c;
        if (subtitleTextView != null) {
            subtitleTextView.setMeasureTextLineHeightCallBack(this);
            n(this.V);
            this.c.addTextChangedListener(new a());
        }
        if (w.j()) {
            this.f0 = new zt4() {
                @Override
                public final void a(String str, String str2) {
                    this.a.t(str, str2);
                }
            };
        }
    }

    public final void n(int i) {
        SubtitleTextView subtitleTextView = this.c;
        if (subtitleTextView == null || this.N == null) {
            return;
        }
        if (i == 0) {
            i = subtitleTextView.getLineHeight();
        }
        this.V = i;
        ViewGroup.LayoutParams layoutParams = this.N.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = this.N.getPaddingBottom() + this.N.getPaddingTop() + (this.V * 2);
        Log.i("AISubtitleVideoView", "changeSubtitleDisplaySize layoutParams.height " + layoutParams.height + StringUtils.COMMA + this.V);
        this.N.setLayoutParams(layoutParams);
    }

    public final void o() {
        if (this.I != null) {
            return;
        }
        ViewStub viewStub = this.K;
        View viewFindViewById = null;
        if (viewStub != null) {
            View viewInflate = viewStub.inflate();
            this.K = null;
            viewFindViewById = viewInflate;
        }
        if (viewFindViewById == null) {
            viewFindViewById = findViewById(R.id.rl_language_setting_container);
        }
        if (viewFindViewById instanceof RelativeLayout) {
            this.I = (RelativeLayout) viewFindViewById;
        } else if (viewFindViewById != null) {
            this.I = (RelativeLayout) viewFindViewById.findViewById(R.id.rl_language_setting_container);
        }
        RelativeLayout relativeLayout = this.I;
        if (relativeLayout != null) {
            TextView textView = (TextView) relativeLayout.findViewById(R.id.tv_from_language);
            this.C = textView;
            if (textView != null) {
                textView.setText(j0.b(getContext(), this.P));
                this.C.setOnClickListener(this);
            }
            TextView textView2 = (TextView) this.I.findViewById(R.id.tv_to_language);
            this.F = textView2;
            if (textView2 != null) {
                textView2.setText(j0.b(getContext(), this.Q));
                this.F.setOnClickListener(this);
            }
            OSIconTextView oSIconTextView = (OSIconTextView) this.I.findViewById(R.id.iv_setting);
            this.G = oSIconTextView;
            if (oSIconTextView != null) {
                oSIconTextView.setOnClickListener(this);
            }
        }
    }

    public void onAISubtitleTextCallback(String str, boolean z) {
        Log.e("Subtitle_Out", "AISubtitleVideoView onAISubtitleTextCallback isFromAIModel:" + z + ",  " + str);
        this.c.onAISubtitleText(str, z);
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.tv_from_language) {
            r(av3.z() ? -10 : -85, true, view);
            ny5.f(null, "playpage", this.R ? "vd_video_aisub_sourlang" : "vd_video_losub_tran_lang");
            return;
        }
        if (view.getId() == R.id.tv_to_language) {
            r(av3.z() ? -20 : -95, false, view);
            ny5.f(null, "playpage", this.R ? "vd_video_aisub_tranlang" : "vd_video_losub_tran_tranlang");
            return;
        }
        if (view.getId() == R.id.iv_setting) {
            d dVar = this.mAISubtitleViewOperateCallBack;
            if (dVar != null) {
                dVar.b();
                ny5.d("playpage");
            }
            ThreadUtils.o().post(this.g0);
            return;
        }
        if (view.getId() == R.id.tv_ai) {
            w(true);
        } else if (view.getId() == R.id.tv_local) {
            w(false);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        resetSubtitleListener(false);
        SubtitleTextView subtitleTextView = this.c;
        if (subtitleTextView != null) {
            subtitleTextView.setMeasureTextLineHeightCallBack(null);
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        RelativeLayout relativeLayout = this.I;
        if (relativeLayout == null || relativeLayout.getVisibility() == 0) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        Log.i("AISubtitleVideoView", "onInterceptTouchEvent ");
        return true;
    }

    @Override
    public void onSubtitleSingleTapUp() {
        showSettingView(!this.T);
        u();
    }

    @Override
    public void onTextLineHeightChanged(int i) {
        if (this.V != i) {
            n(i);
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        s(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    public final void p() {
        if (this.J != null) {
            return;
        }
        ViewStub viewStub = this.L;
        View viewFindViewById = null;
        if (viewStub != null) {
            View viewInflate = viewStub.inflate();
            this.L = null;
            viewFindViewById = viewInflate;
        }
        if (viewFindViewById == null) {
            viewFindViewById = findViewById(R.id.ll_switch_ai_container);
        }
        if (viewFindViewById instanceof LinearLayout) {
            this.J = (LinearLayout) viewFindViewById;
        } else if (viewFindViewById != null) {
            this.J = (LinearLayout) viewFindViewById.findViewById(R.id.ll_switch_ai_container);
        }
        LinearLayout linearLayout = this.J;
        if (linearLayout != null) {
            TextView textView = (TextView) linearLayout.findViewById(R.id.tv_ai);
            this.D = textView;
            if (textView != null) {
                textView.setOnClickListener(this);
            }
            TextView textView2 = (TextView) this.J.findViewById(R.id.tv_local);
            this.E = textView2;
            if (textView2 != null) {
                textView2.setOnClickListener(this);
            }
            x();
        }
    }

    public final j q(String str, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            j jVar = (j) it.next();
            if (jVar != null && jVar.displayText() != null && jVar.displayText().equals(str)) {
                return jVar;
            }
        }
        return null;
    }

    public final void r(int i, boolean z, View view) {
        if (getContext() != null) {
            this.e0.clear();
            this.e0.addAll(w5a.a());
            if (!z) {
                this.e0.add("none");
            }
            List listA = j.a(!z, this.e0);
            j jVarQ = z ? q(this.P, listA) : q(this.Q, listA);
            if (listA.isEmpty()) {
                return;
            }
            k kVar = new k(getContext(), view, av3.z() ? 2 : 0, true);
            this.O = kVar;
            kVar.o(i).p(-com.transsion.utils.a.d(getContext(), 28.0f)).q(listA, jVarQ, new b(z));
            if (this.O.h() != null) {
                this.O.h().setOnTouchListener(new c());
            }
            u();
        }
    }

    public void resetSubtitleListener(boolean z) {
        if (z) {
            w5a.b().f(this.f0);
        } else {
            w5a.b().f(null);
        }
    }

    public final void s(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            ThreadUtils.o().removeCallbacks(this.g0);
        } else if (action == 1 || action == 3) {
            ThreadUtils.o().postDelayed(this.g0, 5000L);
        }
    }

    public void setAISubtitleViewOperateCallBack(d dVar) {
        this.mAISubtitleViewOperateCallBack = dVar;
    }

    public void setCheckedLanguageFrom(String str, boolean z) {
        TextView textView;
        if (z) {
            w5a.d(new AILaunageConfig(n.d, n.e), true);
        } else {
            n.v();
        }
        Log.d("AISubtitleVideoView", "setCheckedLanguageFrom language:" + str + ",isAISubtitle:" + z);
        this.P = str;
        if (z) {
            MMKV.p().w("ai_from_language", str);
        } else {
            MMKV.p().w("local_subtitle_language_from", str);
        }
        if (z == this.R && (textView = this.C) != null) {
            textView.setText(j0.b(getContext(), str));
        }
        d dVar = this.mAISubtitleViewOperateCallBack;
        if (dVar != null) {
            dVar.c(str, Boolean.valueOf(z));
        }
    }

    public void setCheckedLanguageTo(String str, boolean z, boolean z2) {
        TextView textView;
        String str2 = z ? n.d : n.f;
        String strA = j0.a(str2, str);
        if (z) {
            w5a.d(new AILaunageConfig(str2, strA), true);
        } else {
            n.v();
        }
        Log.d("AISubtitleVideoView", "setCheckedLanguageTo saveData:" + z2 + ",language:" + str + ",isAISubtitle:" + z);
        this.Q = str;
        if (z2 && z) {
            MMKV.p().w("ai_to_language", str);
        }
        if (z == this.R && (textView = this.F) != null) {
            textView.setText(j0.b(getContext(), str));
        }
        d dVar = this.mAISubtitleViewOperateCallBack;
        if (dVar != null) {
            dVar.d(str, Boolean.valueOf(z), z2);
        }
    }

    public void setIsShowAISwitch(boolean z) {
        if (this.S != z) {
            this.S = z;
            z();
        }
    }

    @Override
    public void setLayoutGravity(int i) {
        super.setLayoutGravity(i);
        SubtitleTextView subtitleTextView = this.c;
        if (subtitleTextView != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) subtitleTextView.getLayoutParams();
            layoutParams.gravity = i;
            this.c.setLayoutParams(layoutParams);
        }
    }

    public void setShowSetting() {
        showSettingView(true);
        u();
    }

    @Override
    public void setTextBackground(int i) {
        super.setTextBackground(i);
        this.a0 = i;
        y();
    }

    @Override
    public void setTextColor(int i) {
        super.setTextColor(i);
        this.c0 = i;
        y();
    }

    @Override
    public void setTextSize(float f) {
        float f2 = f / this.v;
        super.setTextSize(f2);
        if (this.W != f2) {
            this.W = f2;
            n(this.V);
        }
    }

    public void showSettingView(boolean z) {
        Log.d("AISubtitleVideoView", "showSettingView " + z);
        if (this.T == z) {
            Log.w("AISubtitleVideoView", "showSettingView return");
            return;
        }
        if (z) {
            o();
            p();
        }
        this.c.setShowSetting(z);
        this.T = z;
        y();
        if (z) {
            RelativeLayout relativeLayout = this.I;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
            }
            this.M.setVisibility(0);
        } else {
            RelativeLayout relativeLayout2 = this.I;
            if (relativeLayout2 != null) {
                relativeLayout2.setVisibility(8);
            }
            this.M.setVisibility(8);
            ThreadUtils.o().removeCallbacks(this.g0);
        }
        z();
    }

    public void switchToAI(boolean z) {
        Log.d("AISubtitleVideoView", "switchToAI isRealTimeAI:" + z);
        this.R = z;
        x();
        v();
        if (z) {
            this.c.removeLocalSubtitleTextListener();
        } else {
            this.c.addLocalSubtitleTextListener();
        }
    }

    public final void t(String str, String str2) {
        if (n.b.booleanValue()) {
            onAISubtitleTextCallback(str, true);
        } else {
            SubtitleTextView subtitleTextView = this.c;
            if (subtitleTextView != null) {
                subtitleTextView.onLocalSubtitleTranText(str);
            }
        }
        resetSubtitleListener(true);
    }

    public final void u() {
        ThreadUtils.o().removeCallbacks(this.g0);
        ThreadUtils.o().postDelayed(this.g0, 5000L);
    }

    @Override
    public void updateSubtitleViewForWindowChange(woc wocVar) {
        k kVar;
        if (wocVar != null && ((this.misLandscape != wocVar.g || wocVar.a != wocVar.b || (wocVar.c && !wocVar.d)) && (kVar = this.O) != null)) {
            kVar.f();
            this.O = null;
        }
        super.updateSubtitleViewForWindowChange(wocVar);
    }

    public final void v() {
        if (this.R) {
            this.P = n.d;
            this.Q = n.e;
        } else {
            this.P = n.f;
            this.Q = n.g;
        }
        TextView textView = this.C;
        if (textView != null) {
            textView.setText(j0.b(getContext(), this.P));
        }
        TextView textView2 = this.F;
        if (textView2 != null) {
            textView2.setText(j0.b(getContext(), this.Q));
        }
    }

    public final void w(boolean z) {
        if (this.R != z) {
            Log.i("AISubtitleVideoView", "updateAISwitch isRealTimeAI:" + z);
            this.R = z;
            d dVar = this.mAISubtitleViewOperateCallBack;
            if (dVar != null) {
                dVar.a(z);
            }
            x();
            if (!z) {
                ToastUtils.s(R.string.visha_ai_subtitle_switch_local);
            }
            ny5.b(z, "vd_video_aisub_losub_switch");
        }
    }

    public final void x() {
        TextView textView;
        TextView textView2 = this.D;
        if (textView2 == null || (textView = this.E) == null) {
            return;
        }
        if (this.R) {
            textView2.setBackgroundResource(R.drawable.bg_switch_ai_subtitle_inner);
            this.D.setTextColor(getResources().getColor(R.color.white));
            this.E.setTextColor(getResources().getColor(R.color.ai_switch_grey_color));
            this.E.setBackground(null);
            return;
        }
        textView.setBackgroundResource(R.drawable.bg_switch_ai_subtitle_inner);
        this.E.setTextColor(getResources().getColor(R.color.white));
        this.D.setTextColor(getResources().getColor(R.color.ai_switch_grey_color));
        this.D.setBackground(null);
    }

    public final void y() {
        GradientDrawable gradientDrawable = this.U;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(this.T ? this.b0 : this.a0);
        }
        SubtitleTextView subtitleTextView = this.c;
        if (subtitleTextView != null) {
            subtitleTextView.setTextColor(this.T ? this.d0 : this.c0);
        }
        SubtitleTextView subtitleTextView2 = this.d;
        if (subtitleTextView2 != null) {
            subtitleTextView2.setTextColor(this.T ? this.d0 : this.c0);
        }
        this.H.setBackground(this.U);
    }

    public final void z() {
        boolean z = this.S && this.T;
        if (z) {
            p();
        }
        LinearLayout linearLayout = this.J;
        if (linearLayout != null) {
            linearLayout.setVisibility(z ? 0 : 8);
            if (z) {
                ny5.b(this.R, "vd_video_aisub_losub_show");
            }
        }
    }

    public AISubtitleVideoView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e0 = new ArrayList();
        this.g0 = new Runnable() {
            @Override
            public void run() {
                AISubtitleVideoView.this.showSettingView(false);
                if (AISubtitleVideoView.this.O != null) {
                    AISubtitleVideoView.this.O.f();
                }
            }
        };
    }

    public AISubtitleVideoView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e0 = new ArrayList();
        this.g0 = new Runnable() {
            @Override
            public void run() {
                AISubtitleVideoView.this.showSettingView(false);
                if (AISubtitleVideoView.this.O != null) {
                    AISubtitleVideoView.this.O.f();
                }
            }
        };
    }
}
