.class public interface abstract Lcom/transsion/playercommon/vishaapis/smartedit/IAudioAcoustIdApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract lookupByFingerprint(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljq0;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "client"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lwk8;
            value = "duration"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "fingerprint"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "meta"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljq0<",
            "Lcom/transsion/dbdata/beans/audioedit/AcoustIdResponseBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/v2/lookup"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method
