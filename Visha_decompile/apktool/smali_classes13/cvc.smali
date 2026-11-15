.class public Lcvc;
.super Lrp3;
.source "SourceFile"


# instance fields
.field public g:Lorg/jsoup/nodes/Document;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrp3;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcvc;->p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://www.youtube.com/channel/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcvc;->g:Lorg/jsoup/nodes/Document;

    const-string v0, "feed > author > name"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->h1(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->n1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcvc;->g:Lorg/jsoup/nodes/Document;

    const-string v1, "feed > author > uri"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->h1(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->n1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcvc;->g:Lorg/jsoup/nodes/Document;

    const-string v0, "feed > link[rel*=alternate]"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->h1(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "href"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public q(Lc23;)V
    .locals 2

    invoke-virtual {p0}, Ltl5;->s()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcxc;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p1

    invoke-virtual {p1}, Lfu8;->d()I

    move-result v0

    const/16 v1, 0x194

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lfu8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvc5;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    iput-object p1, p0, Lcvc;->g:Lorg/jsoup/nodes/Document;

    return-void

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const-string p1, "Could not get feed: 404 - not found"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public r()Ltl5$a;
    .locals 3

    iget-object v0, p0, Lcvc;->g:Lorg/jsoup/nodes/Document;

    const-string v1, "feed > entry"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->h1(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    new-instance v1, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result p0

    invoke-direct {v1, p0}, Lqy9;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    new-instance v2, Levc;

    invoke-direct {v2, v0}, Levc;-><init>(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v1, v2}, Lqy9;->h(Lpy9;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ltl5$a;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0
.end method
