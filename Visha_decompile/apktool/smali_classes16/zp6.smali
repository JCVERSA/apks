.class public final Lzp6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lzp6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzp6;

    invoke-direct {v0}, Lzp6;-><init>()V

    sput-object v0, Lzp6;->a:Lzp6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;I)Landroid/graphics/RuntimeXfermode;
    .locals 2

    const-string v0, "blendShader1"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blendShader2"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-ne p4, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/RuntimeXfermode;

    const-string v1, "uniform blender blender1;\nuniform float4 color1;\nuniform blender blender2;\nuniform float4 color2;\nhalf4 main(half4 src, half4 dst) {\n\thalf4 dst1 = blender1.eval(color1, dst);\n\thalf4 dst2 = blender2.eval(color2, dst1);\n\treturn mix(dst, dst2, src.a);\n}"

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeXfermode;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/RuntimeXfermode;

    invoke-direct {v1, p1}, Landroid/graphics/RuntimeXfermode;-><init>(Ljava/lang/String;)V

    const-string p1, "blender1"

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RuntimeXfermode;->setInputXfermode(Ljava/lang/String;Landroid/graphics/RuntimeXfermode;)V

    new-instance p1, Landroid/graphics/RuntimeXfermode;

    invoke-direct {p1, p3}, Landroid/graphics/RuntimeXfermode;-><init>(Ljava/lang/String;)V

    const-string p3, "blender2"

    invoke-virtual {v0, p3, p1}, Landroid/graphics/RuntimeXfermode;->setInputXfermode(Ljava/lang/String;Landroid/graphics/RuntimeXfermode;)V

    const-string p1, "color1"

    invoke-virtual {p0, p2}, Lzp6;->d(I)[F

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RuntimeXfermode;->setFloatUniform(Ljava/lang/String;[F)V

    const-string p1, "color2"

    invoke-virtual {p0, p4}, Lzp6;->d(I)[F

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/RuntimeXfermode;->setFloatUniform(Ljava/lang/String;[F)V

    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)Landroid/graphics/RuntimeXfermode;
    .locals 2

    const-string v0, "blendShader1"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blendShader2"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blendShader3"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-ne p4, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/RuntimeXfermode;

    const-string v1, "uniform blender blender1;\nuniform float4 color1;\nuniform blender blender2;\nuniform float4 color2;\nuniform blender blender3;\nuniform float4 color3;\nhalf4 main(half4 src, half4 dst) {\n\thalf4 dst1 = blender1.eval(color1, dst);\n\thalf4 dst2 = blender2.eval(color2, dst1);\n\thalf4 dst3 = blender3.eval(color3, dst2);\n\treturn mix(dst, dst3, src.a);\n}"

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeXfermode;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/RuntimeXfermode;

    invoke-direct {v1, p1}, Landroid/graphics/RuntimeXfermode;-><init>(Ljava/lang/String;)V

    const-string p1, "blender1"

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RuntimeXfermode;->setInputXfermode(Ljava/lang/String;Landroid/graphics/RuntimeXfermode;)V

    new-instance p1, Landroid/graphics/RuntimeXfermode;

    invoke-direct {p1, p3}, Landroid/graphics/RuntimeXfermode;-><init>(Ljava/lang/String;)V

    const-string p3, "blender2"

    invoke-virtual {v0, p3, p1}, Landroid/graphics/RuntimeXfermode;->setInputXfermode(Ljava/lang/String;Landroid/graphics/RuntimeXfermode;)V

    new-instance p1, Landroid/graphics/RuntimeXfermode;

    invoke-direct {p1, p5}, Landroid/graphics/RuntimeXfermode;-><init>(Ljava/lang/String;)V

    const-string p3, "blender3"

    invoke-virtual {v0, p3, p1}, Landroid/graphics/RuntimeXfermode;->setInputXfermode(Ljava/lang/String;Landroid/graphics/RuntimeXfermode;)V

    const-string p1, "color1"

    invoke-virtual {p0, p2}, Lzp6;->d(I)[F

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RuntimeXfermode;->setFloatUniform(Ljava/lang/String;[F)V

    const-string p1, "color2"

    invoke-virtual {p0, p4}, Lzp6;->d(I)[F

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RuntimeXfermode;->setFloatUniform(Ljava/lang/String;[F)V

    const-string p1, "color3"

    invoke-virtual {p0, p6}, Lzp6;->d(I)[F

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/RuntimeXfermode;->setFloatUniform(Ljava/lang/String;[F)V

    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Ljava/lang/String;I)Landroid/graphics/RuntimeXfermode;
    .locals 2

    const-string v0, "blendShader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Landroid/graphics/RuntimeXfermode;

    const-string v1, "uniform blender blender1;\nuniform float4 color1;\nhalf4 main(half4 src, half4 dst) {\n\thalf4 dst1 = blender1.eval(color1, dst);\n\treturn dst1;\n}"

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeXfermode;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/RuntimeXfermode;

    invoke-direct {v1, p1}, Landroid/graphics/RuntimeXfermode;-><init>(Ljava/lang/String;)V

    const-string p1, "blender1"

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RuntimeXfermode;->setInputXfermode(Ljava/lang/String;Landroid/graphics/RuntimeXfermode;)V

    const-string p1, "color1"

    invoke-virtual {p0, p2}, Lzp6;->d(I)[F

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/RuntimeXfermode;->setFloatUniform(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public final d(I)[F
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput p0, v0, v3

    const/4 p0, 0x1

    aput v1, v0, p0

    const/4 p0, 0x2

    aput v2, v0, p0

    const/4 p0, 0x3

    aput p1, v0, p0

    return-object v0
.end method
