.class public final Lcom/yandex/mobile/ads/impl/po0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ft;

.field private final b:Lcom/yandex/mobile/ads/impl/oo0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ft;)V
    .locals 1

    const-string v0, "instreamAdBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/po0;->a:Lcom/yandex/mobile/ads/impl/ft;

    sget-object p1, Lcom/yandex/mobile/ads/impl/oo0;->c:Lcom/yandex/mobile/ads/impl/oo0$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/oo0$a;->a()Lcom/yandex/mobile/ads/impl/oo0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/po0;->b:Lcom/yandex/mobile/ads/impl/oo0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/mu;)V
    .locals 2

    const-string v0, "player"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/po0;->b:Lcom/yandex/mobile/ads/impl/oo0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/oo0;->a(Lcom/yandex/mobile/ads/impl/mu;)Lcom/yandex/mobile/ads/impl/ft;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/po0;->a:Lcom/yandex/mobile/ads/impl/ft;

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ft;->a()V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/po0;->b:Lcom/yandex/mobile/ads/impl/oo0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/po0;->a:Lcom/yandex/mobile/ads/impl/ft;

    invoke-virtual {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/oo0;->a(Lcom/yandex/mobile/ads/impl/mu;Lcom/yandex/mobile/ads/impl/ft;)V

    :cond_1
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/mu;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/po0;->b:Lcom/yandex/mobile/ads/impl/oo0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/oo0;->b(Lcom/yandex/mobile/ads/impl/mu;)V

    return-void
.end method
