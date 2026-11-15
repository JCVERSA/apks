.class public final Lcom/yandex/mobile/ads/impl/ur;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pw1;

.field private final b:Lcom/yandex/mobile/ads/impl/iq;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/iq;)V
    .locals 1

    const-string v0, "sdkSettings"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cmpSettings"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ur;->a:Lcom/yandex/mobile/ads/impl/pw1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ur;->b:Lcom/yandex/mobile/ads/impl/iq;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ax;
    .locals 5

    new-instance v0, Lcom/yandex/mobile/ads/impl/ax;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ur;->a:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/pw1;->d()Z

    move-result v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ur;->a:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/pw1;->f()Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ur;->a:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/pw1;->j()Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ur;->b:Lcom/yandex/mobile/ads/impl/iq;

    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/iq;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ur;->b:Lcom/yandex/mobile/ads/impl/iq;

    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/iq;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ur;->b:Lcom/yandex/mobile/ads/impl/iq;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/iq;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yandex/mobile/ads/impl/ax;-><init>(ZLjava/lang/Boolean;Ljava/lang/Boolean;Z)V

    return-object v0
.end method
