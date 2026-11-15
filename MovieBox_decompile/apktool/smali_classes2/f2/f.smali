.class public final Lf2/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf2/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)Landroidx/media3/exoplayer/source/f0;
    .locals 1

    .line 1
    new-instance v0, Lf2/d;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lf2/d;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public b()Landroidx/media3/exoplayer/source/f0;
    .locals 3

    .line 1
    new-instance v0, Lf2/d;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lf2/d;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
