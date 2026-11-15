.class public final synthetic Landroidx/media3/transformer/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/transformer/ImageAssetLoader$1;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/ImageAssetLoader$1;Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/d0;->b:Landroidx/media3/transformer/ImageAssetLoader$1;

    iput-object p2, p0, Landroidx/media3/transformer/d0;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Landroidx/media3/transformer/d0;->d:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/transformer/d0;->b:Landroidx/media3/transformer/ImageAssetLoader$1;

    iget-object v1, p0, Landroidx/media3/transformer/d0;->c:Landroid/graphics/Bitmap;

    iget-object p0, p0, Landroidx/media3/transformer/d0;->d:Landroidx/media3/common/Format;

    invoke-static {v0, v1, p0}, Landroidx/media3/transformer/ImageAssetLoader$1;->a(Landroidx/media3/transformer/ImageAssetLoader$1;Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V

    return-void
.end method
