.class public final Lcom/yandex/mobile/ads/impl/eg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/impl/g82;->c:I

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/en2;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/g82;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/en2;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/de;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/mt0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/mt0;-><init>()V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/mt0;->c(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/q11;->b(Z)V

    :cond_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/mt0;->f(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/q11;->a(Z)V

    :cond_1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/pa;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/yandex/mobile/ads/impl/i11;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/i11;-><init>()V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/i11;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/i11$a;

    move-result-object v1

    instance-of v2, v1, Lcom/yandex/mobile/ads/impl/i11$a$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    new-instance v2, Lcom/yandex/mobile/ads/impl/ip0;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/ip0;-><init>()V

    check-cast v1, Lcom/yandex/mobile/ads/impl/i11$a$b;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/ip0;->a(Lcom/yandex/mobile/ads/impl/i11$a$b;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/hp0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v1, v1, Lcom/yandex/mobile/ads/impl/i11$a$a;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yandex Mobile Ads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "7.12.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " integrated successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/hp0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/a11;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/a11;-><init>()V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/h11;->a()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/rz0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/rz0;-><init>()V

    sget v2, Lcom/yandex/mobile/ads/impl/mz0;->e:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/mz0$a;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/a01;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/a01;-><init>()V

    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/a01;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/d01;

    invoke-direct {v3, v1}, Lcom/yandex/mobile/ads/impl/d01;-><init>(Lcom/yandex/mobile/ads/impl/rz0;)V

    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/d01;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/c01;->a(Ljava/util/ArrayList;)V

    :cond_4
    new-instance v1, Lcom/yandex/mobile/ads/impl/it0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/it0;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/qw1;

    invoke-direct {v2, v1, v0, p1}, Lcom/yandex/mobile/ads/impl/qw1;-><init>(Lcom/yandex/mobile/ads/impl/it0;Lcom/yandex/mobile/ads/impl/mt0;Lcom/yandex/mobile/ads/impl/en2;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/p0;->a(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Lcom/yandex/mobile/ads/impl/qw1;->a(Landroid/content/Context;)V

    return-void
.end method
