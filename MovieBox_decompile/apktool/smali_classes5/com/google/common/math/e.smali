.class public abstract Lcom/google/common/math/e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/e$b;,
        Lcom/google/common/math/e$e;,
        Lcom/google/common/math/e$d;,
        Lcom/google/common/math/e$c;
    }
.end annotation


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

.method public static a()Lcom/google/common/math/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/math/e$c;->a:Lcom/google/common/math/e$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b(D)Lcom/google/common/math/e;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/c;->c(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/common/math/e$d;

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/common/math/e$d;-><init>(DD)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static c(DD)Lcom/google/common/math/e$b;
    .locals 7

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/c;->c(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2, p3}, Lcom/google/common/math/c;->c(D)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/google/common/math/e$b;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v1, v0

    .line 23
    move-wide v2, p0

    .line 24
    move-wide v4, p2

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/google/common/math/e$b;-><init>(DDLcom/google/common/math/e$a;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public static d(D)Lcom/google/common/math/e;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/c;->c(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/common/math/e$e;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/google/common/math/e$e;-><init>(D)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
