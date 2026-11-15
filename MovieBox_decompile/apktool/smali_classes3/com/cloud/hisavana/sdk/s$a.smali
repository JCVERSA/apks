.class Lcom/cloud/hisavana/sdk/s$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/s;->a(Lcom/cloud/hisavana/sdk/p3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/s;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/s$a;->a:Lcom/cloud/hisavana/sdk/s;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/s$a;->a:Lcom/cloud/hisavana/sdk/s;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/s;->f(Lcom/cloud/hisavana/sdk/s;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s$a;->a:Lcom/cloud/hisavana/sdk/s;

    .line 37
    .line 38
    invoke-static {v0, p1, p2}, Lcom/cloud/hisavana/sdk/s;->h(Lcom/cloud/hisavana/sdk/s;Ljava/util/List;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s$a;->a:Lcom/cloud/hisavana/sdk/s;

    .line 43
    .line 44
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_OFFLINE_DATA_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 45
    .line 46
    invoke-static {p1, v0, p2}, Lcom/cloud/hisavana/sdk/s;->g(Lcom/cloud/hisavana/sdk/s;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_2
    return-void
.end method
