.class public final Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/AssetListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetList"
.end annotation


# static fields
.field private static final EMPTY:Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;


# instance fields
.field public final assets:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/hls/AssetListParser$Asset;",
            ">;"
        }
    .end annotation
.end field

.field public final stringAttributes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/hls/AssetListParser$StringAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->EMPTY:Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/hls/AssetListParser$Asset;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/hls/AssetListParser$StringAttribute;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->assets:Lcom/google/common/collect/ImmutableList;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->stringAttributes:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static synthetic access$000()Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->EMPTY:Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->assets:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->assets:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->stringAttributes:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->stringAttributes:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->assets:Lcom/google/common/collect/ImmutableList;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->stringAttributes:Lcom/google/common/collect/ImmutableList;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
