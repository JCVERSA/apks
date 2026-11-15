package com.github.mmin18.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RSRuntimeException;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;

public class a implements c {

    static Boolean f23494e;

    private RenderScript f23495a;

    private ScriptIntrinsicBlur f23496b;

    private Allocation f23497c;

    private Allocation f23498d;

    static boolean c(Context context) {
        if (f23494e == null && context != null) {
            f23494e = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
        }
        return f23494e == Boolean.TRUE;
    }

    @Override
    public void a(Bitmap bitmap, Bitmap bitmap2) {
        this.f23497c.copyFrom(bitmap);
        this.f23496b.setInput(this.f23497c);
        this.f23496b.forEach(this.f23498d);
        this.f23498d.copyTo(bitmap2);
    }

    @Override
    public boolean b(Context context, Bitmap bitmap, float f10) {
        if (this.f23495a == null) {
            try {
                RenderScript renderScriptCreate = RenderScript.create(context);
                this.f23495a = renderScriptCreate;
                this.f23496b = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            } catch (RSRuntimeException e10) {
                if (c(context)) {
                    throw e10;
                }
                release();
                return false;
            }
        }
        this.f23496b.setRadius(f10);
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.f23495a, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
        this.f23497c = allocationCreateFromBitmap;
        this.f23498d = Allocation.createTyped(this.f23495a, allocationCreateFromBitmap.getType());
        return true;
    }

    @Override
    public void release() {
        Allocation allocation = this.f23497c;
        if (allocation != null) {
            allocation.destroy();
            this.f23497c = null;
        }
        Allocation allocation2 = this.f23498d;
        if (allocation2 != null) {
            allocation2.destroy();
            this.f23498d = null;
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = this.f23496b;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
            this.f23496b = null;
        }
        RenderScript renderScript = this.f23495a;
        if (renderScript != null) {
            renderScript.destroy();
            this.f23495a = null;
        }
    }
}
