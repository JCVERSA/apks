package com.mbridge.msdk.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.InputDeviceCompat;
import com.mbridge.msdk.foundation.tools.c1;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

public class MBFeedBackDialog extends Dialog {

    private Button f39212a;

    private Button f39213b;

    private LinearLayout f39214c;

    private com.mbridge.msdk.widget.dialog.b f39215d;

    private Button f39216e;

    private TextView f39217f;

    private int f39218g;

    private int f39219h;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            if (MBFeedBackDialog.this.f39215d != null) {
                MBFeedBackDialog.this.f39215d.b();
            }
            MBFeedBackDialog.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            if (MBFeedBackDialog.this.f39215d != null) {
                MBFeedBackDialog.this.f39215d.a();
            }
            MBFeedBackDialog.this.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override
        public void onClick(View view) {
            MBFeedBackDialog.this.dismiss();
            if (MBFeedBackDialog.this.f39215d != null) {
                MBFeedBackDialog.this.f39215d.c();
            }
        }
    }

    class d implements DialogInterface.OnCancelListener {
        d() {
        }

        @Override
        public void onCancel(DialogInterface dialogInterface) {
            if (MBFeedBackDialog.this.f39215d != null) {
                MBFeedBackDialog.this.f39215d.a();
            }
        }
    }

    public MBFeedBackDialog(Context context, com.mbridge.msdk.widget.dialog.b bVar) {
        super(context);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        requestWindowFeature(1);
        View viewInflate = LayoutInflater.from(context).inflate(g0.a(context, "mbridge_cm_feedbackview", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
        setDialogWidthAndHeight(0.5f, 0.8f);
        this.f39215d = bVar;
        if (viewInflate != null) {
            setContentView(viewInflate);
            try {
                this.f39217f = (TextView) viewInflate.findViewById(g0.a(context, "mbridge_video_common_alertview_titleview", "id"));
            } catch (Exception e10) {
                o0.a("MBAlertDialog", e10.getMessage());
            }
            try {
                this.f39214c = (LinearLayout) viewInflate.findViewById(g0.a(context, "mbridge_video_common_alertview_contentview", "id"));
                this.f39213b = (Button) viewInflate.findViewById(g0.a(context, "mbridge_video_common_alertview_confirm_button", "id"));
                this.f39212a = (Button) viewInflate.findViewById(g0.a(context, "mbridge_video_common_alertview_cancel_button", "id"));
                this.f39216e = (Button) viewInflate.findViewById(g0.a(context, "mbridge_video_common_alertview_private_action_button", "id"));
            } catch (Exception e11) {
                o0.a("MBAlertDialog", e11.getMessage());
            }
        }
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        a();
    }

    public static boolean isScreenOrientationPortrait(Context context) {
        return context.getResources().getConfiguration().orientation == 1;
    }

    public void clear() {
        if (this.f39215d != null) {
            this.f39215d = null;
        }
    }

    public com.mbridge.msdk.widget.dialog.b getListener() {
        return this.f39215d;
    }

    public void hideNavigationBar(Window window) {
        if (window != null) {
            window.setFlags(1024, 1024);
            window.addFlags(67108864);
            window.getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
            c1.a(window);
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setLayout(-1, -1);
            window.setGravity(17);
        }
    }

    public void setCancelButtonClickable(boolean z10) {
        Button button = this.f39212a;
        if (button != null) {
            button.setClickable(z10);
            if (z10) {
                this.f39212a.setBackgroundResource(getContext().getResources().getIdentifier("mbridge_cm_feedback_choice_btn_bg_pressed", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
                this.f39212a.setAlpha(1.0f);
            } else {
                this.f39212a.setBackgroundResource(getContext().getResources().getIdentifier("mbridge_cm_feedback_choice_btn_bg_pressed", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
                this.f39212a.setAlpha(0.4f);
            }
        }
    }

    public void setCancelText(String str) {
        Button button = this.f39212a;
        if (button != null) {
            button.setText(str);
        }
    }

    public void setConfirmText(String str) {
    }

    public void setContent(ViewGroup viewGroup) {
        LinearLayout linearLayout = this.f39214c;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(viewGroup);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            layoutParams.leftMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 16.0f);
            layoutParams.rightMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 16.0f);
            layoutParams.topMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 3.0f);
            layoutParams.bottomMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 3.0f);
            this.f39214c.addView(viewGroup, layoutParams);
        }
    }

    public void setDialogWidthAndHeight(float f10, float f11) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        if (!isScreenOrientationPortrait(getContext())) {
            this.f39219h = displayMetrics.heightPixels;
            this.f39218g = displayMetrics.widthPixels;
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = (int) (this.f39218g * f10);
            attributes.height = -1;
            attributes.gravity = 17;
            getWindow().setAttributes(attributes);
            return;
        }
        this.f39219h = displayMetrics.widthPixels;
        this.f39218g = displayMetrics.heightPixels;
        WindowManager.LayoutParams attributes2 = getWindow().getAttributes();
        int i10 = (int) (this.f39218g * f11);
        attributes2.width = -1;
        attributes2.height = i10;
        attributes2.gravity = 80;
        getWindow().setAttributes(attributes2);
    }

    public void setListener(com.mbridge.msdk.widget.dialog.b bVar) {
        this.f39215d = bVar;
    }

    public void setPrivacyText(String str) {
        Button button = this.f39216e;
        if (button != null) {
            button.setText(str);
        }
    }

    public void setTitle(String str) {
        TextView textView = this.f39217f;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override
    public void show() {
        super.show();
        try {
            getWindow().setFlags(8, 8);
            super.show();
            hideNavigationBar(getWindow());
            getWindow().clearFlags(8);
        } catch (Exception e10) {
            o0.b("MBAlertDialog", e10.getMessage());
            super.show();
        }
    }

    private void a() {
        Button button = this.f39212a;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        Button button2 = this.f39213b;
        if (button2 != null) {
            button2.setOnClickListener(new b());
        }
        Button button3 = this.f39216e;
        if (button3 != null) {
            button3.setOnClickListener(new c());
        }
        setOnCancelListener(new d());
    }
}
