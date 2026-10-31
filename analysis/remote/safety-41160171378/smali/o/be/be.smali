.class public final Lo/be;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ba3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lo/ne3;
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sn;

    invoke-interface {v0}, Lo/sn;->L()Lo/ne3;

    move-result-object v0

    const-string v1, "nativeAdManager(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lo/ba3$a;->a(Lo/ba3;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 6

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/app/PhoenixApplication;->Q()Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Lcom/snaptube/premium/configs/Config;->z6(J)V

    return v3

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->l2()J

    move-result-wide v4

    sub-long/2addr v1, v4

    const/16 v0, 0x3e8

    int-to-long v4, v0

    div-long/2addr v1, v4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->m2()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v1, v4

    if-gez v0, :cond_1

    return v3

    :cond_1
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->P2()Z

    move-result v0

    return v0
.end method

.method public varargs k([Ljava/lang/String;)V
    .locals 3

    const-string v0, "list"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sn;

    invoke-interface {v1}, Lo/sn;->H0()Lo/gb;

    move-result-object v1

    sget-object v2, Lo/jb;->e:Lo/jb$a;

    invoke-virtual {v2, v0}, Lo/jb$a;->a(Ljava/lang/String;)Lo/jb;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/gb;->c(Lo/jb;)V

    goto :goto_0

    :cond_0
    return-void
.end method
