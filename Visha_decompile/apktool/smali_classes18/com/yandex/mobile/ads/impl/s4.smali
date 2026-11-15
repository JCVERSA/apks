.class public final Lcom/yandex/mobile/ads/impl/s4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q4;

.field private final b:Lcom/yandex/mobile/ads/impl/r4;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/q4;)V
    .locals 1

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/r4;->e:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/r4$a;->a()Lcom/yandex/mobile/ads/impl/r4;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/s4;-><init>(Lcom/yandex/mobile/ads/impl/q4;Lcom/yandex/mobile/ads/impl/r4;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q4;Lcom/yandex/mobile/ads/impl/r4;)V
    .locals 1

    .line 3
    const-string v0, "adIdProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adIdStorage"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s4;->a:Lcom/yandex/mobile/ads/impl/q4;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s4;->b:Lcom/yandex/mobile/ads/impl/r4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s4;->a:Lcom/yandex/mobile/ads/impl/q4;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/q4;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s4;->b:Lcom/yandex/mobile/ads/impl/r4;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/r4;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s4;->a:Lcom/yandex/mobile/ads/impl/q4;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/q4;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s4;->b:Lcom/yandex/mobile/ads/impl/r4;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/r4;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
