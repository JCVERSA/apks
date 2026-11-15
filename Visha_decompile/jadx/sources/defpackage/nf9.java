package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.drawable.shapes.RoundRectShape;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

public final class nf9 {
    public static final nf9 a = new nf9();
    public static final Paint b = new Paint();
    public static final Map c = new LinkedHashMap();

    public static final class a {
        public final float[] a;
        public final float b;

        public a(float[] fArr, float f) {
            y45.j(fArr, "radii");
            this.a = fArr;
            this.b = f;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.b == aVar.b && Arrays.equals(this.a, aVar.a);
        }

        public int hashCode() {
            return (Arrays.hashCode(this.a) * 31) + Float.hashCode(this.b);
        }
    }

    public final void a(Bitmap bitmap, Context context, Bitmap bitmap2, float f) {
        RenderScript renderScriptCreate = RenderScript.create(context);
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.A_8(renderScriptCreate));
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
        Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmap2);
        scriptIntrinsicBlurCreate.setRadius(f);
        scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
        scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
        allocationCreateFromBitmap2.copyTo(bitmap2);
        allocationCreateFromBitmap2.destroy();
        allocationCreateFromBitmap.destroy();
        scriptIntrinsicBlurCreate.destroy();
    }

    public final NinePatch b(Context context, float[] fArr, float f) {
        float fMax = f + Math.max(fArr[1] + fArr[2], fArr[5] + fArr[6]);
        float fMax2 = f + Math.max(fArr[0] + fArr[7], fArr[3] + fArr[4]);
        float fJ = wn8.j(f, 1.0f, 25.0f);
        float f2 = f <= 25.0f ? 1.0f : 25.0f / f;
        float f3 = f * 2;
        int i = (int) ((fMax + f3) * f2);
        int i2 = (int) ((f3 + fMax2) * f2);
        Bitmap.Config config = Bitmap.Config.ALPHA_8;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, config);
        y45.i(bitmapCreateBitmap, "createBitmap(\n          ….Config.ALPHA_8\n        )");
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i, i2, config);
        y45.i(bitmapCreateBitmap2, "createBitmap(\n          ….Config.ALPHA_8\n        )");
        d(bitmapCreateBitmap, fMax, fMax2, fArr, fJ, f2);
        a(bitmapCreateBitmap, context, bitmapCreateBitmap2, fJ);
        bitmapCreateBitmap.recycle();
        if (f2 < 1.0f) {
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap2, (int) (bitmapCreateBitmap2.getWidth() / f2), (int) (bitmapCreateBitmap2.getHeight() / f2), true);
            bitmapCreateBitmap2.recycle();
            bitmapCreateBitmap2 = bitmapCreateScaledBitmap;
        }
        return f(bitmapCreateBitmap2);
    }

    public final byte[] c(int i, int i2) {
        int i3 = i2 / 2;
        int i4 = i / 2;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(84).order(ByteOrder.nativeOrder());
        byteBufferOrder.put((byte) 1);
        byteBufferOrder.put((byte) 2);
        byteBufferOrder.put((byte) 2);
        byteBufferOrder.put((byte) 9);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(i4 - 1);
        byteBufferOrder.putInt(i4 + 1);
        byteBufferOrder.putInt(i3 - 1);
        byteBufferOrder.putInt(i3 + 1);
        for (int i5 = 0; i5 < 9; i5++) {
            byteBufferOrder.putInt(1);
        }
        byte[] bArrArray = byteBufferOrder.array();
        y45.i(bArrArray, "buffer.array()");
        return bArrArray;
    }

    public final void d(Bitmap bitmap, float f, float f2, float[] fArr, float f3, float f4) {
        RoundRectShape roundRectShape = new RoundRectShape(fArr, null, null);
        roundRectShape.resize(f, f2);
        Canvas canvas = new Canvas();
        canvas.setBitmap(bitmap);
        int iSave = canvas.save();
        canvas.translate(f3, f3);
        try {
            iSave = canvas.save();
            canvas.scale(f4, f4, 0.0f, 0.0f);
            try {
                roundRectShape.draw(canvas, b);
                canvas.restoreToCount(iSave);
            } finally {
                canvas.restoreToCount(iSave);
            }
        } catch (Throwable th) {
            canvas.restoreToCount(iSave);
            throw th;
        }
    }

    public final NinePatch e(Context context, float[] fArr, float f) {
        y45.j(context, "context");
        y45.j(fArr, "radii");
        Map map = c;
        a aVar = new a(fArr, f);
        Object objB = map.get(aVar);
        if (objB == null) {
            objB = a.b(context, fArr, f);
            map.put(aVar, objB);
        }
        return (NinePatch) objB;
    }

    public final NinePatch f(Bitmap bitmap) {
        return new NinePatch(bitmap, c(bitmap.getWidth(), bitmap.getHeight()));
    }
}
