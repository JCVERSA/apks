.class public interface abstract Lcom/transsion/playercommon/vishaapis/APIService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getSniffResultFromServer(Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;)Ljq0;
    .param p1    # Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/dbdata/beans/sniff/SniffGetResultReqBean;",
            ")",
            "Ljq0<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/SniffResultBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/sniffer/get-result"
    .end annotation
.end method

.method public abstract getSniffScript(Lcom/transsion/dbdata/beans/sniff/SniffGetScriptReqBean;)Ljq0;
    .param p1    # Lcom/transsion/dbdata/beans/sniff/SniffGetScriptReqBean;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/dbdata/beans/sniff/SniffGetScriptReqBean;",
            ")",
            "Ljq0<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/sniffer/get-script"
    .end annotation
.end method

.method public abstract submitSniffInfo(Lokhttp3/RequestBody;)Ljq0;
    .param p1    # Lokhttp3/RequestBody;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            ")",
            "Ljq0<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/sniff/SniffResultBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/sniffer/submit"
    .end annotation
.end method
