.class public Lcom/mgtv/thirdsdk/playcore/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4
    sget v0, Lcom/mgtv/thirdsdk/playcore/c/a;->a:I

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->a()Z

    .line 7
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->c()V

    .line 8
    :cond_1
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getFlowReportMode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mgtv/easydatasource/FlowReporter;->getTsFlowTagWithUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public static a(Lcom/mgtv/ssp/bean/FlowReportBean;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/mgtv/ssp/bean/FlowReportBean;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/ssp/bean/FlowReportBean;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/bean/FlowReportBean;->method:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    const-string v0, "POST"

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/report/d;->a()Lcom/hunantv/imgo/report/d;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/ssp/bean/FlowReportBean;->url:Ljava/lang/String;

    iget-object p0, p0, Lcom/mgtv/ssp/bean/FlowReportBean;->data:Ljava/lang/String;

    invoke-virtual {v1, v2, p0, v0}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getFlowReportMode()I

    move-result v0

    sput v0, Lcom/mgtv/thirdsdk/playcore/c/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/mgtv/easydatasource/FlowReporter;->enableHttpsReport(Z)V

    .line 3
    invoke-static {}, Lcom/mgtv/easydatasource/FlowReporter;->init()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    sget v0, Lcom/mgtv/thirdsdk/playcore/c/a;->a:I

    if-nez v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->a()Z

    .line 6
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->c()V

    .line 7
    :cond_1
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getFlowReportMode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mgtv/easydatasource/FlowReporter;->packSecondLayerUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget v0, Lcom/mgtv/thirdsdk/playcore/c/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/mgtv/easydatasource/FlowReporter;->isInited()Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 21
    sget v0, Lcom/mgtv/thirdsdk/playcore/c/a;->a:I

    if-nez v0, :cond_0

    return-object p0

    .line 22
    :cond_0
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->a()Z

    .line 24
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->c()V

    .line 25
    :cond_1
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getFlowReportMode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mgtv/easydatasource/FlowReporter;->packThirdLayerUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static c()V
    .locals 8

    .line 1
    sget v0, Lcom/mgtv/thirdsdk/playcore/c/a;->a:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->a()Z

    .line 4
    :cond_1
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 5
    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid"

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    const-string v1, "did"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v1, "aver"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v1, "termid"

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/hunantv/imgo/util/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x655

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eq v2, v3, :cond_8

    const/16 v3, 0x674

    if-eq v2, v3, :cond_7

    const/16 v3, 0x693

    if-eq v2, v3, :cond_6

    const/16 v3, 0x6b2

    if-eq v2, v3, :cond_5

    const v3, 0x252358

    if-eq v2, v3, :cond_4

    const v3, 0x28a715

    if-eq v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const-string v2, "None"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x5

    goto :goto_2

    :cond_5
    const-string v2, "5G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v7

    goto :goto_2

    :cond_6
    const-string v2, "4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v6

    goto :goto_2

    :cond_7
    const-string v2, "3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v5

    goto :goto_2

    :cond_8
    const-string v2, "2G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v4

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_e

    if-eq v1, v4, :cond_d

    if-eq v1, v5, :cond_c

    if-eq v1, v6, :cond_b

    if-eq v1, v7, :cond_a

    .line 12
    const-string v1, "0"

    goto :goto_3

    .line 13
    :cond_a
    const-string v1, "6"

    goto :goto_3

    .line 14
    :cond_b
    const-string v1, "5"

    goto :goto_3

    .line 15
    :cond_c
    const-string v1, "4"

    goto :goto_3

    .line 16
    :cond_d
    const-string v1, "3"

    goto :goto_3

    .line 17
    :cond_e
    const-string v1, "1"

    .line 18
    :goto_3
    const-string v2, "netType"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v1, "appid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/easydatasource/FlowReporter;->setGlobalConfig(Ljava/lang/String;)V

    return-void
.end method

.method public static d()V
    .locals 1

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->a()Z

    :cond_0
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/c/a$1;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/playcore/c/a$1;-><init>()V

    invoke-static {v0}, Lcom/mgtv/easydatasource/FlowReporter;->setReportCallBack(Lcom/mgtv/easydatasource/FlowReporter$onReportCallBack;)V

    return-void
.end method
