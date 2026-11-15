.class public Lqt9;
.super Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.source "SourceFile"


# instance fields
.field public g:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-void
.end method

.method public static synthetic A(I)I
    .locals 0

    invoke-static {p0}, Lqt9;->F(I)I

    move-result p0

    return p0
.end method

.method public static synthetic E(I)I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public static synthetic F(I)I
    .locals 0

    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static synthetic z(I)I
    .locals 0

    invoke-static {p0}, Lqt9;->E(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final B(Lcom/grack/nanojson/JsonArray;)Lyz4;
    .locals 4

    new-instance v0, Lls6;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result p0

    invoke-direct {v0, p0}, Lls6;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/grack/nanojson/JsonObject;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    const-string v1, "kind"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "playlist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "track"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "user"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lmt9;

    invoke-direct {v1, p1}, Lmt9;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {v0, v1}, Lyz4;->d(Lxz4;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lvt9;

    invoke-direct {v1, p1}, Lvt9;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {v0, v1}, Lyz4;->d(Lxz4;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lvs9;

    invoke-direct {v1, p1}, Lvs9;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {v0, v1}, Lyz4;->d(Lxz4;)V

    goto :goto_0

    :cond_4
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x36ebcb -> :sswitch_2
        0x697f14b -> :sswitch_1
        0x700681d2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final C(Ljava/lang/String;Ljava/util/function/IntUnaryOperator;)Lorg/schabi/newpipe/extractor/Page;
    .locals 3

    invoke-virtual {p0, p1}, Lqt9;->D(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final D(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "offset"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get offset from page URL"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public q(Lc23;)V
    .locals 2

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object p1

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc23;->e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    iput-object p1, p0, Lqt9;->g:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "collection"

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/search/SearchExtractor$NothingFoundException;

    const-string p1, "Nothing found"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/search/SearchExtractor$NothingFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json response"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public r()Ltl5$a;
    .locals 4

    iget-object v0, p0, Lqt9;->g:Lcom/grack/nanojson/JsonObject;

    const-string v1, "total_results"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "collection"

    if-le v0, v1, :cond_0

    new-instance v0, Ltl5$a;

    iget-object v1, p0, Lqt9;->g:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lqt9;->B(Lcom/grack/nanojson/JsonArray;)Lyz4;

    move-result-object v1

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lpt9;

    invoke-direct {v3}, Lpt9;-><init>()V

    invoke-virtual {p0, v2, v3}, Lqt9;->C(Ljava/lang/String;Ljava/util/function/IntUnaryOperator;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0

    :cond_0
    new-instance v0, Ltl5$a;

    iget-object v1, p0, Lqt9;->g:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lqt9;->B(Lcom/grack/nanojson/JsonArray;)Lyz4;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc23;->e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object v0

    invoke-virtual {v0}, Lfu8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/grack/nanojson/a;->d()Lcom/grack/nanojson/a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "collection"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    const-string v2, "total_results"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lqt9;->D(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    if-ge v2, v0, :cond_0

    new-instance v0, Ltl5$a;

    invoke-virtual {p0, v1}, Lqt9;->B(Lcom/grack/nanojson/JsonArray;)Lyz4;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lot9;

    invoke-direct {v2}, Lot9;-><init>()V

    invoke-virtual {p0, p1, v2}, Lqt9;->C(Ljava/lang/String;Ljava/util/function/IntUnaryOperator;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v0

    :cond_0
    new-instance p1, Ltl5$a;

    invoke-virtual {p0, v1}, Lqt9;->B(Lcom/grack/nanojson/JsonArray;)Lyz4;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json response"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Page doesn\'t contain an URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public v()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
