.class public interface abstract Lcom/transsion/playercommon/vishaapis/smartedit/IAudioLastFmCoverApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getReleaseCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljq0;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "mbid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "method"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "api_key"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "format"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljq0<",
            "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/2.0/"
    .end annotation
.end method
