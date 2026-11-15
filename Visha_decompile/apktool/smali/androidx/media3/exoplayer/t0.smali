.class public final synthetic Landroidx/media3/exoplayer/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/media3/exoplayer/ExoPlayerImpl;

.field public final synthetic e:Landroidx/media3/exoplayer/analytics/PlayerId;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLandroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/t0;->b:Landroid/content/Context;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/t0;->c:Z

    iput-object p3, p0, Landroidx/media3/exoplayer/t0;->d:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iput-object p4, p0, Landroidx/media3/exoplayer/t0;->e:Landroidx/media3/exoplayer/analytics/PlayerId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/t0;->b:Landroid/content/Context;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/t0;->c:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/t0;->d:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/t0;->e:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-static {v0, v1, v2, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31;->a(Landroid/content/Context;ZLandroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    return-void
.end method
