.class public final Landroidx/media3/transformer/DefaultEncoderFactory$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/DefaultEncoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private codecPriority:I

.field private final context:Landroid/content/Context;

.field private enableFallback:Z

.field private requestedAudioEncoderSettings:Landroidx/media3/transformer/AudioEncoderSettings;

.field private requestedVideoEncoderSettings:Landroidx/media3/transformer/VideoEncoderSettings;

.field private videoEncoderSelector:Landroidx/media3/transformer/EncoderSelector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->context:Landroid/content/Context;

    sget-object p1, Landroidx/media3/transformer/EncoderSelector;->DEFAULT:Landroidx/media3/transformer/EncoderSelector;

    iput-object p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->videoEncoderSelector:Landroidx/media3/transformer/EncoderSelector;

    sget-object p1, Landroidx/media3/transformer/VideoEncoderSettings;->DEFAULT:Landroidx/media3/transformer/VideoEncoderSettings;

    iput-object p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->requestedVideoEncoderSettings:Landroidx/media3/transformer/VideoEncoderSettings;

    sget-object p1, Landroidx/media3/transformer/AudioEncoderSettings;->DEFAULT:Landroidx/media3/transformer/AudioEncoderSettings;

    iput-object p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->requestedAudioEncoderSettings:Landroidx/media3/transformer/AudioEncoderSettings;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->enableFallback:Z

    const/16 p1, -0x7d0

    iput p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->codecPriority:I

    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)Landroidx/media3/transformer/EncoderSelector;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->videoEncoderSelector:Landroidx/media3/transformer/EncoderSelector;

    return-object p0
.end method

.method public static synthetic access$300(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)Landroidx/media3/transformer/VideoEncoderSettings;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->requestedVideoEncoderSettings:Landroidx/media3/transformer/VideoEncoderSettings;

    return-object p0
.end method

.method public static synthetic access$400(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)Landroidx/media3/transformer/AudioEncoderSettings;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->requestedAudioEncoderSettings:Landroidx/media3/transformer/AudioEncoderSettings;

    return-object p0
.end method

.method public static synthetic access$500(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->enableFallback:Z

    return p0
.end method

.method public static synthetic access$600(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->codecPriority:I

    return p0
.end method


# virtual methods
.method public build()Landroidx/media3/transformer/DefaultEncoderFactory;
    .locals 2

    new-instance v0, Landroidx/media3/transformer/DefaultEncoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/transformer/DefaultEncoderFactory;-><init>(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;Landroidx/media3/transformer/DefaultEncoderFactory$1;)V

    return-object v0
.end method

.method public setCodecPriority(I)Landroidx/media3/transformer/DefaultEncoderFactory$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            to = 0x0L
        .end annotation
    .end param

    iput p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->codecPriority:I

    return-object p0
.end method

.method public setEnableFallback(Z)Landroidx/media3/transformer/DefaultEncoderFactory$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->enableFallback:Z

    return-object p0
.end method

.method public setRequestedAudioEncoderSettings(Landroidx/media3/transformer/AudioEncoderSettings;)Landroidx/media3/transformer/DefaultEncoderFactory$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->requestedAudioEncoderSettings:Landroidx/media3/transformer/AudioEncoderSettings;

    return-object p0
.end method

.method public setRequestedVideoEncoderSettings(Landroidx/media3/transformer/VideoEncoderSettings;)Landroidx/media3/transformer/DefaultEncoderFactory$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->requestedVideoEncoderSettings:Landroidx/media3/transformer/VideoEncoderSettings;

    return-object p0
.end method

.method public setVideoEncoderSelector(Landroidx/media3/transformer/EncoderSelector;)Landroidx/media3/transformer/DefaultEncoderFactory$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->videoEncoderSelector:Landroidx/media3/transformer/EncoderSelector;

    return-object p0
.end method
