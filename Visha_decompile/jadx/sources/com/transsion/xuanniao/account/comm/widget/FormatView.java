package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.xuanniao.account.R;
import defpackage.wo7;
import java.util.ArrayList;

public class FormatView extends FrameLayout {
    public ListView OppO00p;
    public wo7 OppO0O0;

    public FormatView(@NonNull Context context) {
        super(context);
    }

    public final void OppO00p() {
        this.OppO00p = (ListView) findViewById(R.id.listView);
    }

    public void setError(int i) {
        wo7 wo7Var = this.OppO0O0;
        if (wo7Var != null) {
            wo7Var.d = i;
            wo7Var.notifyDataSetChanged();
        }
    }

    public void setFormats(ArrayList<String> arrayList) {
        wo7 wo7Var = this.OppO0O0;
        if (wo7Var != null) {
            wo7Var.b = arrayList;
            wo7Var.notifyDataSetChanged();
        } else {
            wo7 wo7Var2 = new wo7(getContext());
            this.OppO0O0 = wo7Var2;
            wo7Var2.b = arrayList;
            this.OppO00p.setAdapter((ListAdapter) wo7Var2);
        }
    }

    public void setTextStyle(int i) {
        this.OppO0O0.e = i;
    }

    public void setTextStyleError(int i) {
        this.OppO0O0.f = i;
    }

    public FormatView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        ((LayoutInflater) getContext().getApplicationContext().getSystemService("layout_inflater")).inflate(R.layout.xn_format_view, (ViewGroup) this, true);
        OppO00p();
    }
}
