.class public Ljuc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa1;


# instance fields
.field public final a:Lcom/grack/nanojson/JsonObject;

.field public final b:Lcom/grack/nanojson/JsonObject;

.field public final c:Lcom/grack/nanojson/JsonObject;

.field public final d:Lcom/grack/nanojson/JsonObject;

.field public final e:Ljava/lang/String;

.field public final f:Lona;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lona;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljuc;->a:Lcom/grack/nanojson/JsonObject;

    iput-object p2, p0, Ljuc;->b:Lcom/grack/nanojson/JsonObject;

    iput-object p3, p0, Ljuc;->c:Lcom/grack/nanojson/JsonObject;

    iput-object p4, p0, Ljuc;->d:Lcom/grack/nanojson/JsonObject;

    iput-object p5, p0, Ljuc;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic B(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Ljuc;->E(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Ljuc;->G()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic D(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljuc;->F(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 2

    const-string v0, "continuationItemRenderer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "continuationEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "continuationCommand"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "token"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get comment replies continuation"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public A()Lorg/schabi/newpipe/extractor/Page;
    .locals 3

    iget-object v0, p0, Ljuc;->b:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Ljuc;->b:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lw50;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lx50;

    invoke-direct {v1, v2}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lfuc;

    invoke-direct {v1}, Lfuc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lguc;

    invoke-direct {v1}, Lguc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lhuc;

    invoke-direct {v1}, Lhuc;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Liuc;

    invoke-direct {v1}, Liuc;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/schabi/newpipe/extractor/Page;

    iget-object p0, p0, Ljuc;->e:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Ljuc;->c:Lcom/grack/nanojson/JsonObject;

    const-string v0, "author"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "channelId"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "channelCommand"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "innertubeCommand"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "browseEndpoint"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v3, "browseId"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "avatar"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "endpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get channel ID"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/channel/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Ljuc;->c:Lcom/grack/nanojson/JsonObject;

    const-string v0, "author"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "displayName"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Ljuc;->c:Lcom/grack/nanojson/JsonObject;

    const-string v0, "avatar"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "sources"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lcxc;->F(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Ljuc;->c:Lcom/grack/nanojson/JsonObject;

    const-string v0, "properties"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "publishedTime"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 2

    invoke-virtual {p0}, Ljuc;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Ljuc;->f:Lona;

    invoke-virtual {p0, v0}, Lona;->a(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljuc;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljuc;->e:Ljava/lang/String;

    return-object p0
.end method

.method public h()Z
    .locals 1

    iget-object p0, p0, Ljuc;->c:Lcom/grack/nanojson/JsonObject;

    const-string v0, "author"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "isCreator"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public i()Z
    .locals 1

    iget-object p0, p0, Ljuc;->b:Lcom/grack/nanojson/JsonObject;

    if-eqz p0, :cond_0

    const-string v0, "viewRepliesCreatorThumbnail"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ljuc;->e()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public k()Z
    .locals 1

    iget-object p0, p0, Ljuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "pinnedText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public l()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    iget-object p0, p0, Ljuc;->c:Lcom/grack/nanojson/JsonObject;

    const-string v1, "properties"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "content"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lbvc;->i(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public m()I
    .locals 2

    iget-object p0, p0, Ljuc;->c:Lcom/grack/nanojson/JsonObject;

    const-string v0, "toolbar"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "replyCount"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->r(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public p()Z
    .locals 1

    iget-object p0, p0, Ljuc;->d:Lcom/grack/nanojson/JsonObject;

    const-string v0, "heartState"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TOOLBAR_HEART_STATE_HEARTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljuc;->c:Lcom/grack/nanojson/JsonObject;

    const-string v1, "properties"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "commentId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Ljuc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get comment ID"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public r()I
    .locals 2

    invoke-virtual {p0}, Ljuc;->y()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->r(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Unexpected error while converting textual like count to like count"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Ljuc;->c:Lcom/grack/nanojson/JsonObject;

    const-string v0, "toolbar"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "likeCountNotliked"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
