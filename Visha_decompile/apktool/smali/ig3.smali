.class public final synthetic Lig3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/RenderersFactory;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/RenderersFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lig3;->b:Landroidx/media3/exoplayer/RenderersFactory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lig3;->b:Landroidx/media3/exoplayer/RenderersFactory;

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->f(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method
