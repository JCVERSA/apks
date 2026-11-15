.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;
.super Lfu0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor$SystemPlaylistUrlCreationException;
    }
.end annotation


# instance fields
.field public final g:Lorg/schabi/newpipe/extractor/playlist/a;

.field public h:Z


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lfu0;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->u(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p2

    new-instance v0, Loxc;

    invoke-direct {v0, p1, p2}, Loxc;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->g:Lorg/schabi/newpipe/extractor/playlist/a;

    return-void
.end method


# virtual methods
.method public q(Lc23;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->g:Lorg/schabi/newpipe/extractor/playlist/a;

    invoke-virtual {v0, p1}, Lmk3;->q(Lc23;)V

    iget-boolean p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->h:Z
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public r()Ltl5$a;
    .locals 1

    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->h:Z

    if-nez v0, :cond_0

    invoke-static {}, Ltl5$a;->a()Ltl5$a;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->g:Lorg/schabi/newpipe/extractor/playlist/a;

    invoke-virtual {p0}, Ltl5;->r()Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 1

    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->h:Z

    if-nez v0, :cond_0

    invoke-static {}, Ltl5$a;->a()Ltl5$a;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;->g:Lorg/schabi/newpipe/extractor/playlist/a;

    invoke-virtual {p0, p1}, Ltl5;->t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 6

    const/4 p0, 0x0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "UC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move p0, v2

    goto :goto_1

    :sswitch_0
    const-string p0, "livestreams"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :sswitch_1
    const-string p0, "videos"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "shorts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only Videos, Shorts and Livestreams tabs can extracted as playlists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UULV"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    move-object v3, p0

    goto :goto_3

    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UULF"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UUSH"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :goto_3
    :try_start_0
    invoke-static {}, Lqxc;->r()Lqxc;

    move-result-object p0

    invoke-virtual {p0, v3}, Lem5;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance p0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const-string v5, ""

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor$SystemPlaylistUrlCreationException;

    const-string v0, "Could not create a YouTube playlist from a valid playlist ID"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor$SystemPlaylistUrlCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid channel ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A content filter is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35d4f489 -> :sswitch_2
        -0x30ad84a8 -> :sswitch_1
        -0x1a2eb179 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
