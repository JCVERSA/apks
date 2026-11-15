.class public Lpuc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa1;


# instance fields
.field public final a:Lcom/grack/nanojson/JsonObject;

.field public final b:Lcom/grack/nanojson/JsonObject;

.field public final c:Ljava/lang/String;

.field public final d:Lona;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lona;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    iput-object p2, p0, Lpuc;->b:Lcom/grack/nanojson/JsonObject;

    iput-object p3, p0, Lpuc;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Lorg/schabi/newpipe/extractor/Page;
    .locals 3

    iget-object v0, p0, Lpuc;->b:Lcom/grack/nanojson/JsonObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "contents"

    invoke-static {v0, v2}, Loc5;->a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "continuationItemRenderer.continuationEndpoint.continuationCommand.token"

    invoke-static {v0, v2}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/extractor/Page;

    iget-object p0, p0, Lpuc;->c:Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1
.end method

.method public final B()Ljava/util/List;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "authorThumbnail.thumbnails"

    invoke-static {p0, v0}, Loc5;->a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lcxc;->F(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get author thumbnails"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "authorEndpoint.browseEndpoint.browseId"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/channel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "authorText"

    invoke-static {p0, v0}, Loc5;->f(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lpuc;->B()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "publishedTimeText"

    invoke-static {p0, v0}, Loc5;->f(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get publishedTimeText"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public g()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 2

    invoke-virtual {p0}, Lpuc;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lpuc;->d:Lona;

    invoke-virtual {p0, v0}, Lona;->a(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "authorText"

    invoke-static {p0, v0}, Loc5;->f(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lpuc;->c:Ljava/lang/String;

    return-object p0
.end method

.method public h()Z
    .locals 1

    iget-object p0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "authorIsChannelOwner"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public i()Z
    .locals 1

    iget-object p0, p0, Lpuc;->b:Lcom/grack/nanojson/JsonObject;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "viewRepliesCreatorThumbnail"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public j()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lpuc;->B()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public k()Z
    .locals 1

    iget-object p0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "pinnedCommentBadge"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public l()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "contentText"

    invoke-static {p0, v0}, Loc5;->f(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcxc;->M(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get comment text"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "replyCount"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public p()Z
    .locals 1

    iget-object p0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "actionButtons"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "commentActionButtonsRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "creatorHeart"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "commentId"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get comment id"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public r()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v2, "actionButtons.commentActionButtonsRenderer.likeButton.toggleButtonRenderer.accessibilityData.accessibilityData.label"

    invoke-static {v1, v2}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Unexpected error while parsing like count as Integer"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    invoke-virtual {p0}, Lpuc;->y()Ljava/lang/String;

    move-result-object p0

    :try_start_2
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->r(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    long-to-int p0, v0

    return p0

    :catch_2
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Unexpected error while converting textual like count to like count"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public y()Ljava/lang/String;
    .locals 3

    const-string v0, "voteCount"

    :try_start_0
    iget-object v1, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_1
    iget-object p0, p0, Lpuc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-static {p0, v0}, Loc5;->f(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get the vote count"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
