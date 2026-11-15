.class public final Lcom/yandex/mobile/ads/impl/dn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/mp0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/dn$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/do1;)Lcom/yandex/mobile/ads/impl/vq1;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "chain"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/do1;->a()Lcom/yandex/mobile/ads/impl/zn1;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/yandex/mobile/ads/impl/gn$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/do1;->i()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/yandex/mobile/ads/impl/gn$a;-><init>(JLcom/yandex/mobile/ads/impl/vp1;)V

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gn$a;->a()Lcom/yandex/mobile/ads/impl/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gn;->b()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gn;->a()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move-object v3, p0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/zn1;->e()Lcom/yandex/mobile/ads/impl/w50;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    sget-object v3, Lcom/yandex/mobile/ads/impl/w50;->a:Lcom/yandex/mobile/ads/impl/w50$a;

    :cond_2
    const-string v4, "response"

    const-string v5, "call"

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Lcom/yandex/mobile/ads/impl/vq1$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/vq1$a;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/do1;->i()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    sget-object v0, Lcom/yandex/mobile/ads/impl/mm1;->e:Lcom/yandex/mobile/ads/impl/mm1;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/mm1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    const/16 v0, 0x1f8

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(I)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    sget-object v0, Lcom/yandex/mobile/ads/impl/g92;->c:Lcom/yandex/mobile/ads/impl/yq1;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/zq1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/vq1$a;->b(J)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(J)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/yandex/mobile/ads/impl/vq1$a;

    invoke-direct {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;-><init>(Lcom/yandex/mobile/ads/impl/vq1;)V

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dn$a;->a(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cachedResponse"

    invoke-static {v0, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/do1;->a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->d()I

    move-result p1

    const/16 v1, 0x130

    if-eq p1, v1, :cond_6

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/yandex/mobile/ads/impl/vq1$a;

    invoke-direct {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;-><init>(Lcom/yandex/mobile/ads/impl/vq1;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vq1;->g()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->g()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/impl/dn$a;->a(Lcom/yandex/mobile/ads/impl/qf0;Lcom/yandex/mobile/ads/impl/qf0;)Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/qf0;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->p()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/yandex/mobile/ads/impl/vq1$a;->b(J)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->n()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(J)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dn$a;->a(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dn$a;->a(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->b(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a()Lcom/yandex/mobile/ads/impl/vq1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zq1;->c()Lokio/BufferedSource;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    throw v2

    :cond_7
    :goto_1
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/vq1$a;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/vq1$a;-><init>(Lcom/yandex/mobile/ads/impl/vq1;)V

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dn$a;->a(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dn$a;->a(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/vq1$a;->b(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p0

    return-object p0
.end method
