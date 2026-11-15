.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;
.super Lus0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor$TabExtractorBuilder;
    }
.end annotation


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lus0;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method public static synthetic C(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;->H(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;->G(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Image;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;->J(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Image;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;->I(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic G(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;
    .locals 1

    const-string v0, "img"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->H0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 1

    const-string v0, "src"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic J(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Image;
    .locals 3

    new-instance v0, Lorg/schabi/newpipe/extractor/Image;

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    sget-object v2, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    invoke-direct {v0, p0, v1, v1, v2}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    return-object v0
.end method


# virtual methods
.method public B()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 0

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj60;->e(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;->g:Lcom/grack/nanojson/JsonObject;

    return-void
.end method

.method public r()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "bio_image_id"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lj60;->h(JZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public s()Ljava/util/List;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "bandcamp_url"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvc5;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    const-string v0, "customHeader"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->D0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Ll50;

    invoke-direct {v0}, Ll50;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lm50;

    invoke-direct {v0}, Lm50;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Ln50;

    invoke-direct {v0}, Ln50;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lo50;

    invoke-direct {v0}, Lo50;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lp50;

    invoke-direct {v0}, Lp50;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lk50;->a()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not download artist web site"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;->g:Lcom/grack/nanojson/JsonObject;

    const-string v0, "bio"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public v()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public w()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public y()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public z()Ljava/util/List;
    .locals 11

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "discography"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor$TabExtractorBuilder;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor$TabExtractorBuilder;-><init>(Lcom/grack/nanojson/JsonArray;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    instance-of v6, v5, Lcom/grack/nanojson/JsonObject;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    check-cast v5, Lcom/grack/nanojson/JsonObject;

    const-string v6, "item_type"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v3, :cond_3

    const-string v7, "track"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v3, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v7

    const-string v8, "tracks"

    invoke-static {v8}, Lt50;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v7, v9, v8, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v6

    :cond_3
    if-nez v4, :cond_0

    const-string v7, "album"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v5

    const-string v7, "albums"

    invoke-static {v7}, Lt50;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8, v7, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
