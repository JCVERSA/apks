.class public abstract Lq43$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lq43$a;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lq43$a;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Loo1;->m()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lf53;->a(Ljava/lang/String;)Lrqc;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lrqc;->c()Lt43;

    move-result-object v3

    invoke-static {v3}, Lr43;->e(Lt43;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Loo1;->i(Ljava/lang/String;)Lrqc;

    move-result-object v2

    invoke-virtual {v2}, Lrqc;->c()Lt43;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "Curve25519"

    invoke-static {v1}, Loo1;->i(Ljava/lang/String;)Lrqc;

    move-result-object v1

    invoke-virtual {v1}, Lrqc;->c()Lt43;

    move-result-object v1

    new-instance v9, Lt43$f;

    invoke-virtual {v1}, Lt43;->q()Lvv3;

    move-result-object v2

    invoke-interface {v2}, Lvv3;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lt43;->m()Lw43;

    move-result-object v2

    invoke-virtual {v2}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lt43;->n()Lw43;

    move-result-object v2

    invoke-virtual {v2}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lt43;->u()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lt43;->o()Ljava/math/BigInteger;

    move-result-object v7

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lt43$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static b(Lt43;)Lt43;
    .locals 1

    sget-object v0, Lq43$a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt43;

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    return-object p0
.end method
