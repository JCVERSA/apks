.class public interface abstract Lcom/transsion/vishaplayersdk/netservices/PlayerService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract videoAuthorize(JJ)Ljq0;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "video_id"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lwk8;
            value = "video_serial_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljq0<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "visha/api/video/auth"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method
