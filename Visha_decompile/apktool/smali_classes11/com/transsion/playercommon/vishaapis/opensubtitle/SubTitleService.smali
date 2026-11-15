.class public interface abstract Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract downloadFile(Ljava/lang/String;)Ljq0;
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

.method public abstract query(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lmc7;
    .param p1    # J
        .annotation runtime Lay7;
            value = "movieByteSize"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lay7;
            value = "movieHash"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lay7;
            value = "name"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lay7;
            value = "imdbId"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lay7;
            value = "tag"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lay7;
            value = "episode"
        .end annotation
    .end param
    .param p8    # I
        .annotation runtime Lay7;
            value = "season"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lay7;
            value = "subLanguageId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lq94;
        value = "episode-{episode}/imdbid-{imdbId}/moviebytesize-{movieByteSize}/moviehash-{movieHash}/query-{name}/season-{season}/sublanguageid-{subLanguageId}/tag_{tag}"
    .end annotation
.end method

.method public abstract query(Ljava/lang/String;Ljava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "query"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "lang"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "visha/api/search/sub-search"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method
