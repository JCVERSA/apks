.class public final Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$g;
.super Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final j:Lcom/grack/nanojson/JsonObject;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->g:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$g;->j:Lcom/grack/nanojson/JsonObject;

    iput-object p6, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$g;->k:Ljava/lang/String;

    iput-object p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$g;->l:Ljava/lang/String;

    iput-object p7, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$g;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public L()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$g;->l:Ljava/lang/String;

    return-object p0
.end method

.method public O()Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$g;->j:Lcom/grack/nanojson/JsonObject;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$g;->k:Ljava/lang/String;

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$g;->m:Ljava/lang/String;

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 0

    return-void
.end method
