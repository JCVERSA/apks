.class public interface abstract Lcom/transsion/playercommon/vishaapis/smartedit/IAudioSmartEditApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getRecordingDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljq0;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lay7;
            value = "mbid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "inc"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "fmt"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljq0<",
            "Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/ws/2/recording/{mbid}"
    .end annotation
.end method
