.class public final Lcom/yandex/mobile/ads/impl/ek1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/u82;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tp1;

.field private final b:Lcom/yandex/mobile/ads/impl/f42;

.field private final c:Lcom/yandex/mobile/ads/impl/s82;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/tp1;Lcom/yandex/mobile/ads/impl/f42;Lcom/yandex/mobile/ads/impl/s82;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "targetUrlHandler"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "urlModifier"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ek1;->a:Lcom/yandex/mobile/ads/impl/tp1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ek1;->b:Lcom/yandex/mobile/ads/impl/f42;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ek1;->c:Lcom/yandex/mobile/ads/impl/s82;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ek1;->c:Lcom/yandex/mobile/ads/impl/s82;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/s82;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ek1;->d:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "targetUrl"

    if-nez p1, :cond_1

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ek1;->b:Lcom/yandex/mobile/ads/impl/f42;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ek1;->a:Lcom/yandex/mobile/ads/impl/tp1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ek1;->d:Ljava/lang/String;

    if-nez p0, :cond_3

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, p0

    :goto_1
    invoke-interface {p1, v2, v0}, Lcom/yandex/mobile/ads/impl/f42;->a(Lcom/yandex/mobile/ads/impl/tp1;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
