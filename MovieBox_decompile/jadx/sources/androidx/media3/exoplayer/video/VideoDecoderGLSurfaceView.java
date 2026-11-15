package androidx.media3.exoplayer.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.media3.common.util.GlUtil;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public final class VideoDecoderGLSurfaceView extends GLSurfaceView implements s {

    public static final int f12744b = 0;

    private final a f12745a;

    private static final class a implements GLSurfaceView.Renderer {

        private static final float[] f12746k = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

        private static final float[] f12747l = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

        private static final float[] f12748m = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

        private static final String[] f12749n = {"y_tex", "u_tex", "v_tex"};

        private static final FloatBuffer f12750o = GlUtil.e(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

        private final GLSurfaceView f12751a;

        private final int[] f12752b = new int[3];

        private final int[] f12753c = new int[3];

        private final int[] f12754d = new int[3];

        private final int[] f12755e = new int[3];

        private final AtomicReference f12756f = new AtomicReference();

        private final FloatBuffer[] f12757g = new FloatBuffer[3];

        private androidx.media3.common.util.o f12758h;

        private int f12759i;

        private VideoDecoderOutputBuffer f12760j;

        public a(GLSurfaceView gLSurfaceView) {
            this.f12751a = gLSurfaceView;
            for (int i10 = 0; i10 < 3; i10++) {
                int[] iArr = this.f12754d;
                this.f12755e[i10] = -1;
                iArr[i10] = -1;
            }
        }

        private void b() {
            try {
                GLES20.glGenTextures(3, this.f12752b, 0);
                for (int i10 = 0; i10 < 3; i10++) {
                    GLES20.glUniform1i(this.f12758h.j(f12749n[i10]), i10);
                    GLES20.glActiveTexture(33984 + i10);
                    GlUtil.a(3553, this.f12752b[i10], 9729);
                }
                GlUtil.b();
            } catch (GlUtil.GlException e10) {
                Log.e("VideoDecoderGLSV", "Failed to set up the textures", e10);
            }
        }

        public void a(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
            VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = (VideoDecoderOutputBuffer) this.f12756f.getAndSet(videoDecoderOutputBuffer);
            if (videoDecoderOutputBuffer2 != null) {
                videoDecoderOutputBuffer2.release();
            }
            this.f12751a.requestRender();
        }

        @Override
        public void onDrawFrame(GL10 gl10) {
            VideoDecoderOutputBuffer videoDecoderOutputBuffer = (VideoDecoderOutputBuffer) this.f12756f.getAndSet(null);
            if (videoDecoderOutputBuffer == null && this.f12760j == null) {
                return;
            }
            if (videoDecoderOutputBuffer != null) {
                VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = this.f12760j;
                if (videoDecoderOutputBuffer2 != null) {
                    videoDecoderOutputBuffer2.release();
                }
                this.f12760j = videoDecoderOutputBuffer;
            }
            VideoDecoderOutputBuffer videoDecoderOutputBuffer3 = (VideoDecoderOutputBuffer) androidx.media3.common.util.a.e(this.f12760j);
            float[] fArr = f12747l;
            int i10 = videoDecoderOutputBuffer3.colorspace;
            if (i10 == 1) {
                fArr = f12746k;
            } else if (i10 == 3) {
                fArr = f12748m;
            }
            GLES20.glUniformMatrix3fv(this.f12759i, 1, false, fArr, 0);
            int[] iArr = (int[]) androidx.media3.common.util.a.e(videoDecoderOutputBuffer3.yuvStrides);
            ByteBuffer[] byteBufferArr = (ByteBuffer[]) androidx.media3.common.util.a.e(videoDecoderOutputBuffer3.yuvPlanes);
            for (int i11 = 0; i11 < 3; i11++) {
                int i12 = videoDecoderOutputBuffer3.height;
                if (i11 != 0) {
                    i12 = (i12 + 1) / 2;
                }
                int i13 = i12;
                GLES20.glActiveTexture(33984 + i11);
                GLES20.glBindTexture(3553, this.f12752b[i11]);
                GLES20.glPixelStorei(3317, 1);
                GLES20.glTexImage2D(3553, 0, 6409, iArr[i11], i13, 0, 6409, 5121, byteBufferArr[i11]);
            }
            int i14 = videoDecoderOutputBuffer3.width;
            int i15 = (i14 + 1) / 2;
            int[] iArr2 = {i14, i15, i15};
            for (int i16 = 0; i16 < 3; i16++) {
                if (this.f12754d[i16] != iArr2[i16] || this.f12755e[i16] != iArr[i16]) {
                    androidx.media3.common.util.a.g(iArr[i16] != 0);
                    float f10 = iArr2[i16] / iArr[i16];
                    this.f12757g[i16] = GlUtil.e(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f10, 0.0f, f10, 1.0f});
                    GLES20.glVertexAttribPointer(this.f12753c[i16], 2, 5126, false, 0, (Buffer) this.f12757g[i16]);
                    this.f12754d[i16] = iArr2[i16];
                    this.f12755e[i16] = iArr[i16];
                }
            }
            GLES20.glClear(16384);
            GLES20.glDrawArrays(5, 0, 4);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e10) {
                Log.e("VideoDecoderGLSV", "Failed to draw a frame", e10);
            }
        }

        @Override
        public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
            GLES20.glViewport(0, 0, i10, i11);
        }

        @Override
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            try {
                androidx.media3.common.util.o oVar = new androidx.media3.common.util.o("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
                this.f12758h = oVar;
                GLES20.glVertexAttribPointer(oVar.e("in_pos"), 2, 5126, false, 0, (Buffer) f12750o);
                this.f12753c[0] = this.f12758h.e("in_tc_y");
                this.f12753c[1] = this.f12758h.e("in_tc_u");
                this.f12753c[2] = this.f12758h.e("in_tc_v");
                this.f12759i = this.f12758h.j("mColorConversion");
                GlUtil.b();
                b();
                GlUtil.b();
            } catch (GlUtil.GlException e10) {
                Log.e("VideoDecoderGLSV", "Failed to set up the textures and program", e10);
            }
        }
    }

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    @Override
    public void setOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        this.f12745a.a(videoDecoderOutputBuffer);
    }

    public VideoDecoderGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a aVar = new a(this);
        this.f12745a = aVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setRenderMode(0);
    }

    @Deprecated
    public s getVideoDecoderOutputBufferRenderer() {
        return this;
    }
}
