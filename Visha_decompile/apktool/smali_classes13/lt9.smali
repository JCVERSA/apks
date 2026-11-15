.class public Llt9;
.super Lorg/schabi/newpipe/extractor/playlist/a;
.source "SourceFile"


# instance fields
.field public g:Ljava/lang/String;

.field public h:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/playlist/a;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method public static synthetic F(Lqy9;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Llt9;->G(Lqy9;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method public static synthetic G(Lqy9;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 1

    const-string v0, "title"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lvt9;

    invoke-direct {p1, p2}, Lvt9;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, p1}, Lqy9;->h(Lpy9;)V

    goto :goto_0

    :cond_0
    const-string p0, "id"

    invoke-virtual {p2, p0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%010d"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public B()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Llt9;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "artwork_url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljt9;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Llt9;->r()Ltl5$a;

    move-result-object p0

    invoke-virtual {p0}, Ltl5$a;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->n(Ljava/util/Collection;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return-object v0

    :catch_0
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public C()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Llt9;->h:Lcom/grack/nanojson/JsonObject;

    invoke-static {p0}, Ljt9;->h(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljt9;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public D()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llt9;->h:Lcom/grack/nanojson/JsonObject;

    invoke-static {p0}, Ljt9;->m(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public E()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llt9;->h:Lcom/grack/nanojson/JsonObject;

    invoke-static {p0}, Ljt9;->n(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Llt9;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 4

    invoke-virtual {p0}, Ltl5;->s()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llt9;->g:Ljava/lang/String;

    invoke-static {}, Ljt9;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api-v2.soundcloud.com/playlists/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?client_id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&representation=compact"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc23;->e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Llt9;->h:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json response"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public r()Ltl5$a;
    .locals 4

    new-instance v0, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lqy9;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Llt9;->h:Lcom/grack/nanojson/JsonObject;

    const-string v2, "tracks"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lw50;

    const-class v3, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v2, v3}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lx50;

    invoke-direct {v2, v3}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lkt9;

    invoke-direct {v2, v0, v1}, Lkt9;-><init>(Lqy9;Ljava/util/List;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    new-instance p0, Ltl5$a;

    new-instance v2, Lorg/schabi/newpipe/extractor/Page;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0, v2}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 9

    const-string v0, "Could not parse json response"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getIds()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/a;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getIds()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getIds()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getIds()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v3, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_0
    invoke-static {}, Ljt9;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://api-v2.soundcloud.com/tracks?client_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ids="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v4

    invoke-direct {v3, v4}, Lqy9;-><init>(I)V

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object v4

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object p0

    invoke-virtual {v4, v2, p0}, Lc23;->e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/a;->b()Lcom/grack/nanojson/a$a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/grack/nanojson/JsonObject;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/grack/nanojson/JsonObject;

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Lvt9;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/grack/nanojson/JsonObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no track with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in response"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v4, v5}, Lvt9;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {v3, v4}, Lqy9;->h(Lpy9;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception p0

    :try_start_2
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    new-instance p0, Ltl5$a;

    new-instance p1, Lorg/schabi/newpipe/extractor/Page;

    invoke-direct {p1, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v3, p1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0

    :goto_3
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Page doesn\'t contain IDs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public v()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 2

    iget-object p0, p0, Llt9;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object p0

    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public x()J
    .locals 2

    iget-object p0, p0, Llt9;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "track_count"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
