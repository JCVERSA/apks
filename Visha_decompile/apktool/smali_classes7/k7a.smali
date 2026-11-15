.class public Lk7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transcode(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG;->r()Landroid/graphics/Picture;

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {p1, p0}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    new-instance p0, Lcom/bumptech/glide/load/resource/SimpleResource;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/SimpleResource;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
