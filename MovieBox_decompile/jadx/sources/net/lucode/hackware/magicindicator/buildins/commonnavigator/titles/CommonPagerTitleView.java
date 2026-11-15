package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

public class CommonPagerTitleView extends FrameLayout implements xy.b {

    public interface a {
    }

    public interface b {
    }

    public CommonPagerTitleView(Context context) {
        super(context);
    }

    @Override
    public int getContentBottom() {
        return getBottom();
    }

    @Override
    public int getContentLeft() {
        return getLeft();
    }

    public a getContentPositionDataProvider() {
        return null;
    }

    @Override
    public int getContentRight() {
        return getRight();
    }

    @Override
    public int getContentTop() {
        return getTop();
    }

    public b getOnPagerTitleChangeListener() {
        return null;
    }

    @Override
    public void onDeselected(int i10, int i11) {
    }

    @Override
    public void onEnter(int i10, int i11, float f10, boolean z10) {
    }

    @Override
    public void onLeave(int i10, int i11, float f10, boolean z10) {
    }

    @Override
    public void onSelected(int i10, int i11) {
    }

    public void setContentPositionDataProvider(a aVar) {
    }

    public void setContentView(View view) {
        setContentView(view, null);
    }

    public void setOnPagerTitleChangeListener(b bVar) {
    }

    public void setContentView(View view, FrameLayout.LayoutParams layoutParams) {
        removeAllViews();
        if (view != null) {
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            }
            addView(view, layoutParams);
        }
    }

    public void setContentView(int i10) {
        setContentView(LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) null), null);
    }
}
