.class public final synthetic Lr73;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/TimestampAdjustment$TimestampMap;


# instance fields
.field public final synthetic a:Landroidx/media3/common/audio/SpeedChangingAudioProcessor;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/audio/SpeedChangingAudioProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr73;->a:Landroidx/media3/common/audio/SpeedChangingAudioProcessor;

    return-void
.end method


# virtual methods
.method public final calculateOutputTimeUs(JLandroidx/media3/common/util/TimestampConsumer;)V
    .locals 0

    iget-object p0, p0, Lr73;->a:Landroidx/media3/common/audio/SpeedChangingAudioProcessor;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->getSpeedAdjustedTimeAsync(JLandroidx/media3/common/util/TimestampConsumer;)V

    return-void
.end method
