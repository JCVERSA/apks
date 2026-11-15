.class public final Lcom/yandex/mobile/ads/impl/m71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sa;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/a81;

.field private final c:Lcom/yandex/mobile/ads/impl/w71;

.field private final d:Lcom/yandex/mobile/ads/impl/pw1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o41;Lcom/yandex/mobile/ads/impl/w71;)V
    .locals 1

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/m71;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o41;Lcom/yandex/mobile/ads/impl/w71;Lcom/yandex/mobile/ads/impl/pw1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o41;Lcom/yandex/mobile/ads/impl/w71;Lcom/yandex/mobile/ads/impl/pw1;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAssetsValidator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdsConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkSettings"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m71;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m71;->b:Lcom/yandex/mobile/ads/impl/a81;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/m71;->c:Lcom/yandex/mobile/ads/impl/w71;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/m71;->d:Lcom/yandex/mobile/ads/impl/pw1;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m71;->c:Lcom/yandex/mobile/ads/impl/w71;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m71;->d:Lcom/yandex/mobile/ads/impl/pw1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m71;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m71;->b:Lcom/yandex/mobile/ads/impl/a81;

    invoke-interface {p0, v1}, Lcom/yandex/mobile/ads/impl/a81;->a(Z)Lcom/yandex/mobile/ads/impl/z71;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/z71;->b()Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object p0

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    if-ne p0, v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method
