package com.transsion.xuanniao.account.comm.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;

public class NoWifiPage extends FrameLayout {
    public b OppO00p;
    public boolean OppO0O0;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            b bVar = NoWifiPage.this.OppO00p;
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    public interface b {
        void a();
    }

    public NoWifiPage(@NonNull Context context) {
        super(context);
        OppO00p();
    }

    public final void OppO00p() {
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.xn_no_wifi_page, (ViewGroup) this, true);
        findViewById(R.id.reLoading).setOnClickListener(new a());
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
    }

    public void OppO0O0(Activity activity) {
        if (this.OppO0O0) {
            return;
        }
        ((ViewGroup) activity.findViewById(android.R.id.content)).addView(this, -1, -1);
        this.OppO0O0 = true;
    }

    public void setReload(b bVar) {
        this.OppO00p = bVar;
    }

    public NoWifiPage(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        OppO00p();
    }

    public NoWifiPage(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        OppO00p();
    }

    public void OppO00p(Activity activity) {
        if (this.OppO0O0) {
            ((ViewGroup) activity.findViewById(android.R.id.content)).removeView(this);
            this.OppO0O0 = false;
        }
    }
}
