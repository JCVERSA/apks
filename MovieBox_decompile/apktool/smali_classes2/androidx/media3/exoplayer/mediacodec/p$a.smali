.class Landroidx/media3/exoplayer/mediacodec/p$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/mediacodec/p;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/mediacodec/p;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/mediacodec/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/p$a;->a:Landroidx/media3/exoplayer/mediacodec/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoudnessCodecUpdate(Landroid/media/MediaCodec;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/p$a;->a:Landroidx/media3/exoplayer/mediacodec/p;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/p;->a(Landroidx/media3/exoplayer/mediacodec/p;)Landroidx/media3/exoplayer/mediacodec/p$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/p$b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
