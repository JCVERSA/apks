package com.transsion.vishaplayersdk.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;

public class LoadingLayer extends LinearLayout {
    private ImageView mBack;
    private boolean mInflated;
    boolean mIsHor;
    boolean mIsOnlyNet;
    private ImageView mLogoIv;
    private TextView mNetSpeed;
    private int type;

    public LoadingLayer(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsOnlyNet = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LoadingLayer);
        this.mIsHor = typedArrayObtainStyledAttributes.getBoolean(R.styleable.LoadingLayer_orihor, false);
        typedArrayObtainStyledAttributes.recycle();
        setOrientation(1);
    }

    private void ensureInflated() {
        if (this.mInflated) {
            return;
        }
        this.mInflated = true;
        View viewInflate = View.inflate(getContext(), R.layout.layout_loading, this);
        this.mNetSpeed = (TextView) viewInflate.findViewById(R.id.net_speed);
        setBackground(getResources().getDrawable(R.color.black, null));
        this.mLogoIv = (ImageView) viewInflate.findViewById(R.id.logo);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.load_back);
        this.mBack = imageView;
        imageView.setVisibility(this.mIsHor ? 0 : 8);
    }

    public ImageView getLoadingBack() {
        ensureInflated();
        return this.mBack;
    }

    public TextView getNetSpeedTextView() {
        ensureInflated();
        return this.mNetSpeed;
    }

    public boolean isBuffering() {
        return this.mIsOnlyNet;
    }

    public void setPreparedLoading(boolean z) {
        ensureInflated();
        if (PlayHandler.getInstance().mIsPip) {
            this.mBack.setVisibility(8);
            this.mLogoIv.setVisibility(8);
            this.mNetSpeed.setVisibility(8);
            return;
        }
        this.mIsOnlyNet = z;
        if (z) {
            setBackground(getResources().getDrawable(R.color.transparent, null));
            this.mBack.setVisibility(8);
            this.mLogoIv.setVisibility(8);
        } else {
            setBackground(getResources().getDrawable(R.color.black, null));
            if (this.mIsHor) {
                this.mBack.setVisibility(0);
            }
            this.mLogoIv.setVisibility(0);
        }
    }

    public LoadingLayer(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIsOnlyNet = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LoadingLayer);
        this.mIsHor = typedArrayObtainStyledAttributes.getBoolean(R.styleable.LoadingLayer_orihor, false);
        typedArrayObtainStyledAttributes.recycle();
        setOrientation(1);
    }
}
