package com.transsion.widgets.popup;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;

public class BasePopupWindow {
    private int mAnimationStyle;
    private Drawable mBackgroundDrawable;
    private Context mContext;
    private int mElevation;
    private int mGravity;
    private int mHeight;
    private int mLayoutId;
    private int mOffsetX;
    private int mOffsetY;
    private PopupWindow.OnDismissListener mOnDismissListener;
    private boolean mOutsideTouchable;
    private PopupWindow mPopupWindow;
    private View mTarget;
    private boolean mTouchable;
    private View mView;
    private int mWidth;

    public static class Builder {
        private int animationStyle;
        private View contentView;
        private final Context context;
        private PopupWindow.OnDismissListener onDismissListener;
        private final PopupWindow popupWindow;
        private View target;
        private boolean outsideTouchable = true;
        private boolean touchable = true;
        private Drawable backgroundDrawable = new ColorDrawable(0);
        private int width = 0;
        private int height = 0;
        private int layoutId = -1;
        private int offsetX = 0;
        private int offsetY = 0;
        private int elevation = 0;
        private int gravity = 7;

        public Builder(Context context) {
            this.context = context;
            this.popupWindow = new PopupWindow(context);
        }

        private void setPopupWindowConfig(BasePopupWindow basePopupWindow) {
            Context context = this.context;
            if (context == null) {
                throw new CusException("context can't be null.");
            }
            basePopupWindow.mContext = context;
            View view = this.contentView;
            if (view != null && this.layoutId != -1) {
                throw new CusException("setContentView and setLayoutId can't be used together.");
            }
            if (view == null && this.layoutId == -1) {
                throw new CusException("contentView or layoutId can't be null.");
            }
            if (this.target == null) {
                throw new CusException("please set a target view");
            }
            basePopupWindow.mWidth = this.width;
            basePopupWindow.mHeight = this.height;
            basePopupWindow.mView = this.contentView;
            basePopupWindow.mLayoutId = this.layoutId;
            basePopupWindow.mPopupWindow = this.popupWindow;
            basePopupWindow.mOutsideTouchable = this.outsideTouchable;
            basePopupWindow.mBackgroundDrawable = this.backgroundDrawable;
            basePopupWindow.mOnDismissListener = this.onDismissListener;
            basePopupWindow.mAnimationStyle = this.animationStyle;
            basePopupWindow.mTouchable = this.touchable;
            basePopupWindow.mOffsetX = this.offsetX;
            basePopupWindow.mOffsetY = this.offsetY;
            basePopupWindow.mElevation = this.elevation;
            basePopupWindow.mTarget = this.target;
            basePopupWindow.mGravity = this.gravity;
        }

        public BasePopupWindow build() {
            BasePopupWindow basePopupWindow = new BasePopupWindow();
            setPopupWindowConfig(basePopupWindow);
            return basePopupWindow;
        }

        public Builder setAnimationStyle(int i) {
            this.animationStyle = i;
            return this;
        }

        public Builder setBackgroundDrawable(Drawable drawable) {
            this.backgroundDrawable = drawable;
            return this;
        }

        public Builder setContentView(View view) {
            this.contentView = view;
            return this;
        }

        public Builder setElevation(int i) {
            this.elevation = i;
            return this;
        }

        public Builder setGravity(int i) {
            this.gravity = i;
            return this;
        }

        public Builder setHeight(int i) {
            this.height = i;
            return this;
        }

        public Builder setLayoutId(int i) {
            this.layoutId = i;
            return this;
        }

        public Builder setOffsetX(int i) {
            this.offsetX = i;
            return this;
        }

        public Builder setOffsetY(int i) {
            this.offsetY = i;
            return this;
        }

        public Builder setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
            this.onDismissListener = onDismissListener;
            return this;
        }

        public Builder setOutsideTouchable(boolean z) {
            this.outsideTouchable = z;
            return this;
        }

        public Builder setTarget(View view) {
            this.target = view;
            return this;
        }

        public Builder setTouchable(boolean z) {
            this.touchable = z;
            return this;
        }

