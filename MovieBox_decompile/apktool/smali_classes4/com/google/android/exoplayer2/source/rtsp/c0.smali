.class final Lcom/google/android/exoplayer2/source/rtsp/c0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/rtsp/o;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/rtsp/o;)V
    .locals 1

    .line 5
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/rtsp/c0;-><init>(ILcom/google/android/exoplayer2/source/rtsp/o;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/source/rtsp/o;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c0;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/c0;->c:Ljava/lang/String;

    return-void
.end method
