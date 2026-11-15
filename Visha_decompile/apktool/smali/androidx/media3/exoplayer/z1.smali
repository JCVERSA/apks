.class public final synthetic Landroidx/media3/exoplayer/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/StreamVolumeManager;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/StreamVolumeManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/z1;->b:Landroidx/media3/exoplayer/StreamVolumeManager;

    iput p2, p0, Landroidx/media3/exoplayer/z1;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/z1;->b:Landroidx/media3/exoplayer/StreamVolumeManager;

    iget p0, p0, Landroidx/media3/exoplayer/z1;->c:I

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->m(Landroidx/media3/exoplayer/StreamVolumeManager;I)V

    return-void
.end method
