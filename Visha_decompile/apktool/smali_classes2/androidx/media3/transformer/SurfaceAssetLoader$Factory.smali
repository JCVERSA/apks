.class public final Landroidx/media3/transformer/SurfaceAssetLoader$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SurfaceAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final callback:Landroidx/media3/transformer/SurfaceAssetLoader$Callback;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/SurfaceAssetLoader$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/SurfaceAssetLoader$Factory;->callback:Landroidx/media3/transformer/SurfaceAssetLoader$Callback;

    return-void
.end method


# virtual methods
.method public bridge synthetic createAssetLoader(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)Landroidx/media3/transformer/AssetLoader;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/transformer/SurfaceAssetLoader$Factory;->createAssetLoader(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)Landroidx/media3/transformer/SurfaceAssetLoader;

    move-result-object p0

    return-object p0
.end method

.method public createAssetLoader(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)Landroidx/media3/transformer/SurfaceAssetLoader;
    .locals 6

    .line 2
    iget-object p4, p1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p4, p4, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p4, p4, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 3
    invoke-virtual {p4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string/jumbo v0, "transformer_surface_asset"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 4
    new-instance p4, Landroidx/media3/transformer/SurfaceAssetLoader;

    iget-object v4, p0, Landroidx/media3/transformer/SurfaceAssetLoader$Factory;->callback:Landroidx/media3/transformer/SurfaceAssetLoader$Callback;

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/transformer/SurfaceAssetLoader;-><init>(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/SurfaceAssetLoader$Callback;Landroidx/media3/transformer/SurfaceAssetLoader$1;)V

    .line 5
    iget-object p0, p0, Landroidx/media3/transformer/SurfaceAssetLoader$Factory;->callback:Landroidx/media3/transformer/SurfaceAssetLoader$Callback;

    invoke-interface {p0, p4}, Landroidx/media3/transformer/SurfaceAssetLoader$Callback;->onSurfaceAssetLoaderCreated(Landroidx/media3/transformer/SurfaceAssetLoader;)V

    return-object p4
.end method
