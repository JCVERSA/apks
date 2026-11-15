.class public abstract Ltwh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lswh;
    .locals 4

    new-instance v0, Lvwh;

    invoke-direct {v0}, Lvwh;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvwh;->g(Z)Lswh;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lswh;->d(Z)Lswh;

    invoke-virtual {v0, v1}, Lswh;->c(Z)Lswh;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lswh;->f(J)Lswh;

    invoke-virtual {v0, v1}, Lswh;->b(Z)Lswh;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lswh;->e(J)Lswh;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()J
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()Z
.end method
