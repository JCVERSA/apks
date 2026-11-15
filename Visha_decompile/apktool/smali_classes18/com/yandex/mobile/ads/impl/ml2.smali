.class public final Lcom/yandex/mobile/ads/impl/ml2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/oq1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/oq1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/oq1;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ml2;-><init>(Lcom/yandex/mobile/ads/impl/oq1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/oq1;)V
    .locals 1

    .line 3
    const-string v0, "requestedAdThemeFactory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ml2;->a:Lcom/yandex/mobile/ads/impl/oq1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/yandex/mobile/ads/common/AdRequest;)Lcom/yandex/mobile/ads/impl/v7;
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/common/AdRequest;->getPreferredTheme()Lcom/yandex/mobile/ads/common/AdTheme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ml2;->a:Lcom/yandex/mobile/ads/impl/oq1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/oq1;->a(Lcom/yandex/mobile/ads/common/AdTheme;)Lcom/yandex/mobile/ads/impl/nq1;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/v7$a;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/v7$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/common/AdRequest;->getAge()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/v7$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/common/AdRequest;->getBiddingData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/v7$a;->d(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/common/AdRequest;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/v7$a;->c(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/common/AdRequest;->getContextQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/v7$a;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/common/AdRequest;->getContextTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/v7$a;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/common/AdRequest;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/v7$a;->a(Landroid/location/Location;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/common/AdRequest;->getParameters()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/v7$a;->a(Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/v7$a;->a(Lcom/yandex/mobile/ads/impl/nq1;)Lcom/yandex/mobile/ads/impl/v7$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v7$a;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object p0

    return-object p0
.end method
