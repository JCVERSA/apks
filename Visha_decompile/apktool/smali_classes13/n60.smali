.class public Ln60;
.super Lorg/schabi/newpipe/extractor/playlist/a;
.source "SourceFile"


# instance fields
.field public g:Lorg/jsoup/nodes/Document;

.field public h:Lcom/grack/nanojson/JsonObject;

.field public i:Lcom/grack/nanojson/JsonArray;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/playlist/a;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method public static synthetic F(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ln60;->G(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 1

    const-string v0, "src"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Ln60;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "art_id"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Ln60;->h:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-static {v0, v1, p0}, Lj60;->h(JZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public C()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Ln60;->g:Lorg/jsoup/nodes/Document;

    const-string v0, "band-photo"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lm60;

    invoke-direct {v0}, Lm60;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lj60;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Ln60;->h:Lcom/grack/nanojson/JsonObject;

    const-string v0, "artist"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public E()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aget-object p0, p0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln60;->j:Ljava/lang/String;

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 2

    invoke-virtual {p0}, Ltl5;->s()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvc5;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    iput-object v0, p0, Ln60;->g:Lorg/jsoup/nodes/Document;

    invoke-static {p1}, Lk70;->g0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Ln60;->h:Lcom/grack/nanojson/JsonObject;

    const-string v1, "trackinfo"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Ln60;->i:Lcom/grack/nanojson/JsonArray;

    :try_start_0
    const-string v0, "data-embed"

    invoke-static {p1, v0}, Loc5;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "album_title"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln60;->j:Ljava/lang/String;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Ln60;->i:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    const-string p1, "Album needs to be purchased"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "JSON does not exist"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Faulty JSON; page likely does not contain album data"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public r()Ltl5$a;
    .locals 6

    new-instance v0, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lqy9;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ln60;->i:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ln60;->i:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    iget-object v3, p0, Ln60;->i:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    new-instance v3, Lr60;

    invoke-virtual {p0}, Ln60;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lmk3;->m()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lr60;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;)V

    invoke-virtual {v0, v3}, Lqy9;->h(Lpy9;)V

    goto :goto_1

    :cond_0
    new-instance v3, Lr60;

    invoke-virtual {p0}, Ln60;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ln60;->B()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lr60;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lqy9;->h(Lpy9;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ltl5$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public v()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 4

    iget-object v0, p0, Ln60;->g:Lorg/jsoup/nodes/Document;

    const-string v1, "trackInfo"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->D0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "tralbum-about"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    const-string v2, "tralbum-credits"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    iget-object p0, p0, Ln60;->g:Lorg/jsoup/nodes/Document;

    const-string v2, "license"

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/Element;->D0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p0, :cond_0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->L0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->L0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->L0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_4
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not find trackInfo in document"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public x()J
    .locals 2

    iget-object p0, p0, Ln60;->i:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method
