.class public abstract synthetic Lh3/r;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Lh3/s;[BII)Lh3/k;
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lh3/s$b;->a()Lh3/s$b;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    new-instance v6, Lh3/q;

    .line 13
    .line 14
    invoke-direct {v6, v0}, Lh3/q;-><init>(Lcom/google/common/collect/ImmutableList$a;)V

    .line 15
    .line 16
    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move v3, p2

    .line 20
    move v4, p3

    .line 21
    invoke-interface/range {v1 .. v6}, Lh3/s;->b([BIILh3/s$b;Landroidx/media3/common/util/m;)V

    .line 22
    .line 23
    .line 24
    new-instance p0, Lh3/g;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lh3/g;-><init>(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public static b(Lh3/s;)V
    .locals 0

    .line 1
    return-void
.end method
