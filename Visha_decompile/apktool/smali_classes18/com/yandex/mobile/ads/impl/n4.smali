.class public final Lcom/yandex/mobile/ads/impl/n4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mt0;

.field private final b:Lcom/yandex/mobile/ads/impl/mi;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/mt0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/mt0;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/mi;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/mi;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/n4;-><init>(Lcom/yandex/mobile/ads/impl/mt0;Lcom/yandex/mobile/ads/impl/mi;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mt0;Lcom/yandex/mobile/ads/impl/mi;)V
    .locals 1

    .line 4
    const-string v0, "manifestAnalyzer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableHostSelector"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n4;->a:Lcom/yandex/mobile/ads/impl/mt0;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/n4;->b:Lcom/yandex/mobile/ads/impl/mi;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n4;->a:Lcom/yandex/mobile/ads/impl/mt0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/mt0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n4;->b:Lcom/yandex/mobile/ads/impl/mi;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/mi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/n4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
