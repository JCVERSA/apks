package defpackage;

import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import android.widget.EditText;

public abstract class rj4 {

    public static class a extends CharacterStyle implements UpdateAppearance {
        public final Shader b;

        public a(Shader shader) {
            this.b = shader;
        }

        @Override
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setShader(this.b);
        }
    }

    public static SpannableString a(String str, EditText editText) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new a(new LinearGradient(0.0f, 0.0f, editText.getPaint().measureText(str), 0.0f, new int[]{-54678, -6484011}, (float[]) null, Shader.TileMode.CLAMP)), 0, str.length(), 33);
        return spannableString;
    }
}
