package com.transsion.shorttv.base.widget.toast.core;

import android.R;
import android.app.Application;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

public class e extends Toast implements kr.a {

    private TextView f50973a;

    public e(Application application) {
        super(application);
    }

    @Override
    public boolean a() {
        return false;
    }

    public TextView b(View view) {
        if (!(view instanceof TextView)) {
            if (view.findViewById(R.id.message) instanceof TextView) {
                return (TextView) view.findViewById(R.id.message);
            }
            throw new IllegalArgumentException("You must include a TextView with an ID value of android.R.id.message");
        }
        if (view.getId() == -1) {
            view.setId(R.id.message);
        } else if (view.getId() != 16908299) {
            throw new IllegalArgumentException("You must set the ID value of TextView to android.R.id.message");
        }
        return (TextView) view;
    }

    @Override
    public void setText(CharSequence charSequence) {
        super.setText(charSequence);
        TextView textView = this.f50973a;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    @Override
    public void setView(View view) {
        super.setView(view);
        if (view == null) {
            this.f50973a = null;
        } else {
            this.f50973a = b(view);
        }
    }
}
