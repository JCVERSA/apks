.class public interface abstract Lcom/transsion/playercommon/vishaapis/smartedit/IAudioCoverArtApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getReleaseCover(Ljava/lang/String;)Ljq0;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lay7;
            value = "mbid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljq0<",
            "Lcom/transsion/dbdata/beans/audioedit/CoverArtResponseBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/release/{mbid}"
    .end annotation
.end method
