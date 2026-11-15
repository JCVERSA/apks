.class public final synthetic Landroidx/media3/transformer/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;

.field public final synthetic c:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/e0;->b:Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;

    iput-object p2, p0, Landroidx/media3/transformer/e0;->c:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/e0;->b:Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;

    iget-object p0, p0, Landroidx/media3/transformer/e0;->c:Landroid/view/Surface;

    invoke-static {v0, p0}, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->a(Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;Landroid/view/Surface;)V

    return-void
.end method
