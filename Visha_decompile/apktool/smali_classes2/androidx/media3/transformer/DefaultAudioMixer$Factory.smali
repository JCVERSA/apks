.class public final Landroidx/media3/transformer/DefaultAudioMixer$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/AudioMixer$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/DefaultAudioMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final clipFloatOutput:Z

.field private final outputSilenceWithNoSources:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Landroidx/media3/transformer/DefaultAudioMixer$Factory;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Landroidx/media3/transformer/DefaultAudioMixer$Factory;->outputSilenceWithNoSources:Z

    .line 4
    iput-boolean p2, p0, Landroidx/media3/transformer/DefaultAudioMixer$Factory;->clipFloatOutput:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/media3/transformer/AudioMixer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/transformer/DefaultAudioMixer$Factory;->create()Landroidx/media3/transformer/DefaultAudioMixer;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/media3/transformer/DefaultAudioMixer;
    .locals 3

    .line 2
    new-instance v0, Landroidx/media3/transformer/DefaultAudioMixer;

    iget-boolean v1, p0, Landroidx/media3/transformer/DefaultAudioMixer$Factory;->outputSilenceWithNoSources:Z

    iget-boolean p0, p0, Landroidx/media3/transformer/DefaultAudioMixer$Factory;->clipFloatOutput:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/media3/transformer/DefaultAudioMixer;-><init>(ZZLandroidx/media3/transformer/DefaultAudioMixer$1;)V

    return-object v0
.end method
