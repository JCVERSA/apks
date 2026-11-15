package com.transsion.ninegridview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.blankj.utilcode.util.a0;
import java.util.ArrayList;
import java.util.List;

public class NineGridView extends ViewGroup {
    public static final int MODE_FILL = 0;
    public static final int MODE_GRID = 1;

    private static vm.b f45750m;

    private int f45751a;

    private float f45752b;

    private int f45753c;

    private int f45754d;

    private int f45755e;

    private int f45756f;

    private int f45757g;

    private int f45758h;

    private int f45759i;

    private List f45760j;

    private List f45761k;

    private NineGridViewAdapter f45762l;

    class a implements View.OnClickListener {

        final int f45763a;

        a(int i10) {
            this.f45763a = i10;
        }

        @Override
        public void onClick(View view) {
            NineGridViewAdapter nineGridViewAdapter = NineGridView.this.f45762l;
            Context context = NineGridView.this.getContext();
            NineGridView nineGridView = NineGridView.this;
            nineGridViewAdapter.onImageItemClick(context, nineGridView, this.f45763a, nineGridView.f45762l.getImageInfo());
        }
    }

    public NineGridView(Context context) {
        this(context, null);
    }

    private ImageView b(int i10) {
        if (i10 < this.f45760j.size()) {
            return (ImageView) this.f45760j.get(i10);
        }
        ImageView imageViewGenerateImageView = this.f45762l.generateImageView(getContext());
        imageViewGenerateImageView.setOnClickListener(new a(i10));
        this.f45760j.add(imageViewGenerateImageView);
        return imageViewGenerateImageView;
    }

    public static vm.b getImageLoader() {
        return f45750m;
    }

    public static void setImageLoader(vm.b bVar) {
        f45750m = bVar;
    }

