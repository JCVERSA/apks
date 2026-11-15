package com.mbridge.msdk.foundation.feedback.bean;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.FeedbackRadioGroup;
import com.mbridge.msdk.widget.dialog.MBFeedBackDialog;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

public class a {
    private static int A = -1;
    private static String B;

    private String f34463b;

    private CampaignEx f34464c;

    private FeedBackButton f34466e;

    private String f34467f;

    private String f34470i;

    private MBFeedBackDialog f34471j;

    private Dialog f34472k;

    private JSONArray f34473l;

    private int f34478q;

    private List<g> f34479r;

    private int f34482u;

    private float f34462a = 1.0f;

    private String f34465d = "";

    private float f34468g = -1.0f;

    private int f34469h = -1;

    private int f34474m = -1;

    private int f34475n = -1;

    private int f34476o = -1;

    private int f34477p = -1;

    private int f34480s = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 20.0f);

    private String f34481t = "";

    private com.mbridge.msdk.widget.dialog.b f34483v = new C0461a();

    private int f34484w = A;

    private int f34485x = -1;

    private int f34486y = -1;

    private int f34487z = -1;

    class C0461a implements com.mbridge.msdk.widget.dialog.b {
        C0461a() {
        }

        @Override
        public void a() {
            a.this.m();
        }

        @Override
        public void b() {
            a.this.l();
        }

        @Override
        public void c() {
            a.this.n();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            a.this.p();
        }
    }

    class c implements com.mbridge.msdk.widget.dialog.b {
        c() {
        }

        @Override
        public void a() {
            a.this.m();
        }

        @Override
        public void b() {
            a.this.l();
        }

        @Override
        public void c() {
            a.this.n();
        }
    }

    class d implements CompoundButton.OnCheckedChangeListener {
        d() {
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                String unused = a.B = (String) compoundButton.getText();
            }
            if (a.this.f34471j != null) {
                a.this.f34471j.setCancelButtonClickable(!TextUtils.isEmpty(a.B));
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override
        public void run() {
            try {
                if (a.this.f34472k == null || !a.this.f34472k.isShowing()) {
                    return;
                }
                a.this.f34472k.dismiss();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override
        public void onClick(View view) {
            a.this.p();
        }
    }

    public a(String str) {
        this.f34479r = new ArrayList();
        this.f34470i = str;
        if (this.f34479r == null) {
            this.f34479r = new ArrayList();
        }
        d();
        e();
        c();
    }

    public void l() {
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f34470i, 1, 4, B, this.f34465d);
        List<g> list = this.f34479r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.b();
                }
            }
        }
        o();
        B = "";
    }

    public void m() {
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f34470i, 0, 4, B, this.f34465d);
        List<g> list = this.f34479r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.a();
                }
            }
        }
        B = "";
    }

    public void n() {
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f34470i, 0, 4, B, this.f34465d);
        Context contextF = com.mbridge.msdk.foundation.controller.c.m().f();
        if (contextF == null) {
            contextF = com.mbridge.msdk.foundation.controller.c.m().d();
        }
        List<g> list = this.f34479r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.a();
                }
            }
        }
        a(contextF);
        B = "";
    }

    private void o() {
        if (TextUtils.isEmpty(this.f34481t)) {
            return;
        }
        try {
            Activity activityA = com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d());
            if (activityA != null) {
                View viewInflate = LayoutInflater.from(activityA).inflate(g0.a(activityA, "mbridge_cm_feedback_notice_layout", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
                Dialog dialog = new Dialog(activityA, 3);
                this.f34472k = dialog;
                dialog.requestWindowFeature(1);
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                Window window = this.f34472k.getWindow();
                layoutParams.copyFrom(window.getAttributes());
                layoutParams.width = -2;
                layoutParams.height = -2;
                this.f34472k.setContentView(viewInflate);
                this.f34472k.show();
                window.setAttributes(layoutParams);
                viewInflate.postDelayed(new e(), 2000L);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void f() {
        FeedBackButton feedBackButton = this.f34466e;
        if (feedBackButton != null) {
            feedBackButton.setOnClickListener(null);
            this.f34466e.setVisibility(8);
            ViewGroup viewGroup = (ViewGroup) this.f34466e.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.f34466e);
            }
        }
        MBFeedBackDialog mBFeedBackDialog = this.f34471j;
        if (mBFeedBackDialog != null) {
            mBFeedBackDialog.cancel();
            this.f34471j.setListener(null);
        }
        this.f34471j = null;
        this.f34479r = null;
        this.f34466e = null;
        this.f34483v = null;
    }

    public void g() {
        MBFeedBackDialog mBFeedBackDialog = this.f34471j;
        if (mBFeedBackDialog == null || !mBFeedBackDialog.isShowing()) {
            return;
        }
        this.f34471j.cancel();
    }

    public CampaignEx h() {
        return this.f34464c;
    }

    public FeedBackButton i() {
        if (this.f34466e == null) {
            e();
        }
        return this.f34466e;
    }

    public int j() {
        return this.f34478q;
    }

    public int k() {
        return this.f34482u;
    }

    public void p() {
        try {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f34470i, 0, 1, B, this.f34465d);
            Activity activityA = com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d());
            MBFeedBackDialog mBFeedBackDialog = this.f34471j;
            if (mBFeedBackDialog == null || mBFeedBackDialog.getContext() != activityA) {
                c();
            }
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            FeedBackButton feedBackButton = this.f34466e;
            if (feedBackButton != null) {
                contextD = feedBackButton.getContext();
            }
            boolean zA = com.mbridge.msdk.foundation.feedback.b.b().a(this.f34470i, contextD, this.f34471j);
            a(zA ? 2 : 3);
            if (zA) {
                return;
            }
            a(contextD);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c() {
        try {
            if (com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d()) != null) {
                com.mbridge.msdk.setting.g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (gVarD == null) {
                    gVarD = h.b().a();
                }
                com.mbridge.msdk.setting.b.C0511b c0511bZ = gVarD.z();
                if (c0511bZ == null) {
                    o0.c("", "feedback fbk is null");
                    return;
                }
                d();
                this.f34471j = new MBFeedBackDialog(com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d()), this.f34483v);
                FeedbackRadioGroup feedbackRadioGroupA = a(c0511bZ);
                this.f34471j.setCancelText(c0511bZ.d());
                this.f34471j.setConfirmText(c0511bZ.a());
                this.f34471j.setPrivacyText(c0511bZ.c());
                this.f34481t = c0511bZ.e();
                this.f34471j.setTitle(c0511bZ.f());
                this.f34471j.setContent(feedbackRadioGroupA);
                this.f34471j.setCancelButtonClickable(!TextUtils.isEmpty(B));
                a(feedbackRadioGroupA, c0511bZ);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d() {
        if (this.f34483v == null) {
            this.f34483v = new c();
        }
    }

    private void e() {
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (contextD != null) {
            try {
                FeedBackButton feedBackButton = new FeedBackButton(contextD);
                this.f34466e = feedBackButton;
                int i10 = 8;
                if (this.f34484w != 8) {
                    i10 = 0;
                }
                feedBackButton.setVisibility(i10);
                this.f34466e.setOnClickListener(new b());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void b(String str) {
        this.f34465d = str;
    }

    public static class g implements com.mbridge.msdk.widget.dialog.b {

        private com.mbridge.msdk.foundation.feedback.a f34494a;

        private String f34495b;

        public g(String str, com.mbridge.msdk.foundation.feedback.a aVar) {
            this.f34494a = aVar;
            this.f34495b = str;
        }

        @Override
        public void a() {
            com.mbridge.msdk.foundation.feedback.b.f34457f = false;
            com.mbridge.msdk.foundation.feedback.a aVar = this.f34494a;
            if (aVar != null) {
                aVar.close();
            }
        }

        @Override
        public void b() {
            com.mbridge.msdk.foundation.feedback.b.f34457f = false;
            com.mbridge.msdk.foundation.feedback.a aVar = this.f34494a;
            if (aVar != null) {
                aVar.a(a.B);
            }
        }

        @Override
        public void c() {
            com.mbridge.msdk.foundation.feedback.a aVar = this.f34494a;
            if (aVar != null) {
                aVar.close();
            }
        }

        public void a(int i10) {
            com.mbridge.msdk.foundation.feedback.b.f34457f = true;
            com.mbridge.msdk.foundation.feedback.a aVar = this.f34494a;
            if (aVar == null || i10 != 2) {
                return;
            }
            aVar.a();
        }
    }

    private void b() {
        FeedBackButton feedBackButton = this.f34466e;
        if (feedBackButton != null) {
            int i10 = this.f34486y;
            if (i10 > -1) {
                feedBackButton.setX(i10);
            }
            int i11 = this.f34487z;
            if (i11 > -1) {
                this.f34466e.setY(i11);
            }
            float f10 = this.f34462a;
            if (f10 >= 0.0f) {
                this.f34466e.setAlpha(f10);
                this.f34466e.setEnabled(this.f34462a != 0.0f);
            }
            ViewGroup.LayoutParams layoutParams = this.f34466e.getLayoutParams();
            int i12 = this.f34485x;
            if (i12 > 0) {
                this.f34466e.setWidth(i12);
                if (layoutParams != null) {
                    layoutParams.width = this.f34485x;
                }
            }
            int i13 = this.f34469h;
            if (i13 > 0) {
                this.f34466e.setHeight(i13);
                if (layoutParams != null) {
                    layoutParams.height = this.f34469h;
                }
            }
            if (layoutParams != null) {
                this.f34466e.setLayoutParams(layoutParams);
            }
            try {
                if (!TextUtils.isEmpty(this.f34467f)) {
                    this.f34466e.setTextColor(Color.parseColor(this.f34467f));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            float f11 = this.f34468g;
            if (f11 > 0.0f) {
                this.f34466e.setTextSize(f11);
            }
            JSONArray jSONArray = this.f34473l;
            if (jSONArray != null && jSONArray.length() == 4) {
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                this.f34466e.setPadding(t0.a(contextD, (float) this.f34473l.optDouble(0)), t0.a(contextD, (float) this.f34473l.optDouble(1)), t0.a(contextD, (float) this.f34473l.optDouble(2)), t0.a(contextD, (float) this.f34473l.optDouble(3)));
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            int i14 = this.f34480s;
            if (i14 > 0) {
                gradientDrawable.setCornerRadius(i14);
            }
            if (!TextUtils.isEmpty(this.f34463b)) {
                gradientDrawable.setColor(Color.parseColor(this.f34463b));
            } else {
                gradientDrawable.setColor(Color.parseColor(FeedBackButton.FEEDBACK_BTN_BACKGROUND_COLOR_STR));
            }
            this.f34466e.setBackground(gradientDrawable);
        }
    }

    public void a(g gVar) {
        if (this.f34479r == null) {
            this.f34479r = new ArrayList();
        }
        this.f34479r.add(gVar);
    }

    public void d(int i10) {
        this.f34484w = i10;
        FeedBackButton feedBackButton = this.f34466e;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(i10);
        }
    }

    public void a(CampaignEx campaignEx) {
        this.f34464c = campaignEx;
    }

    private void a(int i10) {
        if (i10 == 2) {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f34470i, 0, 2, B, this.f34465d);
        } else {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f34470i, 0, 3, B, this.f34465d);
        }
        List<g> list = this.f34479r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.a(i10);
                }
            }
        }
    }

    private void a(Context context) {
        if (context != null) {
            try {
                com.mbridge.msdk.click.c.e(context, t0.a(this.f34464c));
            } catch (Exception unused) {
                com.mbridge.msdk.click.c.c(context, t0.a(this.f34464c));
            }
        }
    }

    private FeedbackRadioGroup a(com.mbridge.msdk.setting.b.C0511b c0511b) {
        JSONArray jSONArrayB = c0511b.b();
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (jSONArrayB == null || jSONArrayB.length() <= 0 || contextD == null) {
            return null;
        }
        FeedbackRadioGroup feedbackRadioGroup = new FeedbackRadioGroup(contextD);
        feedbackRadioGroup.setOrientation(0);
        return feedbackRadioGroup;
    }

    public void c(int i10) {
        this.f34482u = i10;
    }

    private void a(FeedbackRadioGroup feedbackRadioGroup, com.mbridge.msdk.setting.b.C0511b c0511b) {
        ColorStateList colorStateList;
        JSONArray jSONArrayB = c0511b.b();
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (jSONArrayB == null || jSONArrayB.length() <= 0 || contextD == null) {
            return;
        }
        g0.a(contextD, "mbridge_cm_feedback_choice_btn_bg", "drawable");
        Resources resourcesA = g0.a(contextD);
        int iA = g0.a(contextD, "mbridge_cm_feedback_rb_text_color_color_list", TtmlNode.ATTR_TTS_COLOR);
        if (resourcesA != null) {
            try {
                colorStateList = resourcesA.getColorStateList(iA);
            } catch (Exception e10) {
                e10.printStackTrace();
                colorStateList = null;
            }
        } else {
            colorStateList = null;
        }
        int iA2 = t0.a(contextD, 1.0f);
        int iA3 = t0.a(contextD, 1.0f);
        int iA4 = t0.a(contextD, 1.0f);
        for (int i10 = 0; i10 < jSONArrayB.length(); i10++) {
            String strOptString = jSONArrayB.optString(i10);
            RadioButton radioButton = new RadioButton(contextD);
            radioButton.setButtonTintList(colorStateList);
            radioButton.setText(strOptString);
            if (colorStateList != null) {
                radioButton.setTextColor(colorStateList);
            }
            radioButton.setCompoundDrawablePadding(iA2);
            radioButton.setPadding(iA2, iA3, iA2, iA3);
            radioButton.setEllipsize(TextUtils.TruncateAt.END);
            RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-1, -2);
            int i11 = iA4 / 4;
            layoutParams.setMargins(iA4, i11, iA4, i11);
            a(radioButton);
            feedbackRadioGroup.addView(radioButton, layoutParams);
        }
    }

    public void b(int i10) {
        this.f34478q = i10;
    }

    private void a(RadioButton radioButton) {
        if (radioButton != null) {
            radioButton.setOnCheckedChangeListener(new d());
        }
    }

    public void a(FeedBackButton feedBackButton) {
        FeedBackButton feedBackButton2 = this.f34466e;
        if (feedBackButton2 != null) {
            feedBackButton2.setVisibility(8);
        }
        if (feedBackButton != null) {
            feedBackButton.setAlpha(this.f34462a);
            feedBackButton.setEnabled(this.f34462a != 0.0f);
            feedBackButton.setVisibility(this.f34484w != 8 ? 0 : 8);
            this.f34466e = feedBackButton;
            CampaignEx campaignEx = this.f34464c;
            if (campaignEx != null && !campaignEx.isDynamicView()) {
                b();
            }
            feedBackButton.setOnClickListener(new f());
        }
    }

    public void a(int i10, int i11, int i12, int i13, int i14, float f10, String str, String str2, float f11, JSONArray jSONArray) {
        if (i10 > -1) {
            this.f34486y = i10;
        }
        if (i11 > -1) {
            this.f34487z = i11;
        }
        if (i12 > -1) {
            this.f34485x = i12;
        }
        if (i13 > -1) {
            this.f34469h = i13;
        }
        if (f11 > -1.0f) {
            this.f34468g = f11;
        }
        if (jSONArray != null) {
            this.f34473l = jSONArray;
        }
        this.f34467f = str;
        this.f34463b = str2;
        this.f34462a = f10;
        this.f34480s = i14;
        b();
    }
}
