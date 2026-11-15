.class public Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/BlackAndWhiteEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShader(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;
    .locals 0

    const-string p0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float colorR = (color.r + color.g + color.b) / 3.0;\n  float colorG = (color.r + color.g + color.b) / 3.0;\n  float colorB = (color.r + color.g + color.b) / 3.0;\n  gl_FragColor = vec4(colorR, colorG, colorB, color.a);\n}\n"

    return-object p0
.end method
