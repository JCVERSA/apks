package com.transsion.sniffer_load;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckedTextView;
import android.widget.EditText;
import android.widget.TextView;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.widgets.CustomRadioButton;
import com.transsion.sniffer_load.DownloadFeedBackActivity;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBottomSheetPanel;
import com.transsion.widgetslib.widget.editext.ExtendedEditText;
import com.transsion.widgetslib.widget.editext.OSMaterialEditField;
import defpackage.dz5;
import defpackage.hb0;
import defpackage.p06;

public class DownloadFeedBackActivity extends RxPermissionOSBottomSheetDialog {

    public class a implements c.a {
        public final OSMaterialEditField a;
        public final CustomRadioButton b;

        public a(OSMaterialEditField oSMaterialEditField, CustomRadioButton customRadioButton) {
            this.a = oSMaterialEditField;
            this.b = customRadioButton;
        }

        @Override
        public void a(boolean z) {
            ExtendedEditText editText = this.a.getEditText();
            InputMethodManager inputMethodManager = (InputMethodManager) editText.getContext().getSystemService("input_method");
            if (!z) {
                this.b.setChecked(true);
                editText.clearFocus();
                inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
            } else {
                Editable text = this.a.getEditText().getText();
                this.b.setChecked(!(text == null || TextUtils.isEmpty(text.toString().trim())));
                editText.requestFocus();
                inputMethodManager.showSoftInput(editText, 0);
            }
        }
    }

    public class b implements TextWatcher {
        public final c b;
        public final CustomRadioButton c;

        public b(c cVar, CustomRadioButton customRadioButton) {
            this.b = cVar;
            this.c = customRadioButton;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (this.b.d) {
                this.c.setChecked(!(editable == null || TextUtils.isEmpty(editable.toString().trim())));
            } else {
                this.c.setChecked(true);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public static class c implements View.OnClickListener {
        public CheckedTextView b;
        public CheckedTextView c;
        public boolean d;
        public a e;

        public interface a {
            void a(boolean z);
        }

        public void a(CheckedTextView checkedTextView) {
            this.c = checkedTextView;
        }

        public void b(CheckedTextView checkedTextView) {
            this.b = checkedTextView;
        }

        @Override
        public void onClick(View view) {
            int i;
            if (view instanceof CheckedTextView) {
                CheckedTextView checkedTextView = (CheckedTextView) view;
                if (checkedTextView.isChecked()) {
                    return;
                } else {
                    checkedTextView.setChecked(!checkedTextView.isChecked());
                }
            }
            CheckedTextView checkedTextView2 = this.b;
            if (checkedTextView2 != null && checkedTextView2 != view) {
                checkedTextView2.setChecked(false);
            }
            b((CheckedTextView) view);
            if (view.getId() == R.id.cb1) {
                i = 1;
            } else {
                i = view.getId() == R.id.cb2 ? 2 : 3;
            }
            p06.n0("dl_brower_rp_c_adl_guide_fb_op_cl", hb0.KEY_NAME_BTN, i);
            boolean z = this.b == this.c;
            this.d = z;
            a aVar = this.e;
            if (aVar != null) {
                aVar.a(z);
            }
        }

        public void setBreakListener(a aVar) {
            this.e = aVar;
        }
    }

    public static void l0(Editable editable, TextView textView) {
    }

    public void o0(View view) {
        animateDismiss();
        p06.d0("dl_brower_rp_c_adl_guide_fb_op_close");
    }

    @Override
    public void initView() {
        super.initView();
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_download_feedback, (ViewGroup) null);
        final String stringExtra = getIntent().getStringExtra("key_main_url");
        final c cVar = new c();
        final OSMaterialEditField oSMaterialEditField = (OSMaterialEditField) viewInflate.findViewById(R.id.oset_content);
        oSMaterialEditField.getEditText().setTextColor(viewInflate.getContext().getResources().getColor(R.color.os_text_primary_color));
        oSMaterialEditField.getEditText().setHintTextColor(viewInflate.getContext().getResources().getColor(R.color.os_text_quaternary_color));
        oSMaterialEditField.getEditText().setHint(R.string.download_feedback_hint);
        oSMaterialEditField.setInputNum(1000, new OSMaterialEditField.a() {
            @Override
            public final void a(Editable editable, TextView textView) {
                DownloadFeedBackActivity.l0(editable, textView);
            }
        });
        oSMaterialEditField.getEditText().setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.m0(oSMaterialEditField, view, motionEvent);
            }
        });
        viewInflate.findViewById(R.id.scrollView).setNestedScrollingEnabled(true);
        final CheckedTextView checkedTextView = (CheckedTextView) viewInflate.findViewById(R.id.cb1);
        final CheckedTextView checkedTextView2 = (CheckedTextView) viewInflate.findViewById(R.id.cb2);
        CheckedTextView checkedTextView3 = (CheckedTextView) viewInflate.findViewById(R.id.cb3);
        final CustomRadioButton customRadioButton = (CustomRadioButton) viewInflate.findViewById(R.id.btn_done);
        customRadioButton.setChecked(true);
        customRadioButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.n0(oSMaterialEditField, cVar, customRadioButton, checkedTextView, checkedTextView2, view);
            }
        });
        checkedTextView.setChecked(true);
        cVar.b(checkedTextView);
        cVar.a(checkedTextView3);
        cVar.setBreakListener(new a(oSMaterialEditField, customRadioButton));
        checkedTextView.setOnClickListener(cVar);
        checkedTextView2.setOnClickListener(cVar);
        checkedTextView3.setOnClickListener(cVar);
        oSMaterialEditField.getEditText().addTextChangedListener(new b(cVar, customRadioButton));
        viewInflate.findViewById(R.id.iv_close).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.o0(view);
            }
        });
        viewInflate.findViewById(R.id.title_bar_back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.p0(stringExtra, view);
            }
        });
        addPage(viewInflate).setTitleLayoutVisible(false);
    }

    @Override
    public boolean isFixedHeight() {
        return false;
    }

    public final boolean k0(EditText editText) {
        return editText.canScrollVertically(1) || editText.canScrollVertically(-1);
    }

    public final boolean m0(OSMaterialEditField oSMaterialEditField, View view, MotionEvent motionEvent) {
        OSBottomSheetPanel realContainerView = getRealContainerView();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                realContainerView.requestDisallowInterceptTouchEvent(false);
            }
        } else if (k0(oSMaterialEditField.getEditText())) {
            realContainerView.requestDisallowInterceptTouchEvent(true);
        }
        return false;
    }

    public final void n0(OSMaterialEditField oSMaterialEditField, c cVar, CustomRadioButton customRadioButton, CheckedTextView checkedTextView, CheckedTextView checkedTextView2, View view) {
        int i;
        String string = oSMaterialEditField.getEditText().getText().toString();
        if (cVar.d && TextUtils.isEmpty(string)) {
            ToastUtils.q(R.string.feedback_empty_1);
            customRadioButton.setChecked(false);
            return;
        }
        animateDismiss();
        if (checkedTextView.isChecked()) {
            i = 1;
        } else {
            i = checkedTextView2.isChecked() ? 2 : 3;
        }
        dz5.e(i, string);
        ToastUtils.s(R.string.feedback_comfort);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    public final void p0(String str, View view) {
        DownloadTipActivity.x0(this, str);
        animateDismiss();
    }
}
