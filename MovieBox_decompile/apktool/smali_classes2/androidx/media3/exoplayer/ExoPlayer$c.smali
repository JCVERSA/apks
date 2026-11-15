.class public Landroidx/media3/exoplayer/ExoPlayer$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final b:Landroidx/media3/exoplayer/ExoPlayer$c;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$c;

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayer$c;-><init>(J)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/media3/exoplayer/ExoPlayer$c;->b:Landroidx/media3/exoplayer/ExoPlayer$c;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$c;->a:J

    .line 5
    .line 6
    return-void
.end method
