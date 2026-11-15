.class public final synthetic Lrsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;
.implements Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 0

    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabPlaylistExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object p0
.end method
