.class Lcom/mbridge/msdk/interstitial/adapter/a$c;
.super Lcom/mbridge/msdk/foundation/same/c$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mbridge/msdk/interstitial/adapter/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/interstitial/adapter/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$c;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/interstitial/adapter/a$c;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/interstitial/adapter/a$c;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/c$a;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v3, p0, Lcom/mbridge/msdk/interstitial/adapter/a$c;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/mbridge/msdk/interstitial/adapter/a$c;->b:Landroid/content/Context;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
