package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.model.data.CloudConfigRes;
import defpackage.c39;
import defpackage.do7;
import defpackage.kn7;
import defpackage.nn7;
import defpackage.rm7;
import defpackage.xj;
import java.util.Locale;

public class SmsCodeInput extends FrameLayout {
    public Paint OppO;
    public long OppO00p;
    public long OppO0O0;
    public EditText OppO0OO;
    public TextView OppO0Op;
    public e OppO0p;
    public CountDownTimer OppO0p0;
    public boolean OppO0pO;
    public boolean OppO0pp;
    public int OppOO0;
    public c OppOO0O;

    public class a extends CountDownTimer {
        public a(long j, long j2) {
            super(j, j2);
        }

        @Override
        public void onFinish() {
            SmsCodeInput.this.OppO0pO = false;
            e eVar = SmsCodeInput.this.OppO0p;
            if (eVar != null) {
                eVar.a();
            }
        }

        @Override
        public void onTick(long j) {
            SmsCodeInput.this.OppO0Op.setText(String.format(Locale.getDefault(), "(%d)", Long.valueOf(j / 1000)));
        }
    }

    public class b extends rm7 {
        public b() {
        }

        @Override
        public void b(View view) {
            e eVar;
            if (view.getId() != R.id.getCode || (eVar = SmsCodeInput.this.OppO0p) == null) {
                return;
            }
            eVar.b();
        }
    }

    public interface c {
    }

    public class d implements View.OnFocusChangeListener {
        public d() {
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            SmsCodeInput.this.findViewById(R.id.smsLine).setBackgroundColor(SmsCodeInput.this.getResources().getColor(z ? R.color.xn_line_s : R.color.xn_line));
            ((AppCompatImageView) SmsCodeInput.this.findViewById(R.id.smsLogo)).getDrawable().setTint(SmsCodeInput.this.getResources().getColor(z ? R.color.xn_input_logo_color_s : R.color.xn_input_logo_color, null));
            c cVar = SmsCodeInput.this.OppOO0O;
            if (cVar != null) {
                nn7 nn7Var = (nn7) cVar;
                if (z || TextUtils.isEmpty(nn7Var.a.n.getText())) {
                    return;
                }
                do7 do7Var = nn7Var.a.j;
                xj.U(do7Var.k()).D1(((kn7) do7Var.a).t() == 3 ? "Phone" : "Mail", do7Var.o);
            }
        }
    }

    public interface e {
        void a();

        void b();
    }

    public SmsCodeInput(Context context) {
        super(context);
        this.OppO00p = SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US;
        this.OppO0O0 = 1000L;
        this.OppO0pO = false;
        this.OppO0pp = true;
        this.OppO = new Paint();
    }

    public final void OppO0O0() {
        EditText editText = (EditText) findViewById(R.id.smsEdit);
        this.OppO0OO = editText;
        editText.setOnFocusChangeListener(new d());
        TextView textView = (TextView) findViewById(R.id.getCode);
        this.OppO0Op = textView;
        textView.setOnClickListener(new b());
    }

    public void OppO0OO() {
        this.OppO0pp = false;
        this.OppO0pO = true;
        this.OppO0OO.requestFocus();
        if (this.OppO0p0 == null) {
            this.OppO0p0 = new a(this.OppO00p, this.OppO0O0);
        }
        this.OppO0p0.start();
    }

    public long getCountDownInterval() {
        return this.OppO0O0;
    }

    public EditText getEdit() {
        return this.OppO0OO;
    }

    public c getEditFocus() {
        return this.OppOO0O;
    }

    public long getMillisInFuture() {
        return this.OppO00p;
    }

    public String getText() {
        return this.OppO0OO.getText().toString();
    }

    public void setAppearance(TextView textView, int i) {
        textView.setTextAppearance(i);
    }

    public void setCountDownInterval(long j) {
        this.OppO0O0 = j;
    }

    public void setEditFocus(c cVar) {
        this.OppOO0O = cVar;
    }

    public void setGetCodeEnable(boolean z) {
        this.OppO0Op.setEnabled(z);
        String string = getContext().getString(this.OppO0pp ? R.string.xn_get_code : R.string.xn_resend);
        boolean z2 = this.OppO.measureText(string) > ((float) this.OppOO0);
        if (z) {
            setAppearance(this.OppO0Op, z2 ? R.style.font_get_code_small : R.style.font_get_code_medium);
            this.OppO0Op.setText(string);
        } else if (this.OppO0pO) {
            setAppearance(this.OppO0Op, R.style.font_get_code_disable_medium);
        } else {
            this.OppO0Op.setText(string);
            setAppearance(this.OppO0Op, z2 ? R.style.font_get_code_disable_small : R.style.font_get_code_disable_medium);
        }
    }

    public void setMillisInFuture(long j) {
        this.OppO00p = j;
    }

    public void setSmsCodeListener(e eVar) {
        this.OppO0p = eVar;
    }

    public void setText(String str) {
        this.OppO0OO.setText(str);
        this.OppO0OO.setSelection(this.OppO0OO.getText().length());
    }

    public final void OppO00p(TypedArray typedArray) {
        String string = typedArray.getString(R.styleable.InputView_hint_resource);
        findViewById(R.id.smsLine).setVisibility(typedArray.getBoolean(R.styleable.InputView_show_line, true) ? 0 : 4);
        if (string != null && !string.isEmpty()) {
            ((EditText) findViewById(R.id.edit)).setHint(string);
        }
        typedArray.recycle();
    }

    public SmsCodeInput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OppO00p = SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US;
        this.OppO0O0 = 1000L;
        this.OppO0pO = false;
        this.OppO0pp = true;
        this.OppO = new Paint();
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.xn_view_sms_input, (ViewGroup) this, true);
        OppO00p(context.obtainStyledAttributes(attributeSet, R.styleable.InputView));
        this.OppO00p = CloudConfigRes.getCount(context) * 1000;
        this.OppOO0 = c39.a(120.0f);
        this.OppO.setTextSize(c39.h(12.0f));
        OppO0O0();
    }

    public void OppO00p(long j) {
        if (this.OppO00p + j > System.currentTimeMillis()) {
            setMillisInFuture((j + this.OppO00p) - System.currentTimeMillis());
            setGetCodeEnable(false);
            OppO0OO();
        }
    }

    public void OppO00p() {
        CountDownTimer countDownTimer = this.OppO0p0;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.OppO0p0 = null;
        }
        this.OppO00p = CloudConfigRes.getCount(getContext()) * 1000;
    }
}
