package com.transsion.vishaplayersdk.gsyplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.transsion.vishaplayersdk.gsyplayer.render.view.GSYVideoGLView;

public class GreyScaleEffect implements GSYVideoGLView.ShaderInterface {
    @Override
    public String getShader(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float y = dot(color, vec4(0.299, 0.587, 0.114, 0));\n  gl_FragColor = vec4(y, y, y, color.a);\n}\n";
    }
}
