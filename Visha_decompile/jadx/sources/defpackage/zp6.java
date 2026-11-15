package defpackage;

import android.graphics.Color;
import android.graphics.RuntimeXfermode;

public final class zp6 {
    public static final zp6 a = new zp6();

    public final RuntimeXfermode a(String str, int i, String str2, int i2) {
        y45.j(str, "blendShader1");
        y45.j(str2, "blendShader2");
        if (str.length() == 0 || str2.length() == 0 || i == -1 || i2 == -1) {
            return null;
        }
        RuntimeXfermode runtimeXfermode = new RuntimeXfermode("uniform blender blender1;\nuniform float4 color1;\nuniform blender blender2;\nuniform float4 color2;\nhalf4 main(half4 src, half4 dst) {\n\thalf4 dst1 = blender1.eval(color1, dst);\n\thalf4 dst2 = blender2.eval(color2, dst1);\n\treturn mix(dst, dst2, src.a);\n}");
        runtimeXfermode.setInputXfermode("blender1", new RuntimeXfermode(str));
        runtimeXfermode.setInputXfermode("blender2", new RuntimeXfermode(str2));
        runtimeXfermode.setFloatUniform("color1", d(i));
        runtimeXfermode.setFloatUniform("color2", d(i2));
        return runtimeXfermode;
    }

    public final RuntimeXfermode b(String str, int i, String str2, int i2, String str3, int i3) {
        y45.j(str, "blendShader1");
        y45.j(str2, "blendShader2");
        y45.j(str3, "blendShader3");
        if (str.length() == 0 || str2.length() == 0 || i == -1 || i2 == -1) {
            return null;
        }
        RuntimeXfermode runtimeXfermode = new RuntimeXfermode("uniform blender blender1;\nuniform float4 color1;\nuniform blender blender2;\nuniform float4 color2;\nuniform blender blender3;\nuniform float4 color3;\nhalf4 main(half4 src, half4 dst) {\n\thalf4 dst1 = blender1.eval(color1, dst);\n\thalf4 dst2 = blender2.eval(color2, dst1);\n\thalf4 dst3 = blender3.eval(color3, dst2);\n\treturn mix(dst, dst3, src.a);\n}");
        runtimeXfermode.setInputXfermode("blender1", new RuntimeXfermode(str));
        runtimeXfermode.setInputXfermode("blender2", new RuntimeXfermode(str2));
        runtimeXfermode.setInputXfermode("blender3", new RuntimeXfermode(str3));
        runtimeXfermode.setFloatUniform("color1", d(i));
        runtimeXfermode.setFloatUniform("color2", d(i2));
        runtimeXfermode.setFloatUniform("color3", d(i3));
        return runtimeXfermode;
    }

    public final RuntimeXfermode c(String str, int i) {
        y45.j(str, "blendShader");
        if (str.length() == 0 || i == -1) {
            return null;
        }
        RuntimeXfermode runtimeXfermode = new RuntimeXfermode("uniform blender blender1;\nuniform float4 color1;\nhalf4 main(half4 src, half4 dst) {\n\thalf4 dst1 = blender1.eval(color1, dst);\n\treturn dst1;\n}");
        runtimeXfermode.setInputXfermode("blender1", new RuntimeXfermode(str));
        runtimeXfermode.setFloatUniform("color1", d(i));
        return runtimeXfermode;
    }

    public final float[] d(int i) {
        return new float[]{Color.red(i) / 255.0f, Color.green(i) / 255.0f, Color.blue(i) / 255.0f, Color.alpha(i) / 255.0f};
    }
}
