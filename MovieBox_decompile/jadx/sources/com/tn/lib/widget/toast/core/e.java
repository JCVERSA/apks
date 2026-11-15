package com.tn.lib.widget.toast.core;

import android.R;
import android.app.Application;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

public class e extends Toast implements gh.a {

    private View f40476a;

    private TextView f40477b;

    public e(Application application) {
        super(application);
    }

    @Override
    public boolean a() {
        return false;
    }

    @Override
    public void b(View view) {
        setView(view);
    }

    @Override
    public View c() {
        return this.f40476a;
    }

    public TextView d(View view) {
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
        try {
            super.setText(charSequence);
        } catch (Exception unused) {
        }
        TextView textView = this.f40477b;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    @Override
    public void setView(View view) {
        try {
            super.setView(view);
        } catch (Exception unused) {
        }
        if (view == null) {
            this.f40477b = null;
        } else {
            this.f40476a = view;
            this.f40477b = d(view);
        }
    }
}
