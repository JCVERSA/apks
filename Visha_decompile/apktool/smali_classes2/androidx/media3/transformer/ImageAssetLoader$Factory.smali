.class public final Landroidx/media3/transformer/ImageAssetLoader$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/ImageAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/util/BitmapLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/ImageAssetLoader$Factory;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/transformer/ImageAssetLoader$Factory;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    return-void
.end method


# virtual methods
.method public createAssetLoader(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)Landroidx/media3/transformer/AssetLoader;
    .locals 7

    new-instance p2, Landroidx/media3/transformer/ImageAssetLoader;

    iget-object v1, p0, Landroidx/media3/transformer/ImageAssetLoader$Factory;->context:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media3/transformer/ImageAssetLoader$Factory;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    iget-boolean v5, p4, Landroidx/media3/transformer/AssetLoader$CompositionSettings;->retainHdrFromUltraHdrImage:Z

    const/4 v6, 0x0

    move-object v0, p2

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/transformer/ImageAssetLoader;-><init>(Landroid/content/Context;Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/common/util/BitmapLoader;ZLandroidx/media3/transformer/ImageAssetLoader$1;)V

    return-object p2
.end method
