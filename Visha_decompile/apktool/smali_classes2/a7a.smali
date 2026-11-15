.class public final synthetic La7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/transformer/SurfaceAssetLoader;

.field public final synthetic c:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/SurfaceAssetLoader;Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La7a;->b:Landroidx/media3/transformer/SurfaceAssetLoader;

    iput-object p2, p0, La7a;->c:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, La7a;->b:Landroidx/media3/transformer/SurfaceAssetLoader;

    iget-object p0, p0, La7a;->c:Landroidx/media3/common/Format;

    invoke-static {v0, p0}, Landroidx/media3/transformer/SurfaceAssetLoader;->b(Landroidx/media3/transformer/SurfaceAssetLoader;Landroidx/media3/common/Format;)V

    return-void
.end method
