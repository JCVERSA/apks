package di;

import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import kotlin.jvm.internal.Intrinsics;

public final class b extends CharacterStyle implements UpdateAppearance {

    private final int f59039a;

    private final int f59040b;

    private final String f59041c;

    public b(int i10, int i11, String gradientText) {
        Intrinsics.h(gradientText, "gradientText");
        this.f59039a = i10;
        this.f59040b = i11;
        this.f59041c = gradientText;
    }

    @Override
    public void updateDrawState(TextPaint tp2) {
        Intrinsics.h(tp2, "tp");
        tp2.setShader(new LinearGradient(0.0f, 0.0f, tp2.measureText(this.f59041c), 0.0f, this.f59039a, this.f59040b, Shader.TileMode.CLAMP));
    }
}
