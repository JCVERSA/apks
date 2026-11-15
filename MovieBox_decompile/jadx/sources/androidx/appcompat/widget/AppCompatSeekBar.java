package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;

public class AppCompatSeekBar extends SeekBar {

    private final n f1383a;

    public AppCompatSeekBar(@NonNull Context context) {
        this(context, null);
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f1383a.h();
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f1383a.i();
    }

    @Override
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f1383a.g(canvas);
    }

    public AppCompatSeekBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.seekBarStyle);
    }

    public AppCompatSeekBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        f0.a(this, getContext());
        n nVar = new n(this);
        this.f1383a = nVar;
        nVar.c(attributeSet, i10);
    }
}
