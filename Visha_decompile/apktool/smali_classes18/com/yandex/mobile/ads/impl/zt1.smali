.class public final Lcom/yandex/mobile/ads/impl/zt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ej;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/zt1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/aj;

.field private final b:Lcom/yandex/mobile/ads/impl/jv1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/jv1<",
            "Lcom/yandex/mobile/ads/impl/bu1;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/xt1;

.field private d:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/aj;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/cj;Lcom/yandex/mobile/ads/impl/cu1;Lcom/yandex/mobile/ads/impl/jv1;Lcom/yandex/mobile/ads/impl/xt1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/aj;",
            "Lcom/yandex/mobile/ads/impl/bv1;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/cj;",
            "Lcom/yandex/mobile/ads/impl/cu1;",
            "Lcom/yandex/mobile/ads/impl/jv1<",
            "Lcom/yandex/mobile/ads/impl/bu1;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/xt1;",
            ")V"
        }
    .end annotation

    const-string v0, "adLoadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adConfiguration"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "bannerAdSizeValidator"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkBannerHtmlAdCreator"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adCreationHandler"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkAdapterReporter"

    invoke-static {p7, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zt1;->a:Lcom/yandex/mobile/ads/impl/aj;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/zt1;->b:Lcom/yandex/mobile/ads/impl/jv1;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/zt1;->c:Lcom/yandex/mobile/ads/impl/xt1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zt1;->b:Lcom/yandex/mobile/ads/impl/jv1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/jv1;->a()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zt1;->d:Lcom/yandex/mobile/ads/impl/o8;

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zt1;->d:Lcom/yandex/mobile/ads/impl/o8;

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt1;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->c:Lcom/yandex/mobile/ads/impl/f5;

    .line 9
    const-string v2, "adLoadingPhaseType"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt1;->c:Lcom/yandex/mobile/ads/impl/xt1;

    .line 11
    invoke-virtual {v0, p1, p2, v3}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t71;)V

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt1;->c:Lcom/yandex/mobile/ads/impl/xt1;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V

    .line 13
    new-instance v0, Lcom/yandex/mobile/ads/impl/zt1$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zt1;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/zt1$a;-><init>(Lcom/yandex/mobile/ads/impl/aj;)V

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt1;->b:Lcom/yandex/mobile/ads/impl/jv1;

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/jv1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/kv1;)V

    return-void
.end method

.method public final getAdInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt1;->d:Lcom/yandex/mobile/ads/impl/o8;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o8;->e()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
