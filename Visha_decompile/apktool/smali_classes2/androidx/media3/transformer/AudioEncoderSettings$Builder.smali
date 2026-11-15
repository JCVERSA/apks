.class public final Landroidx/media3/transformer/AudioEncoderSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/AudioEncoderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitrate:I

.field private profile:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/transformer/AudioEncoderSettings$Builder;->profile:I

    iput v0, p0, Landroidx/media3/transformer/AudioEncoderSettings$Builder;->bitrate:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/transformer/AudioEncoderSettings;
    .locals 3

    new-instance v0, Landroidx/media3/transformer/AudioEncoderSettings;

    iget v1, p0, Landroidx/media3/transformer/AudioEncoderSettings$Builder;->profile:I

    iget p0, p0, Landroidx/media3/transformer/AudioEncoderSettings$Builder;->bitrate:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/media3/transformer/AudioEncoderSettings;-><init>(IILandroidx/media3/transformer/AudioEncoderSettings$1;)V

    return-object v0
.end method

.method public setBitrate(I)Landroidx/media3/transformer/AudioEncoderSettings$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/transformer/AudioEncoderSettings$Builder;->bitrate:I

    return-object p0
.end method

.method public setProfile(I)Landroidx/media3/transformer/AudioEncoderSettings$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/transformer/AudioEncoderSettings$Builder;->profile:I

    return-object p0
.end method
