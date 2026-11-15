.class public final Lcom/yandex/mobile/ads/impl/ka2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dq1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/dq1<",
        "Lcom/yandex/mobile/ads/impl/z92;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/dq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/qa2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/ea2;Lcom/yandex/mobile/ads/impl/qa2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adsRequestListener"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "verificationResourcesLoader"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ka2;->a:Lcom/yandex/mobile/ads/impl/dq1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ka2;->b:Lcom/yandex/mobile/ads/impl/qa2;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/ka2;Ljava/util/List;)V
    .locals 1

    .line 7
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$videoAds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ka2;->a:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/ka2;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/ka2;->a(Lcom/yandex/mobile/ads/impl/ka2;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sb2;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ka2;->a:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Lcom/yandex/mobile/ads/impl/sb2;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/z92;)V
    .locals 2

    .line 3
    const-string v0, "result"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/z92;->b()Lcom/yandex/mobile/ads/impl/u92;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/u92;->b()Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ka2;->b:Lcom/yandex/mobile/ads/impl/qa2;

    new-instance v1, Ljld;

    invoke-direct {v1, p0, p1}, Ljld;-><init>(Lcom/yandex/mobile/ads/impl/ka2;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/qa2;->a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/cb2;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Lcom/yandex/mobile/ads/impl/z92;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ka2;->a(Lcom/yandex/mobile/ads/impl/z92;)V

    return-void
.end method
