.class public interface abstract Landroidx/media3/transformer/EncoderSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media3/transformer/EncoderSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lha3;

    invoke-direct {v0}, Lha3;-><init>()V

    sput-object v0, Landroidx/media3/transformer/EncoderSelector;->DEFAULT:Landroidx/media3/transformer/EncoderSelector;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/transformer/EncoderSelector;->lambda$static$0(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    invoke-static {p0}, Landroidx/media3/transformer/EncoderSelector;->lambda$static$1(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z
    .locals 0

    invoke-static {p1, p0}, Landroidx/media3/transformer/EncoderUtil;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$1(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 2

    invoke-static {p0}, Landroidx/media3/transformer/EncoderUtil;->getSupportedEncoders(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    new-instance v1, Lga3;

    invoke-direct {v1, p0}, Lga3;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lv55;->e(Ljava/lang/Iterable;Lhe8;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract selectEncoderInfos(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end method
