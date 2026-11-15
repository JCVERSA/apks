.class public abstract Lcom/google/common/math/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/a$b;,
        Lcom/google/common/math/a$e;,
        Lcom/google/common/math/a$d;,
        Lcom/google/common/math/a$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/math/a;
    .locals 1

    sget-object v0, Lcom/google/common/math/a$c;->a:Lcom/google/common/math/a$c;

    return-object v0
.end method

.method public static b(D)Lcom/google/common/math/a;
    .locals 3

    invoke-static {p0, p1}, Ltx2;->c(D)Z

    move-result v0

    invoke-static {v0}, Lxd8;->d(Z)V

    new-instance v0, Lcom/google/common/math/a$d;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/common/math/a$d;-><init>(DD)V

    return-object v0
.end method

.method public static c(DD)Lcom/google/common/math/a$b;
    .locals 7

    invoke-static {p0, p1}, Ltx2;->c(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ltx2;->c(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lxd8;->d(Z)V

    new-instance v0, Lcom/google/common/math/a$b;

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/common/math/a$b;-><init>(DDLcom/google/common/math/a$a;)V

    return-object v0
.end method

.method public static d(D)Lcom/google/common/math/a;
    .locals 1

    invoke-static {p0, p1}, Ltx2;->c(D)Z

    move-result v0

    invoke-static {v0}, Lxd8;->d(Z)V

    new-instance v0, Lcom/google/common/math/a$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/math/a$e;-><init>(D)V

    return-object v0
.end method
