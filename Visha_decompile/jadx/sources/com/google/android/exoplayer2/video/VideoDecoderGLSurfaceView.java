package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.GlUtil;
import defpackage.fi4;
import defpackage.ubc;
import defpackage.xpb;
import defpackage.ypb;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public final class VideoDecoderGLSurfaceView extends GLSurfaceView implements ypb {
    public final a b;

    public static final class a implements GLSurfaceView.Renderer {
        public static final float[] k = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};
        public static final float[] l = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};
        public static final float[] m = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};
        public static final String[] n = {"y_tex", "u_tex", "v_tex"};
        public static final FloatBuffer o = GlUtil.e(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});
        public final GLSurfaceView b;
        public final int[] c = new int[3];
        public final int[] d = new int[3];
        public final int[] e = new int[3];
        public final int[] f = new int[3];
        public final AtomicReference g = new AtomicReference();
        public final FloatBuffer[] h = new FloatBuffer[3];
        public fi4 i;
        public int j;

        public a(GLSurfaceView gLSurfaceView) {
            this.b = gLSurfaceView;
            for (int i = 0; i < 3; i++) {
                int[] iArr = this.e;
                this.f[i] = -1;
                iArr[i] = -1;
            }
        }

        public void a(xpb xpbVar) {
            ubc.a(this.g.getAndSet(xpbVar));
            this.b.requestRender();
        }

        public final void b() {
            GLES20.glGenTextures(3, this.c, 0);
            for (int i = 0; i < 3; i++) {
                GLES20.glUniform1i(this.i.j(n[i]), i);
                GLES20.glActiveTexture(33984 + i);
                GlUtil.a(3553, this.c[i]);
            }
            GlUtil.c();
        }

        @Override
        public void onDrawFrame(GL10 gl10) {
            ubc.a(this.g.getAndSet(null));
        }

        @Override
        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
            GLES20.glViewport(0, 0, i, i2);
        }

        @Override
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            fi4 fi4Var = new fi4("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
            this.i = fi4Var;
            GLES20.glVertexAttribPointer(fi4Var.e("in_pos"), 2, 5126, false, 0, (Buffer) o);
            this.d[0] = this.i.e("in_tc_y");
            this.d[1] = this.i.e("in_tc_u");
            this.d[2] = this.i.e("in_tc_v");
            this.j = this.i.j("mColorConversion");
            GlUtil.c();
            b();
            GlUtil.c();
        }
    }

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    @Deprecated
    public ypb getVideoDecoderOutputBufferRenderer() {
        return this;
    }

    public void setOutputBuffer(xpb xpbVar) {
        this.b.a(xpbVar);
    }

    public VideoDecoderGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a aVar = new a(this);
        this.b = aVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setRenderMode(0);
    }
}
