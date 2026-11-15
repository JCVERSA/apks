package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;

public abstract class jn8 {
    public static final Object a = new Object();

    public static Bitmap a(Context context, Bitmap bitmap, int i) {
        ScriptIntrinsicBlur scriptIntrinsicBlur;
        RenderScript renderScriptCreate;
        Allocation allocationCreateTyped;
        if (i < 1) {
            i = 1;
        } else if (i > 25) {
            i = 25;
        }
        synchronized (a) {
            Allocation allocation = null;
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = null;
            allocation = null;
            try {
                try {
                    renderScriptCreate = RenderScript.create(context);
                    try {
                        renderScriptCreate.setMessageHandler(new RenderScript.RSMessageHandler());
                        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
                        try {
                            allocationCreateTyped = Allocation.createTyped(renderScriptCreate, allocationCreateFromBitmap.getType());
                            try {
                                scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
                                scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
                                scriptIntrinsicBlurCreate.setRadius(i);
                                scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
                                allocationCreateTyped.copyTo(bitmap);
                                allocationCreateFromBitmap.destroy();
                                allocationCreateTyped.destroy();
                                scriptIntrinsicBlurCreate.destroy();
                                renderScriptCreate.destroy();
                            } catch (Throwable th) {
                                th = th;
                                scriptIntrinsicBlur = scriptIntrinsicBlurCreate;
                                allocation = allocationCreateFromBitmap;
                                if (allocation != null) {
                                    allocation.destroy();
                                }
                                if (allocationCreateTyped != null) {
                                    allocationCreateTyped.destroy();
                                }
                                if (scriptIntrinsicBlur != null) {
                                    scriptIntrinsicBlur.destroy();
                                }
                                if (renderScriptCreate != null) {
                                    renderScriptCreate.destroy();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            scriptIntrinsicBlur = null;
                            allocationCreateTyped = null;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        renderScriptCreate = renderScriptCreate;
                        scriptIntrinsicBlur = null;
                        allocationCreateTyped = null;
                    }
                } catch (Throwable th4) {
                    throw th4;
                }
            } catch (Throwable th5) {
                th = th5;
                scriptIntrinsicBlur = null;
                renderScriptCreate = null;
                allocationCreateTyped = null;
            }
        }
        return bitmap;
    }
}
