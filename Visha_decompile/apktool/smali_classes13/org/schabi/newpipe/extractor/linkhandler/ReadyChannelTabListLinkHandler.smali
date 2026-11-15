.class public Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;
    }
.end annotation


# instance fields
.field private final extractorBuilder:Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;)V
    .locals 6

    invoke-static {p3}, Ljo8;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;->extractorBuilder:Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;

    return-void
.end method


# virtual methods
.method public getChannelTabExtractor(Lorg/schabi/newpipe/extractor/StreamingService;)Lfu0;
    .locals 2

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;->extractorBuilder:Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;

    new-instance v1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    invoke-interface {v0, p1, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;->build(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;

    move-result-object p0

    return-object p0
.end method
