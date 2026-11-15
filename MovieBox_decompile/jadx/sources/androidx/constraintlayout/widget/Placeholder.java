package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.vungle.ads.internal.protos.Sdk$SDKError;

public class Placeholder extends View {

    private int f7416a;

    private View f7417b;

    private int f7418c;

    public Placeholder(Context context) {
        super(context);
        this.f7416a = -1;
        this.f7417b = null;
        this.f7418c = 4;
        a(null);
    }

    private void a(AttributeSet attributeSet) {
        super.setVisibility(this.f7418c);
        this.f7416a = -1;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_placeholder);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_placeholder_content) {
                    this.f7416a = typedArrayObtainStyledAttributes.getResourceId(index, this.f7416a);
                } else if (index == R$styleable.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.f7418c = typedArrayObtainStyledAttributes.getInt(index, this.f7418c);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public View getContent() {
        return this.f7417b;
    }

    public int getEmptyVisibility() {
        return this.f7418c;
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE);
            Paint paint = new Paint();
            paint.setARGB(255, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds(UrlUtils.QUESTION_MARK, 0, 1, rect);
            canvas.drawText(UrlUtils.QUESTION_MARK, ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((iHeight / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i10) {
        View viewFindViewById;
        if (this.f7416a == i10) {
            return;
        }
        View view = this.f7417b;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.b) this.f7417b.getLayoutParams()).f7372j0 = false;
            this.f7417b = null;
        }
        this.f7416a = i10;
        if (i10 == -1 || (viewFindViewById = ((View) getParent()).findViewById(i10)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i10) {
        this.f7418c = i10;
    }

    public void updatePostMeasure(ConstraintLayout constraintLayout) {
        if (this.f7417b == null) {
            return;
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) this.f7417b.getLayoutParams();
        bVar2.f7396v0.n1(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = bVar.f7396v0.C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviourC != dimensionBehaviour) {
            bVar.f7396v0.o1(bVar2.f7396v0.Y());
        }
        if (bVar.f7396v0.V() != dimensionBehaviour) {
            bVar.f7396v0.P0(bVar2.f7396v0.z());
        }
        bVar2.f7396v0.n1(8);
    }

    public void updatePreLayout(ConstraintLayout constraintLayout) {
        if (this.f7416a == -1 && !isInEditMode()) {
            setVisibility(this.f7418c);
        }
        View viewFindViewById = constraintLayout.findViewById(this.f7416a);
        this.f7417b = viewFindViewById;
        if (viewFindViewById != null) {
            ((ConstraintLayout.b) viewFindViewById.getLayoutParams()).f7372j0 = true;
            this.f7417b.setVisibility(0);
            setVisibility(0);
        }
    }

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7416a = -1;
        this.f7417b = null;
        this.f7418c = 4;
        a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7416a = -1;
        this.f7417b = null;
        this.f7418c = 4;
        a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10);
        this.f7416a = -1;
        this.f7417b = null;
        this.f7418c = 4;
        a(attributeSet);
    }
}
