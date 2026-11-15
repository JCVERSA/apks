package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.ikd;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000e\u0010\u000bR\u0016\u0010\b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "", "videoWidth", "videoHeight", "Lzfb;", "setSize", "(II)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "b", "I", "c", "", "d", "Ljava/lang/String;", AbstractID3v1Tag.TAG, "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ScaleImageView extends AppCompatImageView {

    public int videoHeight;

    public int videoWidth;

    public final String TAG;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScaleImageView(Context context) {
        super(context);
        y45.j(context, "context");
        this.TAG = "ScaleImageView";
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i;
        float rotation = getRotation();
        if (rotation == 90.0f || rotation == 270.0f) {
            heightMeasureSpec = widthMeasureSpec;
            widthMeasureSpec = heightMeasureSpec;
        }
        int defaultSize = View.getDefaultSize(this.videoWidth, widthMeasureSpec);
        int defaultSize2 = View.getDefaultSize(this.videoHeight, heightMeasureSpec);
        if (this.videoWidth > 0 && this.videoHeight > 0) {
            int mode = View.MeasureSpec.getMode(widthMeasureSpec);
            int size = View.MeasureSpec.getSize(widthMeasureSpec);
            int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
            int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
            ikd.b().d(this.TAG, "widthSpecMode --->" + mode);
            ikd.b().d(this.TAG, "heightSpecMode --->" + mode2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                ikd.b().d(this.TAG, "onMeasure --->1");
                ikd.b().d(this.TAG, "widthSpecSize --->" + size + " heightSpecSize--->" + size2);
                int i2 = this.videoWidth;
                int i3 = i2 * size2;
                int i4 = this.videoHeight;
                int i5 = size * i4;
                if (i3 < i5) {
                    defaultSize = i3 / i4;
                } else {
                    if (i3 > i5) {
                        int i6 = i5 / i2;
                        defaultSize = size;
                        defaultSize2 = i6;
                    } else {
                        defaultSize = size;
                    }
                    ikd.b().d(this.TAG, "width --->" + defaultSize + " height--->" + defaultSize2);
                }
                defaultSize2 = size2;
                ikd.b().d(this.TAG, "width --->" + defaultSize + " height--->" + defaultSize2);
            } else if (mode == 1073741824) {
                ikd.b().d(this.TAG, "onMeasure --->2");
                int i7 = this.videoHeight;
                int i8 = this.videoWidth;
                int i9 = (size * i7) / i8;
                if (mode2 != Integer.MIN_VALUE || i9 <= size2) {
                    defaultSize = size;
                    defaultSize2 = i9;
                } else {
                    defaultSize = (i8 * size2) / i7;
                    defaultSize2 = size2;
                }
            } else {
                if (mode2 == 1073741824) {
                    ikd.b().d(this.TAG, "onMeasure --->3");
                    int i10 = this.videoWidth;
                    int i11 = this.videoHeight;
                    int i12 = (size2 * i10) / i11;
                    if (mode != Integer.MIN_VALUE || i12 <= size) {
                        defaultSize2 = size2;
                        defaultSize = i12;
                    } else {
                        defaultSize2 = (i11 * size) / i10;
                    }
                } else {
                    int i13 = this.videoWidth;
                    int i14 = this.videoHeight;
                    if (mode2 != Integer.MIN_VALUE || i14 <= size2) {
                        i = i13;
                        size2 = i14;
                    } else {
                        i = (size2 * i13) / i14;
                    }
                    if (mode != Integer.MIN_VALUE || i <= size) {
                        defaultSize = i;
                        defaultSize2 = size2;
                    } else {
                        defaultSize2 = (i14 * size) / i13;
                    }
                }
                defaultSize = size;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public final void setSize(int videoWidth, int videoHeight) {
        ikd.b().d(this.TAG, "videoWidth = " + videoWidth + "    videoHeight=" + videoHeight);
        if (this.videoWidth == videoWidth || this.videoHeight == videoHeight) {
            return;
        }
        this.videoWidth = videoWidth;
        this.videoHeight = videoHeight;
        requestLayout();
    }
}
