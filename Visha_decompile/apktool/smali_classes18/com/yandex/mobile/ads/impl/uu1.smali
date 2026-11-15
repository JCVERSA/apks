.class public final Lcom/yandex/mobile/ads/impl/uu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hq1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/hq1<",
        "Lcom/yandex/mobile/ads/impl/ju1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pw1;

.field private final b:Lcom/yandex/mobile/ads/impl/ir1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ir1<",
            "Lcom/yandex/mobile/ads/impl/ju1;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/su1;

.field private final d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 7

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v4

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/xu1;

    invoke-direct {v5, p2}, Lcom/yandex/mobile/ads/impl/xu1;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 3
    new-instance v6, Lcom/yandex/mobile/ads/impl/su1;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/su1;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/uu1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/ir1;Lcom/yandex/mobile/ads/impl/su1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/ir1;Lcom/yandex/mobile/ads/impl/su1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            "Lcom/yandex/mobile/ads/impl/pw1;",
            "Lcom/yandex/mobile/ads/impl/ir1<",
            "Lcom/yandex/mobile/ads/impl/ju1;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/su1;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkSettings"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkConfigurationResponseParser"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkConfigurationRefreshChecker"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/uu1;->a:Lcom/yandex/mobile/ads/impl/pw1;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/uu1;->b:Lcom/yandex/mobile/ads/impl/ir1;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/uu1;->c:Lcom/yandex/mobile/ads/impl/su1;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uu1;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu1;->b:Lcom/yandex/mobile/ads/impl/ir1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ir1;->a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/ju1;

    return-object p0
.end method

.method public final a()Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uu1;->a:Lcom/yandex/mobile/ads/impl/pw1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uu1;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu1;->c:Lcom/yandex/mobile/ads/impl/su1;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/su1;->a(Lcom/yandex/mobile/ads/impl/ju1;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
