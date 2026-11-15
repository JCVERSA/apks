.class public final Lcom/yandex/mobile/ads/impl/yi0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o50;

.field private final b:Lcom/yandex/mobile/ads/impl/n4;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o50;Lcom/yandex/mobile/ads/impl/n4;)V
    .locals 1

    const-string v0, "environmentConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adHostConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yi0;->a:Lcom/yandex/mobile/ads/impl/o50;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yi0;->b:Lcom/yandex/mobile/ads/impl/n4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/xi0;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "identifiers"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xi0;->a()Lcom/yandex/mobile/ads/impl/df;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xi0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xi0;->b()Lcom/yandex/mobile/ads/impl/cj0;

    move-result-object p2

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/yi0;->b:Lcom/yandex/mobile/ads/impl/n4;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifiersType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/df;->a()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {v4, p1}, Lcom/yandex/mobile/ads/impl/n4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {v4, p1}, Lcom/yandex/mobile/ads/impl/n4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/yi0;->a:Lcom/yandex/mobile/ads/impl/o50;

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/o50;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/yi0;->a:Lcom/yandex/mobile/ads/impl/o50;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/df;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/o50;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/yi0;->a:Lcom/yandex/mobile/ads/impl/o50;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/df;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/o50;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yi0;->a:Lcom/yandex/mobile/ads/impl/o50;

    invoke-virtual {p0, v3}, Lcom/yandex/mobile/ads/impl/o50;->c(Ljava/lang/String;)V

    return-void
.end method
