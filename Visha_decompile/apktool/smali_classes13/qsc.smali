.class public final synthetic Lqsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic b:Lcom/grack/nanojson/JsonObject;

.field public final synthetic c:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqsc;->b:Lcom/grack/nanojson/JsonObject;

    iput-object p2, p0, Lqsc;->c:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iput-object p3, p0, Lqsc;->d:Ljava/lang/String;

    iput-object p4, p0, Lqsc;->e:Ljava/lang/String;

    iput-object p5, p0, Lqsc;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 7

    iget-object v0, p0, Lqsc;->b:Lcom/grack/nanojson/JsonObject;

    iget-object v1, p0, Lqsc;->c:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iget-object v2, p0, Lqsc;->d:Ljava/lang/String;

    iget-object v3, p0, Lqsc;->e:Ljava/lang/String;

    iget-object v4, p0, Lqsc;->f:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;->N(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;

    move-result-object p0

    return-object p0
.end method
