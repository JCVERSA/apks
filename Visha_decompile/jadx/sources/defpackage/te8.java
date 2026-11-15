package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.yandex.div2.DivVideoScale;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class te8 extends AppCompatImageView {
    public static final a b = new a(null);
    public static final ImageView.ScaleType c = ImageView.ScaleType.CENTER;
    public static final ImageView.ScaleType d = ImageView.ScaleType.FIT_CENTER;
    public static final ImageView.ScaleType e = ImageView.ScaleType.CENTER_CROP;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[DivVideoScale.values().length];
            try {
                iArr[DivVideoScale.FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivVideoScale.NO_SCALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivVideoScale.FIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public te8(Context context) {
        super(context);
        y45.j(context, "context");
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        setBackgroundColor(0);
        setVisibility(4);
    }

    public final void a(DivVideoScale divVideoScale) {
        ImageView.ScaleType scaleType;
        y45.j(divVideoScale, "scale");
        int i = b.a[divVideoScale.ordinal()];
        if (i == 1) {
            scaleType = e;
        } else if (i == 2) {
            scaleType = c;
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            scaleType = d;
        }
        setScaleType(scaleType);
    }

    public final Drawable b(Drawable drawable) {
        if (getScaleType() == c && (drawable instanceof BitmapDrawable)) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (bitmap != null) {
                bitmap.setDensity(160);
            }
            bitmapDrawable.setTargetDensity(getContext().getResources().getDisplayMetrics());
        }
        return drawable;
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        if (getScaleType() == c && bitmap != null) {
            bitmap.setDensity(160);
        }
        super.setImageBitmap(bitmap);
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable != null ? b(drawable) : null);
    }
}
