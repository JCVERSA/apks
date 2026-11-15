.class public final Lcom/yandex/mobile/ads/impl/pz0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/pz0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/el;Lcom/yandex/mobile/ads/impl/pz0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/lz0;

.field final synthetic b:Lcom/yandex/mobile/ads/impl/pz0;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/tx0;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/pz0$a;

.field final synthetic f:Lcom/yandex/mobile/ads/impl/el;

.field final synthetic g:J


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/pz0;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/tx0;Lcom/yandex/mobile/ads/impl/pz0$a;Lcom/yandex/mobile/ads/impl/el;J)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->a:Lcom/yandex/mobile/ads/impl/lz0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->b:Lcom/yandex/mobile/ads/impl/pz0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->d:Lcom/yandex/mobile/ads/impl/tx0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->e:Lcom/yandex/mobile/ads/impl/pz0$a;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->f:Lcom/yandex/mobile/ads/impl/el;

    iput-wide p7, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBidderTokenFailedToLoad(Ljava/lang/String;)V
    .locals 8

    const-string v0, "failureReason"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->b:Lcom/yandex/mobile/ads/impl/pz0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->a:Lcom/yandex/mobile/ads/impl/lz0;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->d:Lcom/yandex/mobile/ads/impl/tx0;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->e:Lcom/yandex/mobile/ads/impl/pz0$a;

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/pz0;->a(Lcom/yandex/mobile/ads/impl/pz0;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;Ljava/lang/String;Ljava/lang/Long;Lcom/yandex/mobile/ads/impl/pz0$a;)V

    return-void
.end method

.method public final onBidderTokenLoaded(Ljava/lang/String;Lcom/monetization/ads/mediation/banner/MediatedBannerSize;)V
    .locals 12

    const-string v2, "bidderToken"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->a:Lcom/yandex/mobile/ads/impl/lz0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lz0;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provided empty token"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->b:Lcom/yandex/mobile/ads/impl/pz0;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->a:Lcom/yandex/mobile/ads/impl/lz0;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->d:Lcom/yandex/mobile/ads/impl/tx0;

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->e:Lcom/yandex/mobile/ads/impl/pz0$a;

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/yandex/mobile/ads/impl/pz0;->a(Lcom/yandex/mobile/ads/impl/pz0;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;Ljava/lang/String;Ljava/lang/Long;Lcom/yandex/mobile/ads/impl/pz0$a;)V

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->f:Lcom/yandex/mobile/ads/impl/el;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/el;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->g:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->a:Lcom/yandex/mobile/ads/impl/lz0;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/lz0;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " didn\'t provide bidder token after timeout"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->b:Lcom/yandex/mobile/ads/impl/pz0;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->c:Landroid/content/Context;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->a:Lcom/yandex/mobile/ads/impl/lz0;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->d:Lcom/yandex/mobile/ads/impl/tx0;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->e:Lcom/yandex/mobile/ads/impl/pz0$a;

    invoke-static/range {v5 .. v11}, Lcom/yandex/mobile/ads/impl/pz0;->a(Lcom/yandex/mobile/ads/impl/pz0;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;Ljava/lang/String;Ljava/lang/Long;Lcom/yandex/mobile/ads/impl/pz0$a;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->b:Lcom/yandex/mobile/ads/impl/pz0;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/pz0;->a(Lcom/yandex/mobile/ads/impl/pz0;)Lcom/yandex/mobile/ads/impl/oz0;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->a:Lcom/yandex/mobile/ads/impl/lz0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p1, p2}, Lcom/yandex/mobile/ads/impl/oz0;->a(Lcom/yandex/mobile/ads/impl/lz0;Ljava/lang/String;Lcom/monetization/ads/mediation/banner/MediatedBannerSize;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->b:Lcom/yandex/mobile/ads/impl/pz0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->a:Lcom/yandex/mobile/ads/impl/lz0;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->d:Lcom/yandex/mobile/ads/impl/tx0;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->e:Lcom/yandex/mobile/ads/impl/pz0$a;

    const-string v5, "Can\'t create bidding data json object for network."

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/pz0;->a(Lcom/yandex/mobile/ads/impl/pz0;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;Ljava/lang/String;Ljava/lang/Long;Lcom/yandex/mobile/ads/impl/pz0$a;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->b:Lcom/yandex/mobile/ads/impl/pz0;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->a:Lcom/yandex/mobile/ads/impl/lz0;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->d:Lcom/yandex/mobile/ads/impl/tx0;

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/pz0$b;->e:Lcom/yandex/mobile/ads/impl/pz0$a;

    invoke-static/range {v4 .. v9}, Lcom/yandex/mobile/ads/impl/pz0;->a(Lcom/yandex/mobile/ads/impl/pz0;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/pz0$a;)V

    :goto_0
    return-void
.end method
