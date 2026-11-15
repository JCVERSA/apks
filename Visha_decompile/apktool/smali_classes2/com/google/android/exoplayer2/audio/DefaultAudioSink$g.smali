.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/s;

.field public final b:Z

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/s;ZJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;->a:Lcom/google/android/exoplayer2/s;

    .line 4
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;->b:Z

    .line 5
    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;->c:J

    .line 6
    iput-wide p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/s;ZJJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;-><init>(Lcom/google/android/exoplayer2/s;ZJJ)V

    return-void
.end method
