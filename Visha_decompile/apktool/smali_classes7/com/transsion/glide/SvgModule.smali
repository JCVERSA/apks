.class public Lcom/transsion/glide/SvgModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 0

    new-instance p0, Lk7a;

    invoke-direct {p0}, Lk7a;-><init>()V

    const-class p1, Lcom/caverock/androidsvg/SVG;

    const-class p2, Landroid/graphics/drawable/PictureDrawable;

    invoke-virtual {p3, p1, p2, p0}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object p0

    new-instance p2, Lg7a;

    invoke-direct {p2}, Lg7a;-><init>()V

    const-class p3, Ljava/io/InputStream;

    invoke-virtual {p0, p3, p1, p2}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    return-void
.end method
