.class public Louc;
.super Lea1;
.source "SourceFile"


# instance fields
.field public g:Z

.field public h:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lea1;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method private B(Lga1;Lcom/grack/nanojson/JsonObject;)V
    .locals 9

    const-string v0, "onResponseReceivedEndpoints"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "reloadContinuationItemsCommand"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "reloadContinuationItemsCommand.continuationItems"

    goto :goto_0

    :cond_1
    const-string v1, "appendContinuationItemsAction"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "appendContinuationItemsAction.continuationItems"

    :goto_0
    :try_start_0
    new-instance v2, Lcom/grack/nanojson/JsonArray;

    invoke-static {v0, v1}, Loc5;->a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/grack/nanojson/JsonArray;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "continuationItemRenderer"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    :cond_2
    const-string v0, "frameworkUpdates"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    const-string v0, "entityBatchUpdate"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p2

    const-string v0, "mutations"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p2

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->o()Lona;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/grack/nanojson/JsonObject;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v3

    check-cast v5, Lcom/grack/nanojson/JsonObject;

    move-object v3, p0

    move-object v4, p2

    move-object v6, p1

    move-object v7, v0

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Louc;->A(Lcom/grack/nanojson/JsonArray;Lcom/grack/nanojson/JsonObject;Lga1;Ljava/lang/String;Lona;)V

    goto :goto_1

    :catch_0
    :cond_4
    return-void
.end method

