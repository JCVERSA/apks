.class Lcom/mgmi/platform/b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/platform/b$1;->a(Lcom/mgmi/net/bean/SdkConfigData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/platform/b$1;


# direct methods
.method public constructor <init>(Lcom/mgmi/platform/b$1;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/platform/b$1$1;->a:Lcom/mgmi/platform/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/mgmi/platform/b$1$1;->a:Lcom/mgmi/platform/b$1;

    iget-object v0, v0, Lcom/mgmi/platform/b$1;->b:Lcom/mgmi/platform/b;

    sget-object v0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgmi/net/bean/SdkConfigData;->ins_info_desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/platform/b$1$1;->a:Lcom/mgmi/platform/b$1;

    iget-object v0, v0, Lcom/mgmi/platform/b$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lwad;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jlk0m9l3"

    invoke-static {v1, v2}, Ln4d;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "info"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "did"

    iget-object v3, p0, Lcom/mgmi/platform/b$1$1;->a:Lcom/mgmi/platform/b$1;

    iget-object v3, v3, Lcom/mgmi/platform/b$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lmpd;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ssp/MGTVAdFactory;->getOaid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "oaid"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "muid"

    iget-object v3, p0, Lcom/mgmi/platform/b$1$1;->a:Lcom/mgmi/platform/b$1;

    iget-object v3, v3, Lcom/mgmi/platform/b$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/mgmi/platform/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lmac"

    iget-object v3, p0, Lcom/mgmi/platform/b$1$1;->a:Lcom/mgmi/platform/b$1;

    iget-object v3, v3, Lcom/mgmi/platform/b$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/mgmi/platform/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ladid"

    iget-object v3, p0, Lcom/mgmi/platform/b$1$1;->a:Lcom/mgmi/platform/b$1;

    iget-object v3, v3, Lcom/mgmi/platform/b$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/mgmi/platform/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    iget-object v1, p0, Lcom/mgmi/platform/b$1$1;->a:Lcom/mgmi/platform/b$1;

    iget-object v3, v1, Lcom/mgmi/platform/b$1;->a:Landroid/content/Context;

    new-instance v4, Lcom/mgadplus/netlib/a/a;

    iget-object v1, v1, Lcom/mgmi/platform/b$1;->b:Lcom/mgmi/platform/b;

    sget-object v1, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget-object v1, v1, Lcom/mgmi/net/bean/SdkConfigData;->ins_info_desc:Ljava/lang/String;

    invoke-direct {v4, v1}, Lcom/mgadplus/netlib/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mgadplus/netlib/base/c$a;->BODY:Lcom/mgadplus/netlib/base/c$a;

    const-string v5, "Insinfo"

    invoke-virtual {v4, v5, v1, v2}, Lcom/mgadplus/netlib/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/a/a;

    move-result-object v1

    new-instance v2, Lcom/mgmi/platform/b$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/mgmi/platform/b$1$1$1;-><init>(Lcom/mgmi/platform/b$1$1;Ljava/lang/String;)V

    invoke-static {v3, v1, v2}, Lcom/mgadplus/netlib/a/e;->a(Landroid/content/Context;Lcom/mgadplus/netlib/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_1
    return-void
.end method
