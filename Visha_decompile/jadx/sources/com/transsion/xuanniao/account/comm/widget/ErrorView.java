package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.xuanniao.account.R;

public class ErrorView extends FrameLayout {
    public TextView OppO00p;

    public ErrorView(@NonNull Context context) {
        super(context);
    }

    public final void OppO00p() {
        this.OppO00p = (TextView) findViewById(R.id.error);
    }

    public void setErrorText(String str) {
        TextView textView = this.OppO00p;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public ErrorView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.xn_error_view, (ViewGroup) this, true);
        OppO00p();
    }
}
