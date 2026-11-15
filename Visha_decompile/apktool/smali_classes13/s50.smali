.class public Ls50;
.super Lfu0;
.source "SourceFile"


# instance fields
.field public g:Lcom/grack/nanojson/JsonArray;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lfu0;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "albums"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "tracks"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "track"

    iput-object p1, p0, Ls50;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported channel tab: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "album"

    iput-object p1, p0, Ls50;->h:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static u(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonArray;)Ls50;
    .locals 1

    new-instance v0, Ls50;

    invoke-direct {v0, p0, p1}, Ls50;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    iput-object p2, v0, Ls50;->g:Lcom/grack/nanojson/JsonArray;

    return-object v0
.end method


# virtual methods
.method public q(Lc23;)V
    .locals 1

    iget-object p1, p0, Ls50;->g:Lcom/grack/nanojson/JsonArray;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj60;->e(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v0, "discography"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    iput-object p1, p0, Ls50;->g:Lcom/grack/nanojson/JsonArray;

    :cond_0
    return-void
.end method

.method public r()Ltl5$a;
    .locals 5

    new-instance v0, Lls6;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lls6;-><init>(I)V

    iget-object v1, p0, Ls50;->g:Lcom/grack/nanojson/JsonArray;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/grack/nanojson/JsonObject;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    check-cast v2, Lcom/grack/nanojson/JsonObject;

    const-string v3, "item_type"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ls50;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "album"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "track"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Le60;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Le60;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lyz4;->d(Lxz4;)V

    goto :goto_0

    :cond_3
    new-instance v3, Lj50;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lj50;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lyz4;->d(Lxz4;)V

    goto :goto_0

    :cond_4
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
