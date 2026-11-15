package defpackage;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;

public final class ze0 {
    public final RenderScript a;

    public ze0(RenderScript renderScript) {
        y45.j(renderScript, "renderScript");
        this.a = renderScript;
    }

    public final Bitmap a(Bitmap bitmap, int i) {
        float f;
        y45.j(bitmap, "bitmap");
        if (i == 0) {
            return bitmap;
        }
        if (i > 25) {
            f = (i * 1.0f) / 25;
            i = 25;
        } else {
            f = 1.0f;
        }
        Bitmap bitmapCopy = f == 1.0f ? bitmap.copy(bitmap.getConfig(), false) : Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() / f), (int) (bitmap.getHeight() / f), false);
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.a, bitmapCopy);
        Allocation allocationCreateTyped = Allocation.createTyped(this.a, allocationCreateFromBitmap.getType());
        RenderScript renderScript = this.a;
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
        scriptIntrinsicBlurCreate.setRadius(i);
        scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
        scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
        allocationCreateTyped.copyTo(bitmapCopy);
        allocationCreateFromBitmap.destroy();
        allocationCreateTyped.destroy();
        scriptIntrinsicBlurCreate.destroy();
        y45.i(bitmapCopy, "result");
        return bitmapCopy;
    }

    public final Bitmap b(Bitmap bitmap) {
        y45.j(bitmap, "bitmap");
        Matrix matrix = new Matrix();
        matrix.preScale(-1.0f, 1.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
        y45.i(bitmapCreateBitmap, "createBitmap(\n          …lter = */ false\n        )");
        bitmapCreateBitmap.setDensity(160);
        return bitmapCreateBitmap;
    }
}
