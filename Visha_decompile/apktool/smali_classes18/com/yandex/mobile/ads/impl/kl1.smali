.class public abstract Lcom/yandex/mobile/ads/impl/kl1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract synthetic handlePrepareComplete(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;II)V
.end method

.method public abstract synthetic handlePrepareError(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;IILjava/io/IOException;)V
.end method

.method public abstract synthetic release()V
.end method

.method public abstract synthetic setPlayer(Lcom/google/android/exoplayer2/t;)V
    .param p1    # Lcom/google/android/exoplayer2/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public varargs abstract synthetic setSupportedContentTypes([I)V
.end method

.method public abstract synthetic start(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/Object;La8;Lcom/google/android/exoplayer2/source/ads/b;)V
.end method

.method public abstract synthetic stop(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/b;)V
.end method
