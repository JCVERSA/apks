package com.github.mmin18.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.RSRuntimeException;
import androidx.renderscript.Allocation;
import androidx.renderscript.Element;
import androidx.renderscript.RenderScript;
import androidx.renderscript.ScriptIntrinsicBlur;

public class b implements c {

    static Boolean f23499e;

    private RenderScript f23500a;

    private ScriptIntrinsicBlur f23501b;

    private Allocation f23502c;

    private Allocation f23503d;

    static boolean c(Context context) {
        if (f23499e == null && context != null) {
            f23499e = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
        }
        return f23499e == Boolean.TRUE;
    }

    @Override
    public void a(Bitmap bitmap, Bitmap bitmap2) {
        this.f23502c.copyFrom(bitmap);
        this.f23501b.setInput(this.f23502c);
        this.f23501b.forEach(this.f23503d);
        this.f23503d.copyTo(bitmap2);
    }

    @Override
    public boolean b(Context context, Bitmap bitmap, float f10) {
        if (this.f23500a == null) {
            try {
                RenderScript renderScriptCreate = RenderScript.create(context);
                this.f23500a = renderScriptCreate;
                this.f23501b = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            } catch (RSRuntimeException e10) {
                if (c(context)) {
                    throw e10;
                }
                release();
                return false;
            }
        }
        this.f23501b.setRadius(f10);
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.f23500a, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
        this.f23502c = allocationCreateFromBitmap;
        this.f23503d = Allocation.createTyped(this.f23500a, allocationCreateFromBitmap.getType());
        return true;
    }

    @Override
    public void release() {
        Allocation allocation = this.f23502c;
        if (allocation != null) {
            allocation.destroy();
            this.f23502c = null;
        }
        Allocation allocation2 = this.f23503d;
        if (allocation2 != null) {
            allocation2.destroy();
            this.f23503d = null;
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = this.f23501b;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
            this.f23501b = null;
        }
        RenderScript renderScript = this.f23500a;
        if (renderScript != null) {
            renderScript.destroy();
            this.f23500a = null;
        }
    }
}
