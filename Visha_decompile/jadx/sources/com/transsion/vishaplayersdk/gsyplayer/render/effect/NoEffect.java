package com.transsion.vishaplayersdk.gsyplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.transsion.vishaplayersdk.gsyplayer.render.view.GSYVideoGLView;

public class NoEffect implements GSYVideoGLView.ShaderInterface {
    @Override
    public String getShader(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
    }
}
