.class final Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor$TabExtractorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TabExtractorBuilder"
.end annotation


# instance fields
.field private final discography:Lcom/grack/nanojson/JsonArray;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor$TabExtractorBuilder;->discography:Lcom/grack/nanojson/JsonArray;

    return-void
.end method


# virtual methods
.method public build(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor$TabExtractorBuilder;->discography:Lcom/grack/nanojson/JsonArray;

    invoke-static {p1, p2, p0}, Ls50;->u(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonArray;)Ls50;

    move-result-object p0

    return-object p0
.end method
