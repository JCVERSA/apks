package androidx.compose.ui.graphics;

import android.graphics.Shader;

public abstract class k1 {

    public static final class a extends y4 {

        final Shader f4154e;

        a(Shader shader) {
            this.f4154e = shader;
        }

        @Override
        public Shader b(long j10) {
            return this.f4154e;
        }
    }

    public static final y4 a(Shader shader) {
        return new a(shader);
    }
}
