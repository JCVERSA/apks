.class Lcom/mbridge/msdk/interstitial/adapter/a$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/interstitial/adapter/a;->a(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/mbridge/msdk/interstitial/adapter/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->a:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->a:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->d(Lcom/mbridge/msdk/interstitial/adapter/a;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v2, v3}, Lcom/mbridge/msdk/interstitial/adapter/a;->b(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/util/List;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/lang/String;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->a:Ljava/util/List;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v0, ""

    .line 45
    .line 46
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->b(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 53
    .line 54
    const-string v1, "no ads available"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->e(Lcom/mbridge/msdk/interstitial/adapter/a;)Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/j;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/j;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/db/j;->a()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->b:Ljava/util/List;

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-lez v0, :cond_2

    .line 85
    .line 86
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->c:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$d;->b:Ljava/util/List;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method
