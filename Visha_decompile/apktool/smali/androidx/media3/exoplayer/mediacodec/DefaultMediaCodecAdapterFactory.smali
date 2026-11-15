.class public final Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final MODE_DEFAULT:I = 0x0

.field private static final MODE_DISABLED:I = 0x2

.field private static final MODE_ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DMCodecAdapterFactory"


# instance fields
.field private asyncCryptoFlagEnabled:Z

.field private asynchronousMode:I

.field private final callbackThreadSupplier:Lw6a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw6a;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final queueingThreadSupplier:Lw6a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw6a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asyncCryptoFlagEnabled:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->context:Landroid/content/Context;

    .line 5
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->callbackThreadSupplier:Lw6a;

    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->queueingThreadSupplier:Lw6a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0, v0}, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;-><init>(Landroid/content/Context;Lw6a;Lw6a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lw6a;Lw6a;)V
    .locals 0
    .param p2    # Lw6a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lw6a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lw6a;",
            "Lw6a;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    .line 11
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asyncCryptoFlagEnabled:Z

    .line 12
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->callbackThreadSupplier:Lw6a;

    .line 13
    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->queueingThreadSupplier:Lw6a;

    return-void
.end method

.method private shouldUseAsynchronousAdapterInDefaultMode()Z
    .locals 3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->context:Landroid/content/Context;

    if-eqz p0, :cond_1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.amazon.hardware.tv_screen"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->shouldUseAsynchronousAdapterInDefaultMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMCodecAdapterFactory"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->callbackThreadSupplier:Lw6a;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->queueingThreadSupplier:Lw6a;

    if-eqz v2, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(Lw6a;Lw6a;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(I)V

    move-object v0, v1

    :goto_0
    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asyncCryptoFlagEnabled:Z

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->experimentalSetAsyncCryptoFlagEnabled(Z)V

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;->createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p0

    return-object p0
.end method

.method public experimentalSetAsyncCryptoFlagEnabled(Z)Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asyncCryptoFlagEnabled:Z

    return-object p0
.end method

.method public forceDisableAsynchronous()Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    return-object p0
.end method

.method public forceEnableAsynchronous()Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    return-object p0
.end method
