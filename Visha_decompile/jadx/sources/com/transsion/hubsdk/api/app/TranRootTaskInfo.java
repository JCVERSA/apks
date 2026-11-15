package com.transsion.hubsdk.api.app;

import android.content.ComponentName;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;

public class TranRootTaskInfo implements Parcelable {
    public static final Parcelable.Creator<TranRootTaskInfo> CREATOR = new Parcelable.Creator<TranRootTaskInfo>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TranRootTaskInfo createFromParcel(Parcel parcel) {
            return new TranRootTaskInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TranRootTaskInfo[] newArray(int i) {
            return new TranRootTaskInfo[i];
        }
    };
    public Rect mBounds = new Rect();
    public Rect[] mChildTaskBounds;
    public int[] mChildTaskIds;
    public String[] mChildTaskNames;
    public int[] mChildTaskUserIds;
    public int mPosition;
    public int mTaskId;
    public ComponentName mTopActivity;
    public String mTopActivityString;
    public boolean mVisible;
    public int mWindowingMode;

    public TranRootTaskInfo() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Rect getBounds() {
        return this.mBounds;
    }

    public Rect[] getChildTaskBounds() {
        return this.mChildTaskBounds;
    }

    public int[] getChildTaskIds() {
        return this.mChildTaskIds;
    }

    public String[] getChildTaskNames() {
        return this.mChildTaskNames;
    }

    public int[] getChildTaskUserIds() {
        return this.mChildTaskUserIds;
    }

    public int getPosition() {
        return this.mPosition;
    }

    public int getTaskId() {
        return this.mTaskId;
    }

    public ComponentName getTopActivity() {
        return this.mTopActivity;
    }

    public String getTopActivityString() {
        return this.mTopActivityString;
    }

    public int getWindowingMode() {
        return this.mWindowingMode;
    }

    public boolean isVisible() {
        return this.mVisible;
    }

    public void readFromParcel(Parcel parcel) {
        this.mTopActivityString = parcel.readString();
        this.mTopActivity = ComponentName.readFromParcel(parcel);
        Parcelable.Creator creator = Rect.CREATOR;
        this.mBounds = (Rect) parcel.readTypedObject(creator);
        this.mChildTaskIds = parcel.createIntArray();
        this.mChildTaskNames = parcel.createStringArray();
        this.mChildTaskBounds = (Rect[]) parcel.createTypedArray(creator);
        this.mChildTaskUserIds = parcel.createIntArray();
        this.mVisible = parcel.readInt() > 0;
        this.mPosition = parcel.readInt();
        this.mWindowingMode = parcel.readInt();
        this.mTaskId = parcel.readInt();
    }

    public void setBounds(Rect rect) {
        this.mBounds = rect;
    }

    public void setChildTaskBounds(Rect[] rectArr) {
        this.mChildTaskBounds = rectArr;
    }

    public void setChildTaskIds(int[] iArr) {
        this.mChildTaskIds = iArr;
    }

    public void setChildTaskNames(String[] strArr) {
        this.mChildTaskNames = strArr;
    }

    public void setChildTaskUserIds(int[] iArr) {
        this.mChildTaskUserIds = iArr;
    }

    public void setPosition(int i) {
        this.mPosition = i;
    }

    public void setTaskId(int i) {
        this.mTaskId = i;
    }

    public void setTopActivity(ComponentName componentName) {
        this.mTopActivity = componentName;
    }

    public void setTopActivityString(String str) {
        this.mTopActivityString = str;
    }

    public void setVisible(boolean z) {
        this.mVisible = z;
    }

    public void setWindowingMode(int i) {
        this.mWindowingMode = i;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        ComponentName.writeToParcel(this.mTopActivity, parcel);
        parcel.writeString(this.mTopActivityString);
        parcel.writeTypedObject(this.mBounds, i);
        parcel.writeIntArray(this.mChildTaskIds);
        parcel.writeStringArray(this.mChildTaskNames);
        parcel.writeTypedArray(this.mChildTaskBounds, i);
        parcel.writeIntArray(this.mChildTaskUserIds);
        parcel.writeInt(this.mVisible ? 1 : 0);
        parcel.writeInt(this.mPosition);
        parcel.writeInt(this.mWindowingMode);
        parcel.writeInt(this.mTaskId);
    }

    public TranRootTaskInfo(String str) {
        this.mTopActivityString = str;
    }

    public TranRootTaskInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}
