.class public final Landroidx/media3/transformer/Effects;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final EMPTY:Landroidx/media3/transformer/Effects;


# instance fields
.field public final audioProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field public final videoEffects:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/media3/transformer/Effects;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/transformer/Effects;-><init>(Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Landroidx/media3/transformer/Effects;->EMPTY:Landroidx/media3/transformer/Effects;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static createExperimentalSpeedChangingEffect(Landroidx/media3/common/audio/SpeedProvider;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/audio/SpeedProvider;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;

    invoke-direct {v0, p0}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;-><init>(Landroidx/media3/common/audio/SpeedProvider;)V

    new-instance v1, Landroidx/media3/effect/TimestampAdjustment;

    new-instance v2, Lr73;

    invoke-direct {v2, v0}, Lr73;-><init>(Landroidx/media3/common/audio/SpeedChangingAudioProcessor;)V

    invoke-direct {v1, v2, p0}, Landroidx/media3/effect/TimestampAdjustment;-><init>(Landroidx/media3/effect/TimestampAdjustment$TimestampMap;Landroidx/media3/common/audio/SpeedProvider;)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
