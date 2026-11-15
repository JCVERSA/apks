.class abstract Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field protected final a:Li9/e0;


# direct methods
.method protected constructor <init>(Li9/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Li9/e0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/util/d0;J)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->b(Lcom/google/android/exoplayer2/util/d0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->c(Lcom/google/android/exoplayer2/util/d0;J)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method protected abstract b(Lcom/google/android/exoplayer2/util/d0;)Z
.end method

.method protected abstract c(Lcom/google/android/exoplayer2/util/d0;J)Z
.end method
