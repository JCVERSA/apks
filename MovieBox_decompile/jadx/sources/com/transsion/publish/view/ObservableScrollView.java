package com.transsion.publish.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;

public class ObservableScrollView extends ScrollView {
    public static final int SCROLL_DOWN = 16;
    public static final int SCROLL_UP = 1;

    private a f48557a;

    public interface a {
        void a(int i10);
    }

    public ObservableScrollView(Context context) {
        super(context);
    }

    @Override
    protected void onScrollChanged(int i10, int i11, int i12, int i13) {
        a aVar;
        super.onScrollChanged(i10, i11, i12, i13);
        if (i13 > i11 && i13 - i11 > 40) {
            a aVar2 = this.f48557a;
            if (aVar2 != null) {
                aVar2.a(16);
                return;
            }
            return;
        }
        if (i13 >= i11 || i11 - i13 <= 40 || (aVar = this.f48557a) == null) {
            return;
        }
        aVar.a(1);
    }

    public void setScrollListener(a aVar) {
        this.f48557a = aVar;
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }
}