    public int getMaxSize() {
        return this.f45753c;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        List list = this.f45761k;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i14 = 0; i14 < size; i14++) {
            ImageView imageView = (ImageView) getChildAt(i14);
            int i15 = this.f45756f;
            int paddingLeft = ((this.f45758h + this.f45754d) * (i14 % i15)) + getPaddingLeft();
            int paddingTop = ((this.f45759i + this.f45754d) * (i14 / i15)) + getPaddingTop();
            imageView.layout(paddingLeft, paddingTop, this.f45758h + paddingLeft, this.f45759i + paddingTop);
            vm.b bVar = f45750m;
            if (bVar != null) {
                bVar.a(getContext(), imageView, ((ImageInfo) this.f45761k.get(i14)).bigImageUrl, this.f45758h, this.f45759i, ((ImageInfo) this.f45761k.get(i14)).thumbnailUrl);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0071  */
    /* JADX WARN: Code duplicated, block: B:18:0x0084  */
    @Override
    protected void onMeasure(int i10, int i11) {
        int iMin;
        int i12;
        int i13;
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10);
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        List list = this.f45761k;
        int paddingTop = 0;
        if (list != null && list.size() > 0) {
            if (this.f45761k.size() == 1) {
                ImageInfo imageInfo = (ImageInfo) this.f45761k.get(0);
                float f10 = imageInfo.imageViewWidth;
                if (f10 > 0.0f) {
                    float f11 = imageInfo.imageViewHeight;
                    if (f11 <= 0.0f) {
                        iMin = Math.min(this.f45751a, paddingLeft);
                        this.f45758h = iMin;
                        i12 = (int) (iMin / this.f45752b);
                        this.f45759i = i12;
                        i13 = this.f45751a;
                        if (i12 > i13) {
                            this.f45758h = (int) (iMin * ((i13 * 1.0f) / i12));
                            this.f45759i = i13;
                        }
                    } else if (f10 > f11) {
                        int iMin2 = Math.min(a0.a(216.0f), (int) imageInfo.imageViewWidth);
                        this.f45758h = iMin2;
                        this.f45759i = (iMin2 * ((int) imageInfo.imageViewHeight)) / ((int) imageInfo.imageViewWidth);
                    } else {
                        int iMin3 = Math.min(a0.a(216.0f), (int) imageInfo.imageViewHeight);
                        this.f45759i = iMin3;
                        this.f45758h = (iMin3 * ((int) imageInfo.imageViewWidth)) / ((int) imageInfo.imageViewHeight);
                    }
                } else {
                    iMin = Math.min(this.f45751a, paddingLeft);
                    this.f45758h = iMin;
                    i12 = (int) (iMin / this.f45752b);
                    this.f45759i = i12;
                    i13 = this.f45751a;
                    if (i12 > i13) {
                        this.f45758h = (int) (iMin * ((i13 * 1.0f) / i12));
                        this.f45759i = i13;
                    }
                }
            } else {
                int i14 = (paddingLeft - (this.f45754d * 2)) / 3;
                this.f45759i = i14;
                this.f45758h = i14;
            }
            int i15 = this.f45758h;
            int i16 = this.f45756f;
            size = (i15 * i16) + (this.f45754d * (i16 - 1)) + getPaddingLeft() + getPaddingRight();
            int i17 = this.f45759i;
            int i18 = this.f45757g;
            paddingTop = (i17 * i18) + (this.f45754d * (i18 - 1)) + getPaddingTop() + getPaddingBottom();
        }
        setMeasuredDimension(size, paddingTop);
    }

    public void setAdapter(@NonNull NineGridViewAdapter nineGridViewAdapter) {
        this.f45762l = nineGridViewAdapter;
        List<ImageInfo> imageInfo = nineGridViewAdapter.getImageInfo();
        if (imageInfo == null || imageInfo.isEmpty()) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        int size = imageInfo.size();
        int i10 = this.f45753c;
        if (i10 > 0 && size > i10) {
            imageInfo = imageInfo.subList(0, i10);
            size = imageInfo.size();
        }
        this.f45757g = (size / 3) + (size % 3 == 0 ? 0 : 1);
        this.f45756f = 3;
        if (this.f45755e == 1 && size == 4) {
            this.f45757g = 2;
            this.f45756f = 2;
        }
        List list = this.f45761k;
        if (list == null) {
            for (int i11 = 0; i11 < size; i11++) {
                ImageView imageViewB = b(i11);
                if (imageViewB == null) {
                    return;
                }
                addView(imageViewB, generateDefaultLayoutParams());
            }
        } else {
            int size2 = list.size();
            if (size2 > size) {
                removeViews(size, size2 - size);
            } else if (size2 < size) {
                while (size2 < size) {
                    ImageView imageViewB2 = b(size2);
                    if (imageViewB2 == null) {
                        return;
                    }
                    addView(imageViewB2, generateDefaultLayoutParams());
                    size2++;
                }
            }
        }
        int size3 = nineGridViewAdapter.getImageInfo().size();
        int i12 = this.f45753c;
        if (size3 > i12) {
            View childAt = getChildAt(i12 - 1);
            if (childAt instanceof NineGridViewWrapper) {
                ((NineGridViewWrapper) childAt).setMoreNum(nineGridViewAdapter.getImageInfo().size() - this.f45753c);
            }
        }
        this.f45761k = imageInfo;
        requestLayout();
    }

    public void setGridSpacing(int i10) {
        this.f45754d = i10;
    }

    public void setMaxSize(int i10) {
        this.f45753c = i10;
    }

    public void setSingleImageRatio(float f10) {
        this.f45752b = f10;
    }

    public void setSingleImageSize(int i10) {
        this.f45751a = i10;
    }

    public NineGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NineGridView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f45751a = 250;
        this.f45752b = 1.0f;
        this.f45753c = 9;
        this.f45754d = 3;
        this.f45755e = 0;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.f45754d = (int) TypedValue.applyDimension(1, this.f45754d, displayMetrics);
        this.f45751a = (int) TypedValue.applyDimension(1, this.f45751a, displayMetrics);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.NineGridView);
        this.f45754d = (int) typedArrayObtainStyledAttributes.getDimension(R$styleable.NineGridView_ngv_gridSpacing, this.f45754d);
        this.f45751a = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.NineGridView_ngv_singleImageSize, this.f45751a);
        this.f45752b = typedArrayObtainStyledAttributes.getFloat(R$styleable.NineGridView_ngv_singleImageRatio, this.f45752b);
        this.f45753c = typedArrayObtainStyledAttributes.getInt(R$styleable.NineGridView_ngv_maxSize, this.f45753c);
        this.f45755e = typedArrayObtainStyledAttributes.getInt(R$styleable.NineGridView_ngv_mode, this.f45755e);
        typedArrayObtainStyledAttributes.recycle();
        this.f45760j = new ArrayList();
    }
}
