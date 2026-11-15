package com.avery.subtitle.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.avery.subtitle.DefaultSubtitleEngine;
import com.avery.subtitle.b;
import k5.a;

public class SimpleSubtitleView extends AppCompatTextView implements b, b.a, b.InterfaceC0162b {

    private b f19320a;

    private String f19321b;

    private boolean f19322c;

    private BgBubbleDrawable f19323d;

    private boolean f19324e;

    private boolean f19325f;

    private int f19326g;

    private int f19327h;

    private int f19328i;

    public SimpleSubtitleView(Context context) {
        super(context);
        this.f19324e = false;
        this.f19325f = false;
        this.f19326g = 0;
        this.f19327h = 0;
        this.f19328i = 0;
        b();
    }

    private void b() {
        DefaultSubtitleEngine defaultSubtitleEngine = new DefaultSubtitleEngine();
        this.f19320a = defaultSubtitleEngine;
        defaultSubtitleEngine.setOnSubtitlePreparedListener(this);
        this.f19320a.setOnSubtitleChangeListener(this);
    }

    private void c() {
        d(getWidth(), getHeight());
    }

    private void d(int i10, int i11) {
        e(0, i10, 0, i11);
    }

    private void e(int i10, int i11, int i12, int i13) {
        if (this.f19324e || this.f19325f) {
            this.f19325f = false;
            BgBubbleDrawable bgBubbleDrawableT = new BgBubbleDrawable.b().u(new RectF(i10, i12, i11, i13)).s(BgBubbleDrawable.BubbleType.COLOR).p(this.f19328i).q(BgBubbleDrawable.ArrowLocation.NONE).r(this.f19326g).t();
            this.f19323d = bgBubbleDrawableT;
            bgBubbleDrawableT.setAlpha(this.f19327h);
        }
    }

    public void closeBg() {
        this.f19324e = false;
        this.f19325f = true;
        this.f19326g = 0;
        this.f19327h = 0;
        this.f19328i = 0;
        requestLayout();
    }

    @Override
    public void destroy() {
        this.f19320a.destroy();
    }

    @Override
    public void initSubtitle(a aVar, boolean z10) {
        this.f19320a.initSubtitle(aVar, z10);
    }

    @Override
    public void layout(int i10, int i11, int i12, int i13) {
        super.layout(i10, i11, i12, i13);
        c();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        BgBubbleDrawable bgBubbleDrawable = this.f19323d;
        if (bgBubbleDrawable != null) {
            bgBubbleDrawable.draw(canvas);
        }
        super.onDraw(canvas);
    }

    @Override
    public void onRefreshSubtitle() {
        refreshImmediately();
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        d(i10, i11);
    }

    @Override
    public void onSubtitleChanged(@Nullable m5.b bVar) {
        if (this.f19322c) {
            return;
        }
        if (bVar == null || TextUtils.isEmpty(bVar.f66265d)) {
            setText("");
            setVisibility(4);
        } else {
            if (TextUtils.equals(this.f19321b, bVar.f66265d)) {
                return;
            }
            setVisibility(0);
            String strReplace = bVar.f66265d.replace("\\N", "\n");
            bVar.f66265d = strReplace;
            this.f19321b = strReplace;
            if (n5.b.b(strReplace).booleanValue()) {
                setText(Html.fromHtml(bVar.f66265d));
            } else {
                setText(bVar.f66265d);
            }
        }
    }

    @Override
    public void onSubtitlePrepared() {
        start();
    }

    public void openBg() {
        this.f19324e = true;
        requestLayout();
    }

    @Override
    public void pause() {
        this.f19320a.pause();
    }

    @Override
    public void refreshImmediately() {
        this.f19320a.refreshImmediately();
    }

    @Override
    public void reset() {
        this.f19320a.reset();
    }

    @Override
    public void resume() {
        this.f19320a.resume();
    }

    @Override
    public void selectSubtitle(String str, String str2, k5.b bVar) {
        this.f19320a.selectSubtitle(str, str2, bVar);
    }

    public void setBgAlpha(int i10) {
        if (this.f19324e) {
            this.f19327h = i10;
            requestLayout();
        }
    }

    public void setBgColor(int i10) {
        if (this.f19324e) {
            this.f19326g = i10;
            requestLayout();
        }
    }

    public void setBgdRadius(int i10) {
        if (this.f19324e) {
            this.f19328i = i10;
            requestLayout();
        }
    }

    @Override
    public void setDefaultSubtitle(String str) {
        this.f19320a.setDefaultSubtitle(str);
    }

    @Override
    public void setOnSubtitleChangeListener(b.a aVar) {
        this.f19320a.setOnSubtitleChangeListener(aVar);
    }

    @Override
    public void setOnSubtitlePreparedListener(b.InterfaceC0162b interfaceC0162b) {
        this.f19320a.setOnSubtitlePreparedListener(interfaceC0162b);
    }

    @Override
    public void setSubtitlePath(String str, String str2) {
        this.f19320a.setSubtitlePath(str, str2);
    }

    @Override
    public void start() {
        this.f19320a.start();
    }

    @Override
    public void stop() {
        this.f19320a.stop();
    }

    @Override
    public void subtitleDelay(long j10) {
        this.f19320a.subtitleDelay(j10);
    }

    public void turnOff(boolean z10) {
        this.f19322c = z10;
        setText("");
        setVisibility(4);
    }

    public SimpleSubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19324e = false;
        this.f19325f = false;
        this.f19326g = 0;
        this.f19327h = 0;
        this.f19328i = 0;
        b();
    }

    public SimpleSubtitleView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f19324e = false;
        this.f19325f = false;
        this.f19326g = 0;
        this.f19327h = 0;
        this.f19328i = 0;
        b();
    }
}
