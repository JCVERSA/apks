package com.transsion.widgetthemes.util;

import android.content.res.Resources;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.transsion.widgetsThemes.R;
import java.util.ArrayList;

public class PointAnimUtil {
    public static float CIRCLE_RADIU = 0.0f;
    public static int CIRCLE_SPACING = 0;
    public static int POINT_OFFSET = 0;
    public static final int STATE_CHANGING = 4;
    public static final int STATE_SELECTED = 2;
    public static final int STATE_UNSELECTED = 1;
    private int mCenterX;
    private int mCenterY;
    private ArrayList<Point> mPoints;
    private long mStartTime;
    private final View mTargetView;
    private Point p0;
    private Point p1;
    private Point p2;
    private int mDuration = 300;
    public int mState = 1;
    private boolean mSelected = false;
    private int mLayoutDir = -1;
    private final Interpolator mInterpolator = new AccelerateInterpolator();

    public PointAnimUtil(View view) {
        this.mTargetView = view;
        Resources resources = view.getResources();
        CIRCLE_RADIU = resources.getDimension(R.dimen.os_overflowmenu_circle_radiu);
        int dimension = (int) resources.getDimension(R.dimen.os_overflowmenu_circle_spacing);
        CIRCLE_SPACING = dimension;
        POINT_OFFSET = (int) (dimension + (CIRCLE_RADIU * 2.0f));
        initPoint();
    }

    private void initLTRPostion(ArrayList<Point> arrayList) {
        int i = this.mCenterX - POINT_OFFSET;
        this.p0.setStartPos(i, i, CIRCLE_RADIU);
        int i2 = this.mCenterY;
        this.p1.setStartPos(i, i2, CIRCLE_RADIU);
        int i3 = this.mCenterY + POINT_OFFSET;
        this.p2.setStartPos(i, i3, CIRCLE_RADIU);
        this.p1.setDestPos(i3, i);
        this.p2.setDestPos(i2, i2);
        arrayList.add(0, this.p0);
        arrayList.add(1, this.p1);
        arrayList.add(2, this.p2);
    }

    private void initPoint() {
        this.p0 = new Point();
        this.p1 = new Point();
        this.p2 = new Point();
    }

    private void initRTLPosition(ArrayList<Point> arrayList) {
        int i = this.mCenterX;
        int i2 = POINT_OFFSET;
        int i3 = i + i2;
        int i4 = this.mCenterY - i2;
        this.p0.setStartPos(i3, i4, CIRCLE_RADIU);
        int i5 = this.mCenterY;
        this.p1.setStartPos(i3, i5, CIRCLE_RADIU);
        this.p2.setStartPos(i3, this.mCenterY + POINT_OFFSET, CIRCLE_RADIU);
        this.p1.setDestPos(i4, i4);
        this.p2.setDestPos(i5, i5);
        arrayList.add(0, this.p0);
        arrayList.add(1, this.p1);
        arrayList.add(2, this.p2);
    }

    private void resetDestPosition(Point point, Point point2, int i) {
        if (this.mSelected) {
            this.mState = 2;
            if (this.mLayoutDir == 0) {
                point.setDestPos(this.mCenterX - POINT_OFFSET, this.mCenterY);
                int i2 = this.mCenterX;
                int i3 = POINT_OFFSET;
                point2.setDestPos(i2 - i3, this.mCenterY + i3);
            } else {
                point.setDestPos(this.mCenterX + POINT_OFFSET, this.mCenterY);
                int i4 = this.mCenterX;
                int i5 = POINT_OFFSET;
                point2.setDestPos(i4 + i5, this.mCenterY + i5);
            }
        } else {
            this.mState = 1;
            if (this.mLayoutDir == 0) {
                int i6 = this.mCenterX;
                int i7 = POINT_OFFSET;
                point.setDestPos(i6 + i7, this.mCenterY - i7);
                point2.setDestPos(this.mCenterX, this.mCenterY);
            } else {
                int i8 = this.mCenterX;
                int i9 = POINT_OFFSET;
                point.setDestPos(i8 - i9, this.mCenterY - i9);
                point2.setDestPos(this.mCenterX, this.mCenterY);
            }
        }
        this.mTargetView.invalidate();
    }

    public void abort() {
        if (this.mState != 4) {
            return;
        }
        if (this.mSelected) {
            this.mState = 2;
        } else {
            this.mState = 1;
        }
        resetDestPosition(this.mPoints.get(1), this.mPoints.get(2), 0);
    }

    public void setCetnerPosition(int i, int i2) {
        this.mCenterX = i;
        this.mCenterY = i2;
    }

    public void setDuration(int i) {
        this.mDuration = i;
    }

    public void setPointDir(int i, ArrayList<Point> arrayList) {
        if (this.mLayoutDir != i) {
            arrayList.clear();
            if (i == 0) {
                initLTRPostion(arrayList);
            } else {
                initRTLPosition(arrayList);
            }
        }
        this.mPoints = arrayList;
        this.mLayoutDir = i;
    }

    public void start(boolean z, int i) {
        if (this.mState == 4) {
            resetDestPosition(this.mPoints.get(1), this.mPoints.get(2), 1);
        }
        this.mSelected = z;
        this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
        this.mState = 4;
        update();
    }

    public void update() {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float interpolation = this.mInterpolator.getInterpolation(Math.min((jCurrentAnimationTimeMillis - this.mStartTime) / (this.mDuration * 1.0f), 1.0f));
        if (this.mPoints.size() < 3) {
            return;
        }
        Point point = this.mPoints.get(1);
        int i = point.x;
        point.x = (int) (i + ((point.x1 - i) * interpolation));
        int i2 = point.y;
        point.y = (int) (i2 + ((point.y1 - i2) * interpolation));
        Point point2 = this.mPoints.get(2);
        int i3 = point2.x;
        point2.x = (int) (i3 + ((point2.x1 - i3) * interpolation));
        int i4 = point2.y;
        point2.y = (int) (i4 + ((point2.y1 - i4) * interpolation));
        this.mTargetView.invalidate();
        if (jCurrentAnimationTimeMillis - this.mStartTime >= this.mDuration) {
            resetDestPosition(point, point2, 0);
        }
    }
}
