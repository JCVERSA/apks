package qa;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

public class g implements TypeEvaluator {

    private final float[] f69587a = new float[9];

    private final float[] f69588b = new float[9];

    private final Matrix f69589c = new Matrix();

    @Override
    public Matrix evaluate(float f10, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f69587a);
        matrix2.getValues(this.f69588b);
        for (int i10 = 0; i10 < 9; i10++) {
            float[] fArr = this.f69588b;
            float f11 = fArr[i10];
            float f12 = this.f69587a[i10];
            fArr[i10] = f12 + ((f11 - f12) * f10);
        }
        this.f69589c.setValues(this.f69588b);
        return this.f69589c;
    }
}
