.class public Llj7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/transsion/palmsdk/PalmAuthParam;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/palmsdk/PalmAuthParam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Llj7;->a:Landroid/content/Context;

    iput-object p2, p0, Llj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    return-void
.end method

.method public static b(Llj7;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/palmsdk/PalmID$a;)V
    .locals 4

    if-nez p4, :cond_0

    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "PalmNetworkManager callOpenApi apiListener is null"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x9ca5

    const-string p1, "API path is empty"

    invoke-interface {p4, p0, p1}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x9ca9

    const-string p1, "Access token is empty"

    invoke-interface {p4, p0, p1}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Llj7;->a:Landroid/content/Context;

    invoke-static {v0}, Lvj7;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "Network not available"

    const p1, 0x9ca7

    invoke-interface {p4, p1, p0}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Client-ID"

    iget-object v1, p0, Llj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LOooO0Oo/OooO0o;->e()LOooO0Oo/OooO0o;

    move-result-object p2

    new-instance v1, Llj7$a;

    invoke-direct {v1, p0, p4, p1, p3}, Llj7$a;-><init>(Llj7;Lcom/transsion/palmsdk/PalmID$a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p2, p1, v0, p3, v1}, LOooO0Oo/OooO0o;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lrj7;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p2, "PalmNetworkManager callOpenApi error: "

    invoke-static {p2}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "API call failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x9ca6

    invoke-interface {p4, p1, p0}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
