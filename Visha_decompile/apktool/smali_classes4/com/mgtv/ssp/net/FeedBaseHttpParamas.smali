.class public Lcom/mgtv/ssp/net/FeedBaseHttpParamas;
.super Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mgtv/task/http/HttpParams$Type;->BODY:Lcom/mgtv/task/http/HttpParams$Type;

    const-string v2, "uuid"

    invoke-virtual {p0, v2, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    return-void
.end method
