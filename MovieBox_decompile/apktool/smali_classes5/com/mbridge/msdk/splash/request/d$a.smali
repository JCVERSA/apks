.class Lcom/mbridge/msdk/splash/request/d$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/request/d;->b(Ljava/util/List;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:I

.field final synthetic e:Lcom/mbridge/msdk/splash/request/d;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/request/d;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/request/d$a;->e:Lcom/mbridge/msdk/splash/request/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/splash/request/d$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/splash/request/d$a;->b:Lorg/json/JSONObject;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/mbridge/msdk/splash/request/d$a;->c:Ljava/util/List;

    .line 8
    .line 9
    iput p5, p0, Lcom/mbridge/msdk/splash/request/d$a;->d:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/request/d$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "v5"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "data"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/splash/request/d$a;->b:Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/mbridge/msdk/splash/request/d$a;->e:Lcom/mbridge/msdk/splash/request/d;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/mbridge/msdk/splash/request/d;->a(Lcom/mbridge/msdk/splash/request/d;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/entity/b;->parseV5CampaignUnit(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/request/d$a;->b:Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/mbridge/msdk/splash/request/d$a;->e:Lcom/mbridge/msdk/splash/request/d;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/mbridge/msdk/splash/request/d;->a(Lcom/mbridge/msdk/splash/request/d;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/entity/b;->parseCampaignUnit(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->c()Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lcom/mbridge/msdk/splash/request/d$a$a;

    .line 51
    .line 52
    invoke-direct {v2, p0, v0}, Lcom/mbridge/msdk/splash/request/d$a$a;-><init>(Lcom/mbridge/msdk/splash/request/d$a;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method
