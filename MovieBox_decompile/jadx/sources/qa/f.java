package qa;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;

public class f extends Property {

    private final Matrix f69586a;

    public f() {
        super(Matrix.class, "imageMatrixProperty");
        this.f69586a = new Matrix();
    }

    @Override
    public Matrix get(ImageView imageView) {
        this.f69586a.set(imageView.getImageMatrix());
        return this.f69586a;
    }

    @Override
    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
