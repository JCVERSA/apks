package com.transsion.vishaplayersdk.gsyplayer.render.effect;

import android.opengl.GLSurfaceView;
import com.transsion.vishaplayersdk.gsyplayer.render.view.GSYVideoGLView;

public class GammaEffect implements GSYVideoGLView.ShaderInterface {
    private float gammaValue;

    public GammaEffect(float f) {
        f = f < 0.0f ? 0.0f : f;
        this.gammaValue = f > 2.0f ? 2.0f : f;
    }

    @Override
    public String getShader(GLSurfaceView gLSurfaceView) {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nfloat gamma=" + this.gammaValue + ";\nvoid main() {\nvec4 textureColor = texture2D(sTexture, vTextureCoord);\ngl_FragColor = vec4(pow(textureColor.rgb, vec3(gamma)), textureColor.w);\n}\n";
    }
}
