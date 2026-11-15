package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;

public class AppCompatRatingBar extends RatingBar {

    private final l f1382a;

    public AppCompatRatingBar(@NonNull Context context) {
        this(context, null);
    }

    @Override
    protected synchronized void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        Bitmap bitmapB = this.f1382a.b();
        if (bitmapB != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmapB.getWidth() * getNumStars(), i10, 0), getMeasuredHeight());
        }
    }

    public AppCompatRatingBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.ratingBarStyle);
    }

    public AppCompatRatingBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        f0.a(this, getContext());
        l lVar = new l(this);
        this.f1382a = lVar;
        lVar.c(attributeSet, i10);
    }
}
