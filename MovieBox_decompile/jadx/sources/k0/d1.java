package k0;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.DrawFilter;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.RenderNode;
import android.graphics.fonts.Font;
import android.graphics.text.MeasuredText;
import kotlin.jvm.internal.Intrinsics;

public final class d1 extends Canvas {

    private Canvas f63428a;

    public final void a(Canvas canvas) {
        this.f63428a = canvas;
    }

    @Override
    public boolean clipOutPath(Path path) {
        m mVar = m.f63468a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return mVar.a(canvas, path);
    }

    @Override
    public boolean clipOutRect(RectF rectF) {
        m mVar = m.f63468a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return mVar.e(canvas, rectF);
    }

    @Override
    public boolean clipPath(Path path, Region.Op op2) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.clipPath(path, op2);
    }

    @Override
    public boolean clipRect(RectF rectF, Region.Op op2) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(rectF, op2);
    }

    @Override
    public void concat(Matrix matrix) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.concat(matrix);
    }

    @Override
    public void disableZ() {
        s sVar = s.f63471a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        sVar.a(canvas);
    }

    @Override
    public void drawARGB(int i10, int i11, int i12, int i13) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawARGB(i10, i11, i12, i13);
    }

    @Override
    public void drawArc(RectF rectF, float f10, float f11, boolean z10, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawArc(rectF, f10, f11, z10, paint);
    }

    @Override
    public void drawBitmap(Bitmap bitmap, float f10, float f11, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmap(bitmap, f10, f11, paint);
    }

    @Override
    public void drawBitmapMesh(Bitmap bitmap, int i10, int i11, float[] fArr, int i12, int[] iArr, int i13, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmapMesh(bitmap, i10, i11, fArr, i12, iArr, i13, paint);
    }

    @Override
    public void drawCircle(float f10, float f11, float f12, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawCircle(f10, f11, f12, paint);
    }

    @Override
    public void drawColor(int i10) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawColor(i10);
    }

    @Override
    public void drawDoubleRoundRect(RectF rectF, float f10, float f11, RectF rectF2, float f12, float f13, Paint paint) {
        s sVar = s.f63471a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        sVar.e(canvas, rectF, f10, f11, rectF2, f12, f13, paint);
    }

    @Override
    public void drawGlyphs(int[] iArr, int i10, float[] fArr, int i11, int i12, Font font, Paint paint) {
        a0 a0Var = a0.f63391a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        a0Var.a(canvas, iArr, i10, fArr, i11, i12, font, paint);
    }

    @Override
    public void drawLine(float f10, float f11, float f12, float f13, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawLine(f10, f11, f12, f13, paint);
    }

    @Override
    public void drawLines(float[] fArr, int i10, int i11, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawLines(fArr, i10, i11, paint);
    }

    @Override
    public void drawOval(RectF rectF, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawOval(rectF, paint);
    }

    @Override
    public void drawPaint(Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawPaint(paint);
    }

    @Override
    public void drawPatch(NinePatch ninePatch, Rect rect, Paint paint) {
        a0 a0Var = a0.f63391a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        a0Var.b(canvas, ninePatch, rect, paint);
    }

    @Override
    public void drawPath(Path path, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawPath(path, paint);
    }

    @Override
    public void drawPicture(Picture picture) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawPicture(picture);
    }

    @Override
    public void drawPoint(float f10, float f11, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawPoint(f10, f11, paint);
    }

    @Override
    public void drawPoints(float[] fArr, int i10, int i11, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawPoints(fArr, i10, i11, paint);
    }

    @Override
    public void drawPosText(char[] cArr, int i10, int i11, float[] fArr, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawPosText(cArr, i10, i11, fArr, paint);
    }

    @Override
    public void drawRGB(int i10, int i11, int i12) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawRGB(i10, i11, i12);
    }

    @Override
    public void drawRect(RectF rectF, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawRect(rectF, paint);
    }

    @Override
    public void drawRenderNode(RenderNode renderNode) {
        s sVar = s.f63471a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        sVar.g(canvas, renderNode);
    }

    @Override
    public void drawRoundRect(RectF rectF, float f10, float f11, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawRoundRect(rectF, f10, f11, paint);
    }

    @Override
    public void drawText(char[] cArr, int i10, int i11, float f10, float f11, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawText(cArr, i10, i11, f10, f11, paint);
    }

    @Override
    public void drawTextOnPath(char[] cArr, int i10, int i11, Path path, float f10, float f11, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawTextOnPath(cArr, i10, i11, path, f10, f11, paint);
    }

    @Override
    public void drawTextRun(char[] cArr, int i10, int i11, int i12, int i13, float f10, float f11, boolean z10, Paint paint) {
        g gVar = g.f63459a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        gVar.b(canvas, cArr, i10, i11, i12, i13, f10, f11, z10, paint);
    }

    @Override
    public void drawVertices(Canvas.VertexMode vertexMode, int i10, float[] fArr, int i11, float[] fArr2, int i12, int[] iArr, int i13, short[] sArr, int i14, int i15, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawVertices(vertexMode, i10, fArr, i11, fArr2, i12, iArr, i13, sArr, i14, i15, paint);
    }

    @Override
    public void enableZ() {
        s sVar = s.f63471a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        sVar.i(canvas);
    }

    @Override
    public boolean getClipBounds(Rect rect) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        boolean clipBounds = canvas.getClipBounds(rect);
        if (clipBounds) {
            rect.set(0, 0, rect.width(), Integer.MAX_VALUE);
        }
        return clipBounds;
    }

    @Override
    public int getDensity() {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.getDensity();
    }

    @Override
    public DrawFilter getDrawFilter() {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.getDrawFilter();
    }

    @Override
    public int getHeight() {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.getHeight();
    }

    @Override
    public void getMatrix(Matrix matrix) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.getMatrix(matrix);
    }

    @Override
    public int getMaximumBitmapHeight() {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.getMaximumBitmapHeight();
    }

    @Override
    public int getMaximumBitmapWidth() {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.getMaximumBitmapWidth();
    }

    @Override
    public int getSaveCount() {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.getSaveCount();
    }

    @Override
    public int getWidth() {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.getWidth();
    }

    @Override
    public boolean isOpaque() {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.isOpaque();
    }

    @Override
    public boolean quickReject(RectF rectF, Canvas.EdgeType edgeType) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.quickReject(rectF, edgeType);
    }

    @Override
    public void restore() {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.restore();
    }

    @Override
    public void restoreToCount(int i10) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.restoreToCount(i10);
    }

    @Override
    public void rotate(float f10) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.rotate(f10);
    }

    @Override
    public int save() {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.save();
    }

    @Override
    public int saveLayer(RectF rectF, Paint paint, int i10) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayer(rectF, paint, i10);
    }

    @Override
    public int saveLayerAlpha(RectF rectF, int i10, int i11) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayerAlpha(rectF, i10, i11);
    }

    @Override
    public void scale(float f10, float f11) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.scale(f10, f11);
    }

    @Override
    public void setBitmap(Bitmap bitmap) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.setBitmap(bitmap);
    }

    @Override
    public void setDensity(int i10) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.setDensity(i10);
    }

    @Override
    public void setDrawFilter(DrawFilter drawFilter) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.setDrawFilter(drawFilter);
    }

    @Override
    public void setMatrix(Matrix matrix) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.setMatrix(matrix);
    }

    @Override
    public void skew(float f10, float f11) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.skew(f10, f11);
    }

    @Override
    public void translate(float f10, float f11) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.translate(f10, f11);
    }

    @Override
    public boolean clipOutRect(Rect rect) {
        m mVar = m.f63468a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return mVar.d(canvas, rect);
    }

    @Override
    public boolean clipPath(Path path) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.clipPath(path);
    }

    @Override
    public boolean clipRect(Rect rect, Region.Op op2) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(rect, op2);
    }

    @Override
    public void drawArc(float f10, float f11, float f12, float f13, float f14, float f15, boolean z10, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawArc(f10, f11, f12, f13, f14, f15, z10, paint);
    }

    @Override
    public void drawBitmap(Bitmap bitmap, Rect rect, RectF rectF, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmap(bitmap, rect, rectF, paint);
    }

    @Override
    public void drawColor(long j10) {
        s sVar = s.f63471a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        sVar.c(canvas, j10);
    }

    @Override
    public void drawLines(float[] fArr, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawLines(fArr, paint);
    }

    @Override
    public void drawOval(float f10, float f11, float f12, float f13, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawOval(f10, f11, f12, f13, paint);
    }

    @Override
    public void drawPatch(NinePatch ninePatch, RectF rectF, Paint paint) {
        a0 a0Var = a0.f63391a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        a0Var.c(canvas, ninePatch, rectF, paint);
    }

    @Override
    public void drawPicture(Picture picture, RectF rectF) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawPicture(picture, rectF);
    }

    @Override
    public void drawPoints(float[] fArr, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawPoints(fArr, paint);
    }

    @Override
    public void drawPosText(String str, float[] fArr, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawPosText(str, fArr, paint);
    }

    @Override
    public void drawRect(Rect rect, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawRect(rect, paint);
    }

    @Override
    public void drawRoundRect(float f10, float f11, float f12, float f13, float f14, float f15, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawRoundRect(f10, f11, f12, f13, f14, f15, paint);
    }

    @Override
    public void drawText(String str, float f10, float f11, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawText(str, f10, f11, paint);
    }

    @Override
    public void drawTextOnPath(String str, Path path, float f10, float f11, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawTextOnPath(str, path, f10, f11, paint);
    }

    @Override
    public boolean quickReject(RectF rectF) {
        w wVar = w.f63472a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return wVar.c(canvas, rectF);
    }

    @Override
    public int saveLayer(RectF rectF, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayer(rectF, paint);
    }

    @Override
    public int saveLayerAlpha(RectF rectF, int i10) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayerAlpha(rectF, i10);
    }

    @Override
    public boolean clipOutRect(float f10, float f11, float f12, float f13) {
        m mVar = m.f63468a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return mVar.b(canvas, f10, f11, f12, f13);
    }

    @Override
    public boolean clipRect(RectF rectF) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(rectF);
    }

    @Override
    public void drawBitmap(Bitmap bitmap, Rect rect, Rect rect2, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmap(bitmap, rect, rect2, paint);
    }

    @Override
    public void drawColor(int i10, PorterDuff.Mode mode) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawColor(i10, mode);
    }

    @Override
    public void drawPicture(Picture picture, Rect rect) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawPicture(picture, rect);
    }

    @Override
    public void drawRect(float f10, float f11, float f12, float f13, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawRect(f10, f11, f12, f13, paint);
    }

    @Override
    public void drawText(String str, int i10, int i11, float f10, float f11, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawText(str, i10, i11, f10, f11, paint);
    }

    @Override
    public boolean quickReject(Path path, Canvas.EdgeType edgeType) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.quickReject(path, edgeType);
    }

    @Override
    public int saveLayer(float f10, float f11, float f12, float f13, Paint paint, int i10) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayer(f10, f11, f12, f13, paint, i10);
    }

    @Override
    public int saveLayerAlpha(float f10, float f11, float f12, float f13, int i10, int i11) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayerAlpha(f10, f11, f12, f13, i10, i11);
    }

    @Override
    public boolean clipOutRect(int i10, int i11, int i12, int i13) {
        m mVar = m.f63468a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return mVar.c(canvas, i10, i11, i12, i13);
    }

    @Override
    public boolean clipRect(Rect rect) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(rect);
    }

    @Override
    public void drawBitmap(int[] iArr, int i10, int i11, float f10, float f11, int i12, int i13, boolean z10, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmap(iArr, i10, i11, f10, f11, i12, i13, z10, paint);
    }

    @Override
    public void drawColor(int i10, BlendMode blendMode) {
        s sVar = s.f63471a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        sVar.b(canvas, i10, blendMode);
    }

    @Override
    public void drawDoubleRoundRect(RectF rectF, float[] fArr, RectF rectF2, float[] fArr2, Paint paint) {
        s sVar = s.f63471a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        sVar.f(canvas, rectF, fArr, rectF2, fArr2, paint);
    }

    @Override
    public void drawText(CharSequence charSequence, int i10, int i11, float f10, float f11, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawText(charSequence, i10, i11, f10, f11, paint);
    }

    @Override
    public void drawTextRun(CharSequence charSequence, int i10, int i11, int i12, int i13, float f10, float f11, boolean z10, Paint paint) {
        g gVar = g.f63459a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        gVar.a(canvas, charSequence, i10, i11, i12, i13, f10, f11, z10, paint);
    }

    @Override
    public boolean quickReject(Path path) {
        w wVar = w.f63472a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return wVar.b(canvas, path);
    }

    @Override
    public int saveLayer(float f10, float f11, float f12, float f13, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayer(f10, f11, f12, f13, paint);
    }

    @Override
    public int saveLayerAlpha(float f10, float f11, float f12, float f13, int i10) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.saveLayerAlpha(f10, f11, f12, f13, i10);
    }

    @Override
    public boolean clipRect(float f10, float f11, float f12, float f13, Region.Op op2) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(f10, f11, f12, f13, op2);
    }

    @Override
    public void drawBitmap(int[] iArr, int i10, int i11, int i12, int i13, int i14, int i15, boolean z10, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmap(iArr, i10, i11, i12, i13, i14, i15, z10, paint);
    }

    @Override
    public void drawColor(long j10, BlendMode blendMode) {
        s sVar = s.f63471a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        sVar.d(canvas, j10, blendMode);
    }

    @Override
    public boolean quickReject(float f10, float f11, float f12, float f13, Canvas.EdgeType edgeType) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.quickReject(f10, f11, f12, f13, edgeType);
    }

    @Override
    public boolean clipRect(float f10, float f11, float f12, float f13) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(f10, f11, f12, f13);
    }

    @Override
    public void drawBitmap(Bitmap bitmap, Matrix matrix, Paint paint) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        canvas.drawBitmap(bitmap, matrix, paint);
    }

    @Override
    public boolean quickReject(float f10, float f11, float f12, float f13) {
        w wVar = w.f63472a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return wVar.a(canvas, f10, f11, f12, f13);
    }

    @Override
    public boolean clipRect(int i10, int i11, int i12, int i13) {
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        return canvas.clipRect(i10, i11, i12, i13);
    }

    @Override
    public void drawTextRun(MeasuredText measuredText, int i10, int i11, int i12, int i13, float f10, float f11, boolean z10, Paint paint) {
        s sVar = s.f63471a;
        Canvas canvas = this.f63428a;
        if (canvas == null) {
            Intrinsics.y("nativeCanvas");
            canvas = null;
        }
        sVar.h(canvas, measuredText, i10, i11, i12, i13, f10, f11, z10, paint);
    }
}
