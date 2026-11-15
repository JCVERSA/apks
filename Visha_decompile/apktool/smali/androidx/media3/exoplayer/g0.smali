.class public final synthetic Landroidx/media3/exoplayer/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/g0;->a:Landroidx/media3/exoplayer/ExoPlayerImpl;

    return-void
.end method


# virtual methods
.method public final onSelectedOutputSuitabilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/g0;->a:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->x(Landroidx/media3/exoplayer/ExoPlayerImpl;Z)V

    return-void
.end method
