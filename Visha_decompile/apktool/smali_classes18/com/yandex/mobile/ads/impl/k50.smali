.class public final Lcom/yandex/mobile/ads/impl/k50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/d32;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/d32;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/d32;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/k50;->a:Lcom/yandex/mobile/ads/impl/d32;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawQuery"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->c0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k50;->a:Lcom/yandex/mobile/ads/impl/d32;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/d32;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :cond_1
    :goto_0
    return-object p2
.end method
