package com.transsion.sniffer_load;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.airbnb.lottie.LottieAnimationView;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.vishaweb.pages.VishaFeedbackPage;
import com.transsion.sniffer_load.DownloadTipActivity;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.widget.editext.ExtendedEditText;
import com.transsion.widgetslib.widget.editext.OSMaterialEditField;
import defpackage.ag5;
import defpackage.b39;
import defpackage.dz5;
import defpackage.f5;
import defpackage.gu5;
import defpackage.os8;
import defpackage.p06;

public class DownloadTipActivity extends RxPermissionOSBottomSheetDialog {
    public int N;
    public int O;
    public Rect P = new Rect();
    public String Q;

    public class a implements View.OnTouchListener {
        public final OSMaterialEditField b;
        public final NestedScrollView c;

        public a(OSMaterialEditField oSMaterialEditField, NestedScrollView nestedScrollView) {
            this.b = oSMaterialEditField;
            this.c = nestedScrollView;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    this.c.requestDisallowInterceptTouchEvent(false);
                }
            } else if (DownloadTipActivity.this.o0(this.b.getEditText())) {
                this.c.requestDisallowInterceptTouchEvent(true);
            }
            return false;
        }
    }

    public class b extends os8 {
        public final OSMaterialEditField b;

        public b(OSMaterialEditField oSMaterialEditField) {
            this.b = oSMaterialEditField;
        }

        @Override
        public void onClick() {
            this.b.requestFocus();
        }
    }

    public class c implements DownloadFeedBackActivity.c.a {
        public final OSMaterialEditField a;
        public final Button b;

        public c(OSMaterialEditField oSMaterialEditField, Button button) {
            this.a = oSMaterialEditField;
            this.b = button;
        }

        @Override
        public void a(boolean z) {
            ExtendedEditText editText = this.a.getEditText();
            InputMethodManager inputMethodManager = (InputMethodManager) editText.getContext().getSystemService("input_method");
            if (!z) {
                this.b.setEnabled(true);
                editText.clearFocus();
                inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
            } else {
                Editable text = this.a.getEditText().getText();
                this.b.setEnabled(!(text == null || TextUtils.isEmpty(text.toString().trim())));
                editText.requestFocus();
                inputMethodManager.showSoftInput(editText, 0);
            }
        }
    }

    public class d implements TextWatcher {
        public final DownloadFeedBackActivity.c b;
        public final Button c;

        public d(DownloadFeedBackActivity.c cVar, Button button) {
            this.b = cVar;
            this.c = button;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (this.b.d) {
                this.c.setEnabled(!(editable == null || TextUtils.isEmpty(editable.toString().trim())));
            } else {
                this.c.setEnabled(true);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class e implements ag5.e {
        public e() {
        }

        @Override
        public void k(int i) {
            int i2 = DownloadTipActivity.this.O;
            DownloadTipActivity downloadTipActivity = DownloadTipActivity.this;
            int i3 = i2 - downloadTipActivity.P.bottom;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) downloadTipActivity.getPanelRootView().getLayoutParams();
            layoutParams.bottomMargin = i <= 0 ? 0 : i - i3;
            DownloadTipActivity.this.getPanelRootView().setLayoutParams(layoutParams);
        }
    }

    public boolean o0(EditText editText) {
        return editText.canScrollVertically(1) || editText.canScrollVertically(-1);
    }

    public static void q0(Editable editable, TextView textView) {
    }

    public void u0(View view) {
        animateDismiss();
        p06.d0("dl_brower_rp_c_adl_guide_ok_cl");
    }

    public void v0(View view) {
        animateDismiss();
        p06.d0("dl_brower_rp_c_adl_guide_close_cl");
    }

    public static void x0(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) DownloadTipActivity.class);
        intent.putExtra("url", str);
        f5.c(intent, context);
    }

    @Override
    public boolean getDragHandlerVisibility() {
        return false;
    }

    @Override
    public void initView() {
        super.initView();
        this.Q = getIntent().getStringExtra("url");
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(com.transsion.magicvideo.R.attr.os_platform_basic_color, typedValue, true);
        this.N = typedValue.data;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_for_disabled_download_button, (ViewGroup) null);
        ((Button) viewInflate.findViewById(R.id.btn_confirm)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.u0(view);
            }
        });
        ((ImageView) viewInflate.findViewById(R.id.close_btn)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.v0(view);
            }
        });
        LottieAnimationView lottieAnimationView = (LottieAnimationView) viewInflate.findViewById(R.id.sniffer_download_lottie);
        if (com.transsion.utils.a.A()) {
            lottieAnimationView.cancelAnimation();
            lottieAnimationView.clearAnimation();
            lottieAnimationView.setImageResource(R.drawable.ic_sniff_download_guide_image_tablet);
        } else {
            gu5.j(lottieAnimationView, this.N);
        }
        ((TextView) viewInflate.findViewById(R.id.tv_feedback)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.w0(view);
            }
        });
        addPage(viewInflate).setTitleLayoutVisible(false);
        this.O = com.transsion.utils.a.l(getBaseContext());
    }

    @Override
    public boolean isFixedHeight() {
        return true;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onStop() {
        super.onStop();
        ag5.l(this);
    }

    public final View p0() {
        View viewInflate = View.inflate(this, !b39.b(this) ? R.layout.dialog_download_feedback_foldlarge : R.layout.dialog_download_feedback, null);
        NestedScrollView nestedScrollView = (NestedScrollView) viewInflate.findViewById(R.id.scrollView);
        final DownloadFeedBackActivity.c cVar = new DownloadFeedBackActivity.c();
        final OSMaterialEditField oSMaterialEditField = (OSMaterialEditField) viewInflate.findViewById(R.id.oset_content);
        oSMaterialEditField.getEditText().setTextColor(viewInflate.getContext().getResources().getColor(R.color.os_text_primary_color));
        oSMaterialEditField.getEditText().setHintTextColor(viewInflate.getContext().getResources().getColor(R.color.os_text_quaternary_color));
        oSMaterialEditField.getEditText().setHint(R.string.download_feedback_hint);
        oSMaterialEditField.setInputNum(1000, new OSMaterialEditField.a() {
            @Override
            public final void a(Editable editable, TextView textView) {
                DownloadTipActivity.q0(editable, textView);
            }
        });
        oSMaterialEditField.getEditText().setOnTouchListener(new a(oSMaterialEditField, nestedScrollView));
        final CheckedTextView checkedTextView = (CheckedTextView) viewInflate.findViewById(R.id.cb1);
        final CheckedTextView checkedTextView2 = (CheckedTextView) viewInflate.findViewById(R.id.cb2);
        CheckedTextView checkedTextView3 = (CheckedTextView) viewInflate.findViewById(R.id.cb3);
        oSMaterialEditField.setOnClickListener(new b(oSMaterialEditField));
        final Button button = (Button) viewInflate.findViewById(R.id.btn_done);
        button.setEnabled(true);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.r0(oSMaterialEditField, cVar, button, checkedTextView, checkedTextView2, view);
            }
        });
        button.postDelayed(new Runnable() {
            @Override
            public void run() {
                button.getGlobalVisibleRect(DownloadTipActivity.this.P);
            }
        }, 50L);
        checkedTextView.setChecked(true);
        cVar.b(checkedTextView);
        cVar.a(checkedTextView3);
        cVar.setBreakListener(new c(oSMaterialEditField, button));
        checkedTextView.setOnClickListener(cVar);
        checkedTextView2.setOnClickListener(cVar);
        checkedTextView3.setOnClickListener(cVar);
        oSMaterialEditField.getEditText().addTextChangedListener(new d(cVar, button));
        viewInflate.findViewById(R.id.iv_close).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.s0(view);
            }
        });
        viewInflate.findViewById(R.id.title_bar_back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.t0(view);
            }
        });
        ag5.k(this, new e());
        return viewInflate;
    }

    public final void r0(OSMaterialEditField oSMaterialEditField, DownloadFeedBackActivity.c cVar, Button button, CheckedTextView checkedTextView, CheckedTextView checkedTextView2, View view) {
        int i;
        String string = oSMaterialEditField.getEditText().getText().toString();
        if (cVar.d && TextUtils.isEmpty(string)) {
            ToastUtils.q(R.string.feedback_empty_1);
            button.setEnabled(false);
            return;
        }
        animateDismiss();
        if (checkedTextView.isChecked()) {
            i = 1;
        } else {
            i = checkedTextView2.isChecked() ? 2 : 3;
        }
        dz5.e(i, string);
        VishaFeedbackPage.f(this, getString(R.string.feedback), 5, string, this.Q);
    }

    public final void s0(View view) {
        animateDismiss();
        p06.d0("dl_brower_rp_c_adl_guide_fb_op_close");
    }

    public final void t0(View view) {
        popPage();
    }

    public final void w0(View view) {
        addPage(p0()).setTitleLayoutVisible(false).setCloseIconVisibility(false);
        p06.d0("dl_brower_rp_c_adl_guide_fb_cl");
    }
}
