.class public Lcom/transsion/sdk/oneid/data/UserIdInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public account_id:Ljava/lang/String;

.field public account_type:Ljava/lang/String;

.field public tripartite_id:Ljava/lang/String;

.field public tripartite_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_id:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_type:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_id:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_type:Ljava/lang/String;

    .line 13
    .line 14
    :try_start_0
    invoke-static {p1}, Lbz/b;->b(Landroid/content/Context;)Lbz/b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "user_id"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lbz/b;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string p1, "account_type"

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_type:Ljava/lang/String;

    .line 42
    .line 43
    const-string p1, "account_id"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_id:Ljava/lang/String;

    .line 50
    .line 51
    const-string p1, "tripartite_type"

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_type:Ljava/lang/String;

    .line 58
    .line 59
    const-string p1, "tripartite_id"

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_type:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_id:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setAccount_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAccount_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTripartite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_type:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_id:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setTripartite_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTripartite_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
