.class public final synthetic Lrv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrv9;->b:Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lrv9;->b:Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;

    invoke-static {p0}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->a(Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;)V

    return-void
.end method
