.class public final synthetic Landroidx/media3/exoplayer/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/i2;->b:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/i2;->b:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    invoke-static {p0}, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;->a(Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;)V

    return-void
.end method
