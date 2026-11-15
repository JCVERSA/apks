.class public abstract Lox0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsbb;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c()Lpx0;
.end method

.method public final e(Lpx0;Lpx0;)Z
    .locals 2

    const-string p0, "first"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "second"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object p0

    invoke-interface {p2}, Lgy6;->getName()Lby6;

    move-result-object v0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lzt1;->b()Lxt1;

    move-result-object p0

    invoke-interface {p2}, Lzt1;->b()Lxt1;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    instance-of v1, p0, Lqq6;

    if-eqz v1, :cond_1

    instance-of p0, p1, Lqq6;

    return p0

    :cond_1
    instance-of v1, p1, Lqq6;

    if-eqz v1, :cond_2

    return v0

    :cond_2
    instance-of v1, p0, Ldv7;

    if-eqz v1, :cond_4

    instance-of v1, p1, Ldv7;

    if-eqz v1, :cond_3

    check-cast p0, Ldv7;

    invoke-interface {p0}, Ldv7;->d()Lo54;

    move-result-object p0

    check-cast p1, Ldv7;

    invoke-interface {p1}, Ldv7;->d()Lo54;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, p2

    :cond_3
    return v0

    :cond_4
    instance-of p2, p1, Ldv7;

    if-eqz p2, :cond_5

    return v0

    :cond_5
    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object p2

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v1

    invoke-static {p2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    return v0

    :cond_6
    invoke-interface {p0}, Lxt1;->b()Lxt1;

    move-result-object p0

    invoke-interface {p1}, Lxt1;->b()Lxt1;

    move-result-object p1

    goto :goto_0

    :cond_7
    return p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lsbb;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lox0;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lsbb;

    invoke-interface {p1}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lox0;->c()Lpx0;

    move-result-object v0

    invoke-interface {p1}, Lsbb;->c()Lpx0;

    move-result-object p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0, v0}, Lox0;->f(Lpx0;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lox0;->f(Lpx0;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lox0;->g(Lpx0;)Z

    move-result p0

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method public final f(Lpx0;)Z
    .locals 0

    invoke-static {p1}, Lid3;->m(Lxt1;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ly82;->E(Lxt1;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract g(Lpx0;)Z
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lox0;->a:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lox0;->c()Lpx0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lox0;->f(Lpx0;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ly82;->m(Lxt1;)Lp54;

    move-result-object v0

    invoke-virtual {v0}, Lp54;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    iput v0, p0, Lox0;->a:I

    return v0
.end method
