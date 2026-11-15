.class Lcom/bytedance/sdk/openadsdk/EjP/dNu$7;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/dNu;->Sj(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/EjP/dNu;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/EjP/dNu;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$7;->sP:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$7;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$7;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    new-instance v2, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$7;->sP:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "ts"

    .line 26
    .line 27
    invoke-static {v3, v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/dNu;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$7;->sP:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 31
    .line 32
    const-string v1, "jsb"

    .line 33
    .line 34
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$7;->Sj:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/dNu;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$7;->sP:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->sP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v3, "webview_jsb_start"

    .line 46
    .line 47
    invoke-static {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/dNu;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
