.class public final Lcom/mgmi/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "1"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 2
    const-string v0, "lyzzzz"

    const-string v1, "mma_init"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/com/custommma/mobile/tracking/api/Countly;->l()Lcn/com/custommma/mobile/tracking/api/Countly;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0, v1}, Lcn/com/custommma/mobile/tracking/api/Countly;->k(Z)V

    .line 5
    const-string v1, "http://mobile.da.mgtv.com/mmasdk_v2.xml"

    invoke-virtual {v0, p0, v1}, Lcn/com/custommma/mobile/tracking/api/Countly;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p0, :cond_1

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcn/com/custommma/mobile/tracking/api/Countly;->l()Lcn/com/custommma/mobile/tracking/api/Countly;

    move-result-object v0

    .line 14
    :try_start_0
    invoke-static {p0, p1}, Lcom/mgmi/e/f;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/mgmi/e/f$2;

    invoke-direct {p1}, Lcom/mgmi/e/f$2;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcn/com/custommma/mobile/tracking/api/Countly;->f(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {}, Lcn/com/custommma/mobile/tracking/api/Countly;->l()Lcn/com/custommma/mobile/tracking/api/Countly;

    move-result-object v0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    :try_start_0
    invoke-static {v1, p1}, Lcom/mgmi/e/f;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mgmi/e/f$1;

    invoke-direct {v2}, Lcom/mgmi/e/f$1;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcn/com/custommma/mobile/tracking/api/Countly;->g(Ljava/lang/String;Landroid/view/View;ILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/com/custommma/mobile/tracking/api/Countly;->l()Lcn/com/custommma/mobile/tracking/api/Countly;

    move-result-object v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/mgmi/e/f;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/mgmi/e/f$3;

    invoke-direct {p1}, Lcom/mgmi/e/f$3;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Lcn/com/custommma/mobile/tracking/api/Countly;->g(Ljava/lang/String;Landroid/view/View;ILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "trackmkmgtv"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
