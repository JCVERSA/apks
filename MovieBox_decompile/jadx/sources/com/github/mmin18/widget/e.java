package com.github.mmin18.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.RSRuntimeException;
import androidx.renderscript.Allocation;
import androidx.renderscript.Element;
import androidx.renderscript.RenderScript;
import androidx.renderscript.ScriptIntrinsicBlur;

public class e implements c {

    static Boolean f23504e;

    private RenderScript f23505a;

    private ScriptIntrinsicBlur f23506b;

    private Allocation f23507c;

    private Allocation f23508d;

    static boolean c(Context context) {
        if (f23504e == null && context != null) {
            f23504e = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
        }
        return f23504e == Boolean.TRUE;
    }

    @Override
    public void a(Bitmap bitmap, Bitmap bitmap2) {
        this.f23507c.copyFrom(bitmap);
        this.f23506b.setInput(this.f23507c);
        this.f23506b.forEach(this.f23508d);
        this.f23508d.copyTo(bitmap2);
    }

    @Override
    public boolean b(Context context, Bitmap bitmap, float f10) {
        if (this.f23505a == null) {
            try {
                RenderScript renderScriptCreate = RenderScript.create(context);
                this.f23505a = renderScriptCreate;
                this.f23506b = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            } catch (RSRuntimeException e10) {
                if (c(context)) {
                    throw e10;
                }
                release();
                return false;
            }
        }
        this.f23506b.setRadius(f10);
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.f23505a, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
        this.f23507c = allocationCreateFromBitmap;
        this.f23508d = Allocation.createTyped(this.f23505a, allocationCreateFromBitmap.getType());
        return true;
    }

    @Override
    public void release() {
        Allocation allocation = this.f23507c;
        if (allocation != null) {
            allocation.destroy();
            this.f23507c = null;
        }
        Allocation allocation2 = this.f23508d;
        if (allocation2 != null) {
            allocation2.destroy();
            this.f23508d = null;
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = this.f23506b;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
            this.f23506b = null;
        }
        RenderScript renderScript = this.f23505a;
        if (renderScript != null) {
            renderScript.destroy();
            this.f23505a = null;
        }
    }
}