        public Builder setWidth(int i) {
            this.width = i;
            return this;
        }
    }

    public static Builder create(Context context) {
        return new Builder(context);
    }

    public void dismiss() {
        PopupWindow popupWindow = this.mPopupWindow;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    public void show() {
        Activity activity;
        Activity activity2;
        Activity activity3;
        View view = this.mView;
        if (view != null) {
            this.mPopupWindow.setContentView(view);
        } else if (this.mLayoutId != -1) {
            this.mPopupWindow.setContentView(LayoutInflater.from(this.mContext).inflate(this.mLayoutId, (ViewGroup) null));
        }
        int i = this.mWidth;
        if (i != 0) {
            this.mPopupWindow.setWidth(i);
        }
        int i2 = this.mHeight;
        if (i2 != 0) {
            this.mPopupWindow.setHeight(i2);
        }
        this.mPopupWindow.setBackgroundDrawable(this.mBackgroundDrawable);
        this.mPopupWindow.setOutsideTouchable(this.mOutsideTouchable);
        this.mPopupWindow.setOnDismissListener(this.mOnDismissListener);
        this.mPopupWindow.setAnimationStyle(this.mAnimationStyle);
        this.mPopupWindow.setTouchable(this.mTouchable);
        this.mPopupWindow.setElevation(this.mElevation);
        this.mPopupWindow.setFocusable(true);
        int[] iArr = new int[2];
        this.mTarget.getLocationOnScreen(iArr);
        int i3 = iArr[0];
        int i4 = iArr[1];
        this.mPopupWindow.getContentView().measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = this.mPopupWindow.getContentView().getMeasuredWidth();
        int measuredHeight = this.mPopupWindow.getContentView().getMeasuredHeight();
        int width = this.mTarget.getWidth();
        int height = this.mTarget.getHeight();
        switch (this.mGravity) {
            case 0:
                this.mPopupWindow.showAtLocation(this.mTarget, 0, i3 + this.mOffsetX, (i4 - measuredHeight) + this.mOffsetY);
                break;
            case 1:
                this.mPopupWindow.showAtLocation(this.mTarget, 0, i3 + ((width - measuredWidth) / 2) + this.mOffsetX, (i4 - measuredHeight) + this.mOffsetY);
                break;
            case 2:
                this.mPopupWindow.showAtLocation(this.mTarget, 0, ((i3 + width) - measuredWidth) + this.mOffsetX, (i4 - measuredHeight) + this.mOffsetY);
                break;
            case 3:
                this.mPopupWindow.showAtLocation(this.mTarget, 0, i3 + this.mOffsetX, i4 + this.mOffsetY);
                break;
            case 4:
                this.mPopupWindow.showAtLocation(this.mTarget, 0, i3 + (width - measuredWidth) + this.mOffsetX, i4 + this.mOffsetY);
                break;
            case 5:
                this.mPopupWindow.showAtLocation(this.mTarget, 0, i3 + this.mOffsetX, i4 + (width - measuredHeight) + this.mOffsetY);
                break;
            case 6:
                this.mPopupWindow.showAtLocation(this.mTarget, 0, i3 + (width - measuredWidth) + this.mOffsetX, i4 + (height - measuredHeight) + this.mOffsetY);
                break;
            case 7:
                this.mPopupWindow.showAtLocation(this.mTarget, 0, i3 + ((width - measuredWidth) / 2) + this.mOffsetX, i4 + ((height - measuredHeight) / 2) + this.mOffsetY);
                break;
            case 8:
                Context context = this.mContext;
                if ((context instanceof Activity) && (activity = (Activity) context) != null && !activity.isFinishing() && !activity.isDestroyed()) {
                    this.mPopupWindow.showAsDropDown(this.mTarget, this.mOffsetX, this.mOffsetY);
                    break;
                }
                break;
            case 9:
                int i5 = (width - measuredWidth) / 2;
                Context context2 = this.mContext;
                if ((context2 instanceof Activity) && (activity2 = (Activity) context2) != null && !activity2.isFinishing() && !activity2.isDestroyed()) {
                    this.mPopupWindow.showAsDropDown(this.mTarget, i5 + this.mOffsetX, this.mOffsetY);
                    break;
                }
                break;
            case 10:
                Context context3 = this.mContext;
                if ((context3 instanceof Activity) && (activity3 = (Activity) context3) != null && !activity3.isFinishing() && !activity3.isDestroyed()) {
                    this.mPopupWindow.showAsDropDown(this.mTarget, (width - measuredWidth) + this.mOffsetX, this.mOffsetY);
                    break;
                }
                break;
            case 11:
                if (this.mWidth == 0) {
                    this.mPopupWindow.setWidth(-1);
                }
                this.mPopupWindow.showAtLocation(this.mTarget, 80, this.mOffsetX, this.mOffsetY);
                break;
            case 12:
                if (this.mWidth == 0) {
                    this.mPopupWindow.setWidth(-1);
                }
                this.mPopupWindow.showAtLocation(this.mTarget, 48, this.mOffsetX, this.mOffsetY);
                break;
        }
    }

    private BasePopupWindow() {
    }
}
