package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.mgmi.R;
import com.mgmi.ads.api.c;

public class e6d extends o1d implements View.OnClickListener {
    public View h;
    public TextView i;

    public interface a {
        void a();

        boolean b();
    }

    public e6d(Context context, a aVar, int i) {
        super(context, aVar, i);
        d(this, new int[]{R.id.close_ad});
    }

    @Override
    public View a() {
        View viewInflate = LayoutInflater.from(this.b).inflate(R.layout.poptoolwindow, (ViewGroup) null, false);
        this.h = viewInflate;
        TextView textView = (TextView) viewInflate.findViewById(R.id.close_ad);
        this.i = textView;
        textView.setOnClickListener(this);
        return this.h;
    }

    @Override
    public int e() {
        return w3d.a(this.b, 50.0f);
    }

    @Override
    public int f() {
        return w3d.a(this.b, 120.0f);
    }

    public void h(View view) {
        int measuredWidth;
        int measuredHeight;
        int i;
        int i2;
        int i3;
        c(view.getWindowToken());
        TextView textView = this.i;
        if (textView != null) {
            textView.measure(0, 0);
            measuredWidth = this.i.getMeasuredWidth();
            measuredHeight = this.i.getMeasuredHeight();
        } else {
            measuredWidth = 1;
            measuredHeight = 1;
        }
        view.measure(0, 0);
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        if (this.g.b()) {
            Point pointD = mpd.d(c.a());
            i = pointD.y;
            i2 = pointD.x;
        } else {
            Point pointD2 = mpd.d(c.a());
            i = pointD2.x;
            i2 = pointD2.y;
        }
        int i4 = iArr[0];
        if ((i4 - measuredWidth) + measuredWidth2 <= 0) {
            i3 = 0;
        } else {
            i3 = (i <= 0 || i4 + measuredWidth2 <= i) ? (i4 + measuredWidth2) - measuredWidth : i - measuredWidth;
        }
        if (iArr[1] > (i2 - measuredHeight) - w3d.a(c.a(), 50.0f)) {
            this.e.setBackgroundResource(R.drawable.mgmi_pop_window_bg_up);
            showAtLocation(view, 0, i3, iArr[1] - measuredHeight);
            i(true);
        } else {
            this.e.setBackgroundResource(R.drawable.mgmi_pop_window_bg);
            showAtLocation(view, 0, i3, iArr[1] + measuredHeight2);
            i(false);
        }
    }

    public void i(boolean z) {
    }

    @Override
    public void onClick(View view) {
        a aVar;
        if (view.getId() != R.id.close_ad || (aVar = this.g) == null) {
            return;
        }
        aVar.a();
    }
}
