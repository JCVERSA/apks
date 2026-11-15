.class public abstract Lcom/google/common/collect/MultimapBuilder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MultimapBuilder$e;,
        Lcom/google/common/collect/MultimapBuilder$f;,
        Lcom/google/common/collect/MultimapBuilder$d;,
        Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;,
        Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MultimapBuilder$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->b(I)Lcom/google/common/collect/MultimapBuilder$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static b(I)Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    .line 1
    const-string v0, "expectedKeys"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/common/collect/e2;->b(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$a;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/common/collect/MultimapBuilder$a;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static c()Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->d(I)Lcom/google/common/collect/MultimapBuilder$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static d(I)Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    .line 1
    const-string v0, "expectedKeys"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/common/collect/e2;->b(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$b;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/common/collect/MultimapBuilder$b;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static e()Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->f(Ljava/util/Comparator;)Lcom/google/common/collect/MultimapBuilder$e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static f(Ljava/util/Comparator;)Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$c;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/common/collect/MultimapBuilder$c;-><init>(Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
