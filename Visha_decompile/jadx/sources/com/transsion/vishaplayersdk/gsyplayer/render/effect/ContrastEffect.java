package com.transsion.vishaplayersdk.gsyplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.transsion.vishaplayersdk.gsyplayer.render.view.GSYVideoGLView;

public class ContrastEffect implements GSYVideoGLView.ShaderInterface {
    private float contrast;

    public ContrastEffect(float f) {
        f = f < 0.1f ? 0.1f : f;
        this.contrast = f > 2.0f ? 2.0f : f;
    }

    @Override
    public String getShader(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float contrast;\nvarying vec2 vTextureCoord;\nvoid main() {\n  contrast =" + this.contrast + ";\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  color -= 0.5;\n  color *= contrast;\n  color += 0.5;\n  gl_FragColor = color;\n}\n";
    }
}
