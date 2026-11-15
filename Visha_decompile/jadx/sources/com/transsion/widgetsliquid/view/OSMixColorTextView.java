package com.transsion.widgetsliquid.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.RuntimeXfermode;
import android.graphics.Shader;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.ColorRes;
import androidx.annotation.RawRes;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.hunantv.media.player.subtitle.MediaFormat;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetsliquid.R;
import defpackage.bq5;
import defpackage.c74;
import defpackage.olb;
import defpackage.xlb;
import defpackage.y45;
import defpackage.yi5;
import java.util.LinkedHashMap;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

@RequiresApi(36)
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0010\u0015\n\u0002\b\n\b\u0017\u0018\u0000 b2\u00020\u0001:\u0001\u000bB\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\r\u0010\fJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\u0015\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u000e¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\u0018J5\u0010\u001d\u001a\u00020\u00132\b\b\u0001\u0010\u0019\u001a\u00020\u000e2\b\b\u0001\u0010\u001a\u001a\u00020\u000e2\b\b\u0001\u0010\u001b\u001a\u00020\u000e2\b\b\u0001\u0010\u001c\u001a\u00020\u000e¢\u0006\u0004\b\u001d\u0010\u001eJ/\u0010#\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000eH\u0014¢\u0006\u0004\b#\u0010\u001eJ\u000f\u0010$\u001a\u00020\bH\u0016¢\u0006\u0004\b$\u0010%J\r\u0010&\u001a\u00020\u0013¢\u0006\u0004\b&\u0010'J%\u0010*\u001a\u00020)2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010(\u001a\u00020\u000e¢\u0006\u0004\b*\u0010+J\u0011\u0010-\u001a\u00020,*\u00020\u000e¢\u0006\u0004\b-\u0010.R\u0014\u00100\u001a\u00020\n8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000f\u0010/R$\u00107\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010=\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010\u0015R\"\u0010A\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u00109\u001a\u0004\b?\u0010;\"\u0004\b@\u0010\u0015R\"\u0010F\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010%\"\u0004\bE\u0010\u0018R\"\u0010(\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u00109\u001a\u0004\bG\u0010;\"\u0004\bH\u0010\u0015R\"\u0010L\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010C\u001a\u0004\bJ\u0010%\"\u0004\bK\u0010\u0018R\"\u0010\u0019\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bM\u00109\u001a\u0004\bN\u0010;\"\u0004\bO\u0010\u0015R\"\u0010\u001a\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u00109\u001a\u0004\bQ\u0010;\"\u0004\bR\u0010\u0015R\"\u0010\u001b\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bS\u00109\u001a\u0004\bT\u0010;\"\u0004\bU\u0010\u0015R\"\u0010\u001c\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bV\u00109\u001a\u0004\bW\u0010;\"\u0004\bX\u0010\u0015R\u001b\u0010^\u001a\u00020Y8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]R\u001b\u0010a\u001a\u00020Y8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b_\u0010[\u001a\u0004\b`\u0010]¨\u0006c"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSMixColorTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "gradientEnable", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Landroid/content/Context;Z)Ljava/lang/String;", "b", "", "c", "(Landroid/content/Context;Z)I", "d", MediaFormat.KEY_LEVEL, "Lzfb;", "setMixLevel", "(I)V", "gradient", "setGradientEnable", "(Z)V", "blendShader1", "blendShader2", "color1", "color2", "setCustomParam", "(IIII)V", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "hasOverlappingRendering", "()Z", "resetGradientShader", "()V", "mCurrentLevel", "Landroid/graphics/RuntimeXfermode;", "applyMultiBlendMode", "(Landroid/content/Context;ZI)Landroid/graphics/RuntimeXfermode;", "", "toNormalizedRGBA", "(I)[F", "Ljava/lang/String;", AbstractID3v1Tag.TAG, "Landroid/graphics/LinearGradient;", "Landroid/graphics/LinearGradient;", "getMLinearGradient", "()Landroid/graphics/LinearGradient;", "setMLinearGradient", "(Landroid/graphics/LinearGradient;)V", "mLinearGradient", "e", "I", "getMStartColor", "()I", "setMStartColor", "mStartColor", "f", "getMEndColor", "setMEndColor", "mEndColor", GslbInterceptor.HEADER_KEY_GSLB, "Z", "getMGradientEnable", "setMGradientEnable", "mGradientEnable", "getMCurrentLevel", "setMCurrentLevel", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "getCustom", "setCustom", "custom", "j", "getBlendShader1", "setBlendShader1", "k", "getBlendShader2", "setBlendShader2", CmcdData.STREAM_TYPE_LIVE, "getColor1", "setColor1", CmcdData.OBJECT_TYPE_MANIFEST, "getColor2", "setColor2", "", "n", "Lyi5;", "getTextColors", "()[I", "textColors", "o", "getTextColarToken", "textColarToken", "Companion", "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSMixColorTextView extends AppCompatTextView {
    public static final int MIX_LEVEL_1 = 0;
    public static final int MIX_LEVEL_2 = 1;
    public static final int MIX_LEVEL_3 = 2;
    public static final int MIX_LEVEL_4 = 3;

    public final String TAG;

    public LinearGradient mLinearGradient;

    public int mStartColor;

    public int mEndColor;

    public boolean mGradientEnable;

    public int mCurrentLevel;

    public boolean custom;

    public int blendShader1;

    public int blendShader2;

    public int color1;

    public int color2;

    public final yi5 textColors;

    public final yi5 textColarToken;
    public static final Map p = new LinkedHashMap();

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OSMixColorTextView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        y45.j(context, "context");
    }

    private final int[] getTextColarToken() {
        return (int[]) this.textColarToken.getValue();
    }

    private final int[] getTextColors() {
        return (int[]) this.textColors.getValue();
    }

    public final String a(Context context, boolean gradientEnable) {
        return !context.getResources().getConfiguration().isNightModeActive() ? xlb.d(context, R.raw.blender_test_luminosity) : xlb.d(context, R.raw.blender_srcover);
    }

    public final RuntimeXfermode applyMultiBlendMode(Context context, boolean gradientEnable, int mCurrentLevel) {
        String strA;
        String strB;
        int iC;
        int iD;
        float[] normalizedRGBA;
        float[] normalizedRGBA2;
        Object obj;
        Object obj2;
        y45.j(context, "context");
        if (this.custom) {
            strA = xlb.d(context, this.blendShader1);
            strB = xlb.d(context, this.blendShader2);
            normalizedRGBA = toNormalizedRGBA(this.color1);
            normalizedRGBA2 = toNormalizedRGBA(this.color2);
            iC = 0;
            iD = 0;
        } else {
            strA = a(context, gradientEnable);
            strB = b(context, gradientEnable);
            iC = c(context, gradientEnable);
            iD = d(context, gradientEnable);
            normalizedRGBA = toNormalizedRGBA(iC);
            normalizedRGBA2 = toNormalizedRGBA(iD);
        }
        String str = ((Object) strA) + "|" + ((Object) strB) + "|" + iC + "|" + iD + "|" + gradientEnable + "|" + this.custom;
        if (!gradientEnable) {
            Map map = p;
            Object obj3 = map.get(str);
            if (obj3 == null) {
                obj2 = obj3;
                RuntimeXfermode runtimeXfermode = new RuntimeXfermode("uniform blender blender1;\nuniform float4 color1;\nuniform blender blender2;\nuniform float4 color2;\nhalf4 main(half4 src, half4 dst) {\n\thalf4 dst1 = blender1.eval(color1, dst);\n\thalf4 dst2 = blender2.eval(color2, dst1);\n\treturn mix(dst,dst2,src.a);\n}");
                runtimeXfermode.setInputXfermode("blender1", new RuntimeXfermode(strA));
                runtimeXfermode.setInputXfermode("blender2", new RuntimeXfermode(strB));
                map.put(str, runtimeXfermode);
                obj2 = runtimeXfermode;
            }
            obj2 = obj3;
            RuntimeXfermode runtimeXfermode2 = (RuntimeXfermode) obj2;
            runtimeXfermode2.setFloatUniform("color1", normalizedRGBA[0], normalizedRGBA[1], normalizedRGBA[2], normalizedRGBA[3]);
            runtimeXfermode2.setFloatUniform("color2", normalizedRGBA2[0], normalizedRGBA2[1], normalizedRGBA2[2], normalizedRGBA2[3]);
            return runtimeXfermode2;
        }
        Map map2 = p;
        Object obj4 = map2.get(str);
        if (obj4 == null) {
            obj = obj4;
            RuntimeXfermode runtimeXfermode3 = new RuntimeXfermode("uniform blender blender1;\nuniform float4 color1;\nuniform blender blender2;\nuniform float4 color2;\nuniform blender blender3;\nuniform float4 color3;\nhalf4 main(half4 src, half4 dst) {\n\thalf4 dst1 = blender1.eval(src, dst);\n\thalf4 dst2 = blender2.eval(color2, dst1);\n\thalf4 dst3 = blender3.eval(color3, dst2);\n\treturn mix(dst,dst3,src.a);\n}");
            int i = R.raw.blender_srcover;
            runtimeXfermode3.setInputXfermode("blender1", new RuntimeXfermode(xlb.d(context, i)));
            runtimeXfermode3.setInputXfermode("blender2", new RuntimeXfermode(xlb.d(context, R.raw.blender_test_colordodge)));
            runtimeXfermode3.setInputXfermode("blender3", new RuntimeXfermode(xlb.d(context, i)));
            map2.put(str, runtimeXfermode3);
            obj = runtimeXfermode3;
        }
        obj = obj4;
        RuntimeXfermode runtimeXfermode4 = (RuntimeXfermode) obj;
        runtimeXfermode4.setFloatUniform("color2", 0.325f, 0.325f, 0.325f, 1.0f);
        runtimeXfermode4.setFloatUniform("color3", 1.0f, 1.0f, 1.0f, 0.6f);
        return runtimeXfermode4;
    }

    public final String b(Context context, boolean gradientEnable) {
        return !context.getResources().getConfiguration().isNightModeActive() ? xlb.d(context, R.raw.blender_test_color_burn) : xlb.d(context, R.raw.blender_test_colordodge);
    }

    public final int c(Context context, boolean gradientEnable) {
        if (context.getResources().getConfiguration().isNightModeActive()) {
            int i = this.mCurrentLevel;
            if (i == 2) {
                return context.getColor(R.color.os_mix_text_l3_light_color_light);
            }
            if (i == 1) {
                return context.getColor(R.color.os_mix_text_l2_light_color_light);
            }
            return i == 0 ? context.getColor(R.color.os_mix_text_l1_light_color_light) : context.getColor(R.color.os_mix_text_l4_light_color_light);
        }
        int i2 = this.mCurrentLevel;
        if (i2 == 2 || gradientEnable) {
            return context.getColor(R.color.os_mix_text_l3_night_color_luminosity);
        }
        if (i2 == 1) {
            return context.getColor(R.color.os_mix_text_l2_night_color_luminosity);
        }
        return i2 == 0 ? context.getColor(R.color.os_mix_text_l1_night_color_luminosity) : context.getColor(R.color.os_mix_text_l4_night_color_luminosity);
    }

    public final int d(Context context, boolean gradientEnable) {
        boolean zIsNightModeActive = context.getResources().getConfiguration().isNightModeActive();
        if (gradientEnable) {
            return -1;
        }
        if (zIsNightModeActive) {
            int i = this.mCurrentLevel;
            if (i == 2) {
                return context.getColor(R.color.os_mix_text_l3_light_color_dodge);
            }
            if (i == 1) {
                return context.getColor(R.color.os_mix_text_l2_light_color_dodge);
            }
            return i == 0 ? context.getColor(R.color.os_mix_text_l1_light_color_dodge) : context.getColor(R.color.os_mix_text_l4_light_color_dodge);
        }
        int i2 = this.mCurrentLevel;
        if (i2 == 2) {
            return context.getColor(R.color.os_mix_text_l3_night_color_burn);
        }
        if (i2 == 1) {
            return context.getColor(R.color.os_mix_text_l2_night_color_burn);
        }
        return i2 == 0 ? context.getColor(R.color.os_mix_text_l1_night_color_burn) : context.getColor(R.color.os_mix_text_l4_night_color_burn);
    }

    public final int getBlendShader1() {
        return this.blendShader1;
    }

    public final int getBlendShader2() {
        return this.blendShader2;
    }

    public final int getColor1() {
        return this.color1;
    }

    public final int getColor2() {
        return this.color2;
    }

    public final boolean getCustom() {
        return this.custom;
    }

    public final int getMCurrentLevel() {
        return this.mCurrentLevel;
    }

    public final int getMEndColor() {
        return this.mEndColor;
    }

    public final boolean getMGradientEnable() {
        return this.mGradientEnable;
    }

    public final LinearGradient getMLinearGradient() {
        return this.mLinearGradient;
    }

    public final int getMStartColor() {
        return this.mStartColor;
    }

    @Override
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (this.mGradientEnable) {
            resetGradientShader();
        }
    }

    public final void resetGradientShader() {
        if (olb.O) {
            this.mLinearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, getHeight(), this.mStartColor, this.mEndColor, Shader.TileMode.CLAMP);
            getPaint().setShader(this.mLinearGradient);
            invalidate();
        }
    }

    public final void setBlendShader1(int i) {
        this.blendShader1 = i;
    }

    public final void setBlendShader2(int i) {
        this.blendShader2 = i;
    }

    public final void setColor1(int i) {
        this.color1 = i;
    }

    public final void setColor2(int i) {
        this.color2 = i;
    }

    public final void setCustom(boolean z) {
        this.custom = z;
    }

    public final void setCustomParam(@RawRes int blendShader1, @RawRes int blendShader2, @ColorRes int color1, @ColorRes int color2) {
        if (olb.O) {
            this.blendShader1 = blendShader1;
            this.blendShader2 = blendShader2;
            this.color1 = getContext().getColor(color1);
            this.color2 = getContext().getColor(color2);
            TextPaint paint = getPaint();
            Context context = getContext();
            y45.i(context, "context");
            paint.setXfermode(applyMultiBlendMode(context, this.mGradientEnable, this.mCurrentLevel));
            invalidate();
        }
    }

    public final void setGradientEnable(boolean gradient) {
        if (olb.O) {
            if (this.mGradientEnable != gradient) {
                this.mGradientEnable = gradient;
                if (gradient) {
                    resetGradientShader();
                } else {
                    getPaint().setShader(null);
                }
                TextPaint paint = getPaint();
                Context context = getContext();
                y45.i(context, "context");
                paint.setXfermode(applyMultiBlendMode(context, gradient, this.mCurrentLevel));
            }
            invalidate();
        }
    }

    public final void setMCurrentLevel(int i) {
        this.mCurrentLevel = i;
    }

    public final void setMEndColor(int i) {
        this.mEndColor = i;
    }

    public final void setMGradientEnable(boolean z) {
        this.mGradientEnable = z;
    }

    public final void setMLinearGradient(LinearGradient linearGradient) {
        this.mLinearGradient = linearGradient;
    }

    public final void setMStartColor(int i) {
        this.mStartColor = i;
    }

    public final void setMixLevel(int level) {
        if (!olb.O) {
            setTextColor(getTextColors()[level]);
            return;
        }
        if (this.mCurrentLevel != level) {
            this.mCurrentLevel = level;
            TextPaint paint = getPaint();
            Context context = getContext();
            y45.i(context, "context");
            paint.setXfermode(applyMultiBlendMode(context, this.mGradientEnable, this.mCurrentLevel));
        }
        invalidate();
    }

    public final float[] toNormalizedRGBA(int i) {
        float[] fArr = {Color.red(i) / 255.0f, Color.green(i) / 255.0f, Color.blue(i) / 255.0f, Color.alpha(i) / 255.0f};
        Log.d(this.TAG, "toNormalizedRGBA: red = " + fArr[0] + " green = " + fArr[1] + " blue = " + fArr[2] + " alpha = " + fArr[3] + " color" + fArr);
        return fArr;
    }

    public OSMixColorTextView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSMixColorTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
        this.TAG = "OSMixColorTextView";
        this.mStartColor = Color.argb(229, 255, 255, 255);
        this.mEndColor = Color.argb(178, 255, 255, 255);
        this.mCurrentLevel = 2;
        this.textColors = b.a(new c74() {
            @Override
            public final int[] invoke() {
                return new int[4];
            }
        });
        this.textColarToken = b.a(new c74() {
            @Override
            public final int[] invoke() {
                return new int[]{R.attr.os_text_info, R.attr.os_text_tertiary, R.attr.os_text_secondary, R.attr.os_text_primary};
            }
        });
        int[] iArr = R.styleable.OSMixColorTextView;
        y45.i(iArr, "OSMixColorTextView");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        this.mGradientEnable = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSMixColorTextView_os_grident, false);
        this.custom = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSMixColorTextView_os_mix_custom, false);
        this.blendShader1 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.OSMixColorTextView_os_mix_blendShader1, 0);
        this.blendShader2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.OSMixColorTextView_os_mix_blendShader2, 0);
        this.color1 = typedArrayObtainStyledAttributes.getColor(R.styleable.OSMixColorTextView_os_mix_color1, 0);
        this.color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.OSMixColorTextView_os_mix_color2, 0);
        int i = typedArrayObtainStyledAttributes.getInt(R.styleable.OSMixColorTextView_os_mix_level, 2);
        this.mCurrentLevel = i;
        bq5.c("OSMixColorTextView", "mCurrentLevel: " + i + " custom " + this.custom + " color1 " + this.color1 + " blendShader1 " + this.blendShader1);
        boolean z = olb.O;
        if (z) {
            setTextColor(Color.parseColor("#FFFFFFFF"));
            setHintTextColor(Color.parseColor("#FFFFFFFF"));
            if (this.custom && !this.mGradientEnable) {
                setTextColor(context.getColor(R.color.os_mix_text_color_l4));
            } else {
                getPaint().setXfermode(applyMultiBlendMode(context, this.mGradientEnable, this.mCurrentLevel));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        if (z) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, getTextColarToken(), 0, 0);
        y45.i(typedArrayObtainStyledAttributes2, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        getTextColors()[0] = typedArrayObtainStyledAttributes2.getColor(0, 0);
        getTextColors()[1] = typedArrayObtainStyledAttributes2.getColor(1, 0);
        getTextColors()[2] = typedArrayObtainStyledAttributes2.getColor(2, 0);
        getTextColors()[3] = typedArrayObtainStyledAttributes2.getColor(3, 0);
        typedArrayObtainStyledAttributes2.recycle();
        setTextColor(getTextColors()[this.mCurrentLevel]);
    }
}