.method public static synthetic J(Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    :try_start_0
    const-string v0, "comments-section"

    const-string v1, "itemSectionRenderer.targetId"

    invoke-static {p0, v1}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic K(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "itemSectionRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "contents"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "continuationItemRenderer.continuationEndpoint.continuationCommand.token"

    invoke-static {p0, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic L(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "entityKey"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic M()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get comment entity payload mutation"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic w(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Louc;->K(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0, p1}, Louc;->L(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic y()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 1

    invoke-static {}, Louc;->M()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic z(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Louc;->J(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Lcom/grack/nanojson/JsonArray;Lcom/grack/nanojson/JsonObject;Lga1;Ljava/lang/String;Lona;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    const-string v4, "commentThreadRenderer"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "engagementToolbarStateEntityPayload"

    const-string v7, "toolbarStateKey"

    const-string v8, "commentEntityPayload"

    const-string v11, "commentKey"

    const-string v12, "commentRenderer"

    const-string v13, ""

    const-string v14, "commentViewModel"

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "commentRepliesRenderer"

    const-string v15, "replies"

    if-eqz v4, :cond_0

    invoke-virtual {v2, v14}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v12

    new-instance v14, Ljuc;

    invoke-virtual {v2, v15}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v12, v11, v13}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Louc;->G(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v8

    invoke-virtual {v12, v7, v13}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Louc;->G(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    move-object v4, v14

    move-object v5, v12

    move-object v6, v2

    move-object v7, v8

    move-object v8, v0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Ljuc;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lona;)V

    invoke-virtual {v3, v14}, Lga1;->h(Lfa1;)V

    goto :goto_0

    :cond_0
    const-string v0, "comment"

    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lpuc;

    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v2, v15}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-direct {v1, v0, v2, v9, v10}, Lpuc;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lona;)V

    invoke-virtual {v3, v1}, Lga1;->h(Lfa1;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v14}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v14}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    new-instance v2, Ljuc;

    invoke-virtual {v5, v11, v13}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Louc;->G(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v8

    invoke-virtual {v5, v7, v13}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Louc;->G(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const/4 v6, 0x0

    move-object v4, v2

    move-object v7, v8

    move-object v8, v0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Ljuc;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lona;)V

    invoke-virtual {v3, v2}, Lga1;->h(Lfa1;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v12}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lpuc;

    invoke-virtual {v2, v12}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v9, v10}, Lpuc;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lona;)V

    invoke-virtual {v3, v0}, Lga1;->h(Lfa1;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final C(Lcom/grack/nanojson/JsonObject;)Ltl5$a;
    .locals 2

    new-instance v0, Lga1;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lga1;-><init>(I)V

    invoke-direct {p0, v0, p1}, Louc;->B(Lga1;Lcom/grack/nanojson/JsonObject;)V

    new-instance v1, Ltl5$a;

    invoke-virtual {p0, p1}, Louc;->H(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1
.end method

.method public final D(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Louc;->F(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lw50;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lx50;

    invoke-direct {v1, v2}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lmuc;

    invoke-direct {v1}, Lmuc;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lnuc;

    invoke-direct {v1}, Lnuc;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Louc;->g:Z

    return-object p1
.end method

.method public final E()Ltl5$a;
    .locals 3

    new-instance p0, Ltl5$a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ltl5$a;-><init>(Ljava/util/List;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;)V

    return-object p0
.end method

.method public final F(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;
    .locals 0

    :try_start_0
    const-string p0, "contents.twoColumnWatchNextResults.results.results.contents"

    invoke-static {p1, p0}, Loc5;->a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final G(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lw50;

    const-class v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {p1, v0}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lx50;

    invoke-direct {p1, v0}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lkuc;

    invoke-direct {p1, p2}, Lkuc;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lluc;

    invoke-direct {p1}, Lluc;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    const-string p1, "payload"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public final H(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Page;
    .locals 3

    const-string v0, "onResponseReceivedEndpoints"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "reloadContinuationItemsCommand"

    const-string v2, "appendContinuationItemsAction"

    invoke-virtual {p1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "continuationItems"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "continuationItemRenderer"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "button"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "button.buttonRenderer.command.continuationCommand.token"

    goto :goto_0

    :cond_2
    const-string v0, "continuationEndpoint.continuationCommand.token"

    :goto_0
    :try_start_1
    invoke-static {p1, v0}, Loc5;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p0, p1}, Louc;->I(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public final I(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Page;
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public q(Lc23;)V
    .locals 5

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    invoke-static {p1, v0}, Lcxc;->y0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Laa5;

    move-result-object v0

    const-string v1, "videoId"

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object v0

    invoke-virtual {v0}, Laa5;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v2, "next"

    invoke-static {v2, v0, p1}, Lcxc;->I(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Louc;->D(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v3

    invoke-static {p1, v3}, Lcxc;->y0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Laa5;

    move-result-object v3

    const-string v4, "continuation"

    invoke-virtual {v3, v4, v0}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object v0

    invoke-virtual {v0}, Laa5;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcxc;->I(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Louc;->h:Lcom/grack/nanojson/JsonObject;

    return-void
.end method

.method public r()Ltl5$a;
    .locals 1

    iget-boolean v0, p0, Louc;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Louc;->E()Ltl5$a;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Louc;->h:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v0}, Louc;->C(Lcom/grack/nanojson/JsonObject;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 3

    iget-boolean v0, p0, Louc;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Louc;->E()Ltl5$a;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v1

    invoke-static {v0, v1}, Lcxc;->y0(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Laa5;

    move-result-object v1

    const-string v2, "continuation"

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Laa5;->h(Ljava/lang/String;Ljava/lang/String;)Laa5;

    move-result-object p1

    invoke-virtual {p1}, Laa5;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ltc5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "next"

    invoke-static {v1, p1, v0}, Lcxc;->I(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Louc;->C(Lcom/grack/nanojson/JsonObject;)Ltl5$a;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Page doesn\'t have the continuation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public u()I
    .locals 2

    invoke-virtual {p0}, Lmk3;->a()V

    iget-boolean v0, p0, Louc;->g:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Louc;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "onResponseReceivedEndpoints"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "reloadContinuationItemsCommand"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "continuationItems"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "commentsHeaderRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "countText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v1, "Unable to get comments count"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public v()Z
    .locals 0

    iget-boolean p0, p0, Louc;->g:Z

    return p0
.end method
