package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.GlUtil;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public final class VideoDecoderGLSurfaceView extends GLSurfaceView implements h {

    public static final int f26934b = 0;

    private final a f26935a;

    private static final class a implements GLSurfaceView.Renderer {

        private static final float[] f26936j = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

        private static final float[] f26937k = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

        private static final float[] f26938l = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

        private static final String[] f26939m = {"y_tex", "u_tex", "v_tex"};

        private static final FloatBuffer f26940n = GlUtil.e(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

        private final GLSurfaceView f26941a;

        private final int[] f26942b = new int[3];

        private final int[] f26943c = new int[3];

        private final int[] f26944d = new int[3];

        private final int[] f26945e = new int[3];

        private final AtomicReference f26946f = new AtomicReference();

        private final FloatBuffer[] f26947g = new FloatBuffer[3];

        private com.google.android.exoplayer2.util.n f26948h;

        private int f26949i;

        public a(GLSurfaceView gLSurfaceView) {
            this.f26941a = gLSurfaceView;
            for (int i10 = 0; i10 < 3; i10++) {
                int[] iArr = this.f26944d;
                this.f26945e[i10] = -1;
                iArr[i10] = -1;
            }
        }

        private void b() {
            GLES20.glGenTextures(3, this.f26942b, 0);
            for (int i10 = 0; i10 < 3; i10++) {
                GLES20.glUniform1i(this.f26948h.j(f26939m[i10]), i10);
                GLES20.glActiveTexture(33984 + i10);
                GlUtil.a(3553, this.f26942b[i10]);
            }
            GlUtil.c();
        }

        public void a(com.google.android.exoplayer2.decoder.h hVar) {
            android.support.v4.media.session.c.a(this.f26946f.getAndSet(hVar));
            this.f26941a.requestRender();
        }

        @Override
        public void onDrawFrame(GL10 gl10) {
            android.support.v4.media.session.c.a(this.f26946f.getAndSet(null));
        }

        @Override
        public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
            GLES20.glViewport(0, 0, i10, i11);
        }

        @Override
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            com.google.android.exoplayer2.util.n nVar = new com.google.android.exoplayer2.util.n("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
            this.f26948h = nVar;
            GLES20.glVertexAttribPointer(nVar.e("in_pos"), 2, 5126, false, 0, (Buffer) f26940n);
            this.f26943c[0] = this.f26948h.e("in_tc_y");
            this.f26943c[1] = this.f26948h.e("in_tc_u");
            this.f26943c[2] = this.f26948h.e("in_tc_v");
            this.f26949i = this.f26948h.j("mColorConversion");
            GlUtil.c();
            b();
            GlUtil.c();
        }
    }

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    public void setOutputBuffer(com.google.android.exoplayer2.decoder.h hVar) {
        this.f26935a.a(hVar);
    }

    public VideoDecoderGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a aVar = new a(this);
        this.f26935a = aVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setRenderMode(0);
    }

    @Deprecated
    public h getVideoDecoderOutputBufferRenderer() {
        return this;
    }
}
