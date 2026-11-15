package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.xuanniao.account.R;
import defpackage.rm7;

public class CaptchaCodeInput extends FrameLayout {
    public EditText OppO00p;
    public ImageView OppO0O0;
    public c OppO0OO;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            c cVar;
            if (view.getId() != R.id.captcha || (cVar = CaptchaCodeInput.this.OppO0OO) == null) {
                return;
            }
            cVar.a();
        }
    }

    public class b implements View.OnFocusChangeListener {
        public b() {
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            CaptchaCodeInput.this.findViewById(R.id.line).setBackgroundColor(CaptchaCodeInput.this.getResources().getColor(z ? R.color.xn_line_s : R.color.xn_line));
            ((AppCompatImageView) CaptchaCodeInput.this.findViewById(R.id.captchaLogo)).getDrawable().setTint(CaptchaCodeInput.this.getResources().getColor(z ? R.color.xn_input_logo_color_s : R.color.xn_input_logo_color, null));
        }
    }

    public interface c {
        void a();
    }

    public CaptchaCodeInput(Context context) {
        super(context);
    }

    public final void OppO00p(TypedArray typedArray) {
        String string = typedArray.getString(R.styleable.InputView_hint_resource);
        findViewById(R.id.line).setVisibility(typedArray.getBoolean(R.styleable.InputView_show_line, true) ? 0 : 4);
        if (string != null && !string.isEmpty()) {
            ((EditText) findViewById(R.id.edit)).setHint(string);
        }
        typedArray.recycle();
    }

    public c getCaptchaListener() {
        return this.OppO0OO;
    }

    public EditText getEdit() {
        return this.OppO00p;
    }

    public String getText() {
        return this.OppO00p.getText().toString();
    }

    public void setCaptchaListener(c cVar) {
        this.OppO0OO = cVar;
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.OppO0O0.setImageBitmap(bitmap);
    }

    public void setImageResource(int i) {
        this.OppO0O0.setImageResource(i);
    }

    public void setText(String str) {
        this.OppO00p.setText(str);
        this.OppO00p.setSelection(this.OppO00p.getText().length());
    }

    public CaptchaCodeInput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.xn_view_captcha_input, (ViewGroup) this, true);
        OppO00p(context.obtainStyledAttributes(attributeSet, R.styleable.InputView));
        OppO00p();
    }

    public final void OppO00p() {
        this.OppO00p = (EditText) findViewById(R.id.edit);
        ImageView imageView = (ImageView) findViewById(R.id.captcha);
        this.OppO0O0 = imageView;
        imageView.setOnClickListener(new a());
        this.OppO00p.setOnFocusChangeListener(new b());
        if (getContext().getResources().getConfiguration().getLayoutDirection() == 1) {
            this.OppO0O0.setScaleType(ImageView.ScaleType.FIT_START);
        } else {
            this.OppO0O0.setScaleType(ImageView.ScaleType.FIT_END);
        }
    }
}
