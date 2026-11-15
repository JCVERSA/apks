.class public Lcom/hunantv/imgo/data/BigDataApplistData;
.super Lcom/hunantv/imgo/data/CommonData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/data/BigDataApplistData$AppList;
    }
.end annotation


# instance fields
.field private act:Ljava/lang/String;

.field protected bdsv:Ljava/lang/String;

.field protected list:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/imgo/data/CommonData;-><init>()V

    const-string v0, "appls"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/BigDataApplistData;->setAct(Ljava/lang/String;)V

    const-string v0, "27.9.1"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setBid(Ljava/lang/String;)V

    new-instance v0, Lcom/hunantv/imgo/data/BigDataApplistData$AppList;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/data/BigDataApplistData$AppList;-><init>(Lcom/hunantv/imgo/data/BigDataApplistData;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/BigDataApplistData;->setList(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAct()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataApplistData;->act:Ljava/lang/String;

    return-object p0
.end method

.method public getBdsv()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataApplistData;->bdsv:Ljava/lang/String;

    return-object p0
.end method

.method public getList()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataApplistData;->list:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestParams()Lcom/hunantv/imgo/net/RequestParams;
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/imgo/data/CommonData;->createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    const-string v1, "bdsv"

    iget-object v2, p0, Lcom/hunantv/imgo/data/BigDataApplistData;->bdsv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list"

    iget-object v2, p0, Lcom/hunantv/imgo/data/BigDataApplistData;->list:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "act"

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataApplistData;->act:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAct(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataApplistData;->act:Ljava/lang/String;

    return-void
.end method

.method public setBdsv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataApplistData;->bdsv:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataApplistData;->list:Ljava/lang/String;

    return-void
.end method
