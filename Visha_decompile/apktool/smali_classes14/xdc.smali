.class public abstract Lxdc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 1

    invoke-static {}, Lcom/transsion/vishaads/datasource/AdsDataManager;->n()Lcom/transsion/vishaads/datasource/AdsDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaads/datasource/AdsDataManager;->j()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lmn5;->a()Lmn5;

    move-result-object v0

    invoke-virtual {v0}, Lmn5;->b()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 1

    invoke-static {}, Lcom/transsion/vishaads/datasource/AdsDataManager;->n()Lcom/transsion/vishaads/datasource/AdsDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaads/datasource/AdsDataManager;->k()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lmn5;->a()Lmn5;

    move-result-object v0

    invoke-virtual {v0}, Lmn5;->c()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 1

    invoke-static {}, Lcom/transsion/vishaads/datasource/AdsDataManager;->n()Lcom/transsion/vishaads/datasource/AdsDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaads/datasource/AdsDataManager;->l()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lmn5;->a()Lmn5;

    move-result-object v0

    invoke-virtual {v0}, Lmn5;->d()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 1

    invoke-static {}, Lcom/transsion/vishaads/datasource/AdsDataManager;->n()Lcom/transsion/vishaads/datasource/AdsDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaads/datasource/AdsDataManager;->m()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lmn5;->a()Lmn5;

    move-result-object v0

    invoke-virtual {v0}, Lmn5;->e()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)V
    .locals 1

    if-gtz p0, :cond_0

    const-string p0, "getServerAdsData invalid region id"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "VishaAdDataProvider"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishaads/datasource/AdsDataManager;->n()Lcom/transsion/vishaads/datasource/AdsDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaads/datasource/AdsDataManager;->z(I)V

    return-void
.end method
