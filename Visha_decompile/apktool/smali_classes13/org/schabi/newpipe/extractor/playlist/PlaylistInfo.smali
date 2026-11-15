.class public final Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/ListInfo<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field private banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private description:Lorg/schabi/newpipe/extractor/stream/Description;

.field private playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

.field private streamCount:J

.field private subChannelAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private subChannelName:Ljava/lang/String;

.field private subChannelUrl:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderUrl:Ljava/lang/String;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->banners:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelAvatars:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->thumbnails:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public static getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/a;->g(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->m(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/a;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lmk3;->b()V

    .line 4
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getInfo(Lorg/schabi/newpipe/extractor/playlist/a;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/playlist/a;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 6
    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Ltl5;->s()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lmk3;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lmk3;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->setOriginalUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 11
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 12
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/a;->x()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setStreamCount(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 13
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 14
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/a;->v()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 15
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 16
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/a;->B()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setThumbnails(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 17
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 18
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/a;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setUploaderName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    .line 21
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/a;->C()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v2

    .line 23
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/a;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setSubChannelUrl(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v2

    .line 25
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/a;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setSubChannelName(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v2

    .line 27
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :goto_8
    :try_start_9
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/a;->y()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setSubChannelAvatars(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v2

    .line 29
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :goto_9
    :try_start_a
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/a;->u()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setBanners(Ljava/util/List;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v2

    .line 31
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 32
    :goto_a
    :try_start_b
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/a;->w()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v2

    .line 33
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 34
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/Info;->addAllErrors(Ljava/util/Collection;)V

    .line 37
    :cond_1
    invoke-static {v0, p0}, Lok3;->a(Lorg/schabi/newpipe/extractor/Info;Ltl5;)Ltl5$a;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ltl5$a;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 39
    invoke-virtual {p0}, Ltl5$a;->d()Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            "Ljava/lang/String;",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Ltl5$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->m(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/a;

    move-result-object p0

    invoke-virtual {p0, p2}, Ltl5;->t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBanners()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->banners:Ljava/util/List;

    return-object p0
.end method

.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object p0
.end method

.method public getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0
.end method

.method public getStreamCount()J
    .locals 2

    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->streamCount:J

    return-wide v0
.end method

.method public getSubChannelAvatars()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelAvatars:Ljava/util/List;

    return-object p0
.end method

.method public getSubChannelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelName:Ljava/lang/String;

    return-object p0
.end method

.method public getSubChannelUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->thumbnails:Ljava/util/List;

    return-object p0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderAvatars:Ljava/util/List;

    return-object p0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderName:Ljava/lang/String;

    return-object p0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setBanners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->banners:Ljava/util/List;

    return-void
.end method

.method public setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    return-void
.end method

.method public setPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-void
.end method

.method public setStreamCount(J)V
    .locals 0

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->streamCount:J

    return-void
.end method

.method public setSubChannelAvatars(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelAvatars:Ljava/util/List;

    return-void
.end method

.method public setSubChannelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelName:Ljava/lang/String;

    return-void
.end method

.method public setSubChannelUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->thumbnails:Ljava/util/List;

    return-void
.end method

.method public setUploaderAvatars(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderUrl:Ljava/lang/String;

    return-void
.end method
