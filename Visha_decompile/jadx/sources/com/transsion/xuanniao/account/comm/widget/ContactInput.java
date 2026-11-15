package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.xuanniao.account.R;
import defpackage.kp7;
import defpackage.rm7;

public class ContactInput extends FrameLayout {
    public EditText OppO00p;
    public a OppO0O0;
    public c OppO0OO;

    public interface a {
        void a();
    }

    public class b extends rm7 {
        public b() {
        }

        @Override
        public void b(View view) {
            a aVar = ContactInput.this.OppO0O0;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    public interface c {
    }

    public class d implements View.OnFocusChangeListener {
        public d() {
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            ContactInput.this.findViewById(R.id.line).setBackgroundColor(ContactInput.this.getResources().getColor(z ? R.color.xn_line_s : R.color.xn_line));
            ((AppCompatImageView) ContactInput.this.findViewById(R.id.startLogo)).getDrawable().setTint(ContactInput.this.getResources().getColor(z ? R.color.xn_input_logo_color_s : R.color.xn_input_logo_color, null));
            c cVar = ContactInput.this.OppO0OO;
            if (cVar != null) {
                ((kp7) cVar).a.r = z;
            }
        }
    }

    public ContactInput(@NonNull Context context) {
        super(context);
    }

    public final void OppO00p(TypedArray typedArray) {
        String string = typedArray.getString(R.styleable.InputView_hint_resource);
        findViewById(R.id.line).setVisibility(typedArray.getBoolean(R.styleable.InputView_show_line, true) ? 0 : 4);
        if (string != null && !string.isEmpty()) {
            ((EditText) findViewById(R.id.fullNameEdit)).setHint(string);
        }
        typedArray.recycle();
    }

    public EditText getEdit() {
        return this.OppO00p;
    }

    public String getText() {
        return this.OppO00p.getText().toString();
    }

    public void setClickContact(a aVar) {
        this.OppO0O0 = aVar;
    }

    public void setEditFocus(c cVar) {
        this.OppO0OO = cVar;
    }

    public void setStartLogoVisible(int i) {
        findViewById(R.id.startLogo).setVisibility(i);
    }

    public void setText(String str) {
        this.OppO00p.setText(str);
        this.OppO00p.setSelection(this.OppO00p.getText().length());
    }

    public ContactInput(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.xn_contact_input, (ViewGroup) this, true);
        OppO00p(context.obtainStyledAttributes(attributeSet, R.styleable.InputView));
        OppO00p();
    }

    public final void OppO00p() {
        EditText editText = (EditText) findViewById(R.id.fullNameEdit);
        this.OppO00p = editText;
        editText.setOnFocusChangeListener(new d());
        int i = R.id.logo;
        findViewById(i).setVisibility(4);
        findViewById(i).setOnClickListener(new b());
    }
}
