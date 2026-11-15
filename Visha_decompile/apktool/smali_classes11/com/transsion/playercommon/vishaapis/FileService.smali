.class public interface abstract Lcom/transsion/playercommon/vishaapis/FileService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract downloadFileWithDynamicUrlAsync(Ljava/lang/String;)Ljq0;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwib;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljq0<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq94;
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract downloadFileWithDynamicUrlSync(Ljava/lang/String;)Ljq0;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwib;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljq0<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq94;
    .end annotation
.end method

.method public abstract downloadFileWithFixedUrl()Ljq0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljq0<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/xx/1.png"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getFileLength(Ljava/lang/String;)Ljq0;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwib;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljq0<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq94;
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method
