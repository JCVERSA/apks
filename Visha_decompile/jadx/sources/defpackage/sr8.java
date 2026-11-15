package defpackage;

import android.graphics.RectF;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import com.app.hubert.guide.core.Controller;
import com.app.hubert.guide.model.HighLight;

public abstract class sr8 {
    public int gravity;
    public HighLight highLight;

    @LayoutRes
    public int layout;
    public int padding;

    public static class a {
        public int a;
        public int b;
        public int c;
        public int d;
        public int e;

        public String toString() {
            return "MarginInfo{leftMargin=" + this.a + ", topMargin=" + this.b + ", rightMargin=" + this.c + ", bottomMargin=" + this.d + ", gravity=" + this.e + '}';
        }
    }

    public sr8(int i, int i2) {
        this.layout = i;
        this.gravity = i2;
    }

    public final a a(int i, ViewGroup viewGroup, View view) {
        a aVar = new a();
        RectF rectFB = this.highLight.b(viewGroup);
        if (i == 3) {
            aVar.e = 5;
            aVar.c = (int) ((viewGroup.getWidth() - rectFB.left) + this.padding);
            aVar.b = (int) rectFB.top;
        } else if (i == 5) {
            aVar.a = (int) (rectFB.right + this.padding);
            aVar.b = (int) rectFB.top;
        } else if (i == 48) {
            aVar.e = 80;
            aVar.d = (int) ((viewGroup.getHeight() - rectFB.top) + this.padding);
            aVar.a = (int) rectFB.left;
        } else if (i == 80) {
            aVar.b = (int) (rectFB.bottom + this.padding);
            aVar.a = (int) rectFB.left;
        }
        return aVar;
    }

    public final View getGuideLayout(ViewGroup viewGroup, Controller controller) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.layout, viewGroup, false);
        onLayoutInflated(viewInflate);
        onLayoutInflated(viewInflate, controller);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewInflate.getLayoutParams();
        a aVarA = a(this.gravity, viewGroup, viewInflate);
        dq5.b(aVarA.toString());
        offsetMargin(aVarA, viewGroup, viewInflate);
        layoutParams.gravity = aVarA.e;
        layoutParams.leftMargin += aVarA.a;
        layoutParams.topMargin += aVarA.b;
        layoutParams.rightMargin += aVarA.c;
        layoutParams.bottomMargin += aVarA.d;
        viewInflate.setLayoutParams(layoutParams);
        return viewInflate;
    }

    public void offsetMargin(a aVar, ViewGroup viewGroup, View view) {
    }

    @Deprecated
    public void onLayoutInflated(View view) {
    }

    public void onLayoutInflated(View view, Controller controller) {
    }

    public sr8(int i, int i2, int i3) {
        this.layout = i;
        this.gravity = i2;
        this.padding = i3;
    }
}
