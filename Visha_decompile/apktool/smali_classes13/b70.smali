.class public Lb70;
.super Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-void
.end method

.method public static synthetic A(Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;
    .locals 0

    invoke-static {p0}, Lb70;->C(Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;
    .locals 1

    const-string v0, "itemtype"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;
    .locals 1

    const-string v0, "li"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->H0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lb70;->B(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public q(Lc23;)V
    .locals 0

    return-void
.end method

.method public r()Ltl5$a;
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lb70;->t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;

    move-result-object p0

    return-object p0
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lls6;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v4

    invoke-direct {v3, v4}, Lls6;-><init>(I)V

    invoke-virtual {p0}, Lmk3;->f()Lc23;

    move-result-object p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvc5;->a(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    const-string v4, "searchresult"

    invoke-virtual {p0, v4}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    const-string v7, "result-info"

    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Ly60;

    invoke-direct {v8}, Ly60;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lu60;

    invoke-direct {v8}, Lu60;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_1
    move v7, v1

    goto :goto_2

    :sswitch_0
    const-string v8, "ARTIST"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_1
    const-string v8, "TRACK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v2

    goto :goto_2

    :sswitch_2
    const-string v8, "ALBUM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_2
    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v6, Lq50;

    invoke-direct {v6, v5}, Lq50;-><init>(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v3, v6}, Lyz4;->d(Lxz4;)V

    goto :goto_0

    :pswitch_1
    new-instance v7, Lc70;

    invoke-direct {v7, v5, v6}, Lc70;-><init>(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lyz4;->d(Lxz4;)V

    goto :goto_0

    :pswitch_2
    new-instance v6, Lo60;

    invoke-direct {v6, v5}, Lo60;-><init>(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v3, v6}, Lyz4;->d(Lxz4;)V

    goto :goto_0

    :cond_3
    const-string v4, "pagelist"

    invoke-virtual {p0, v4}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance p0, Ltl5$a;

    invoke-direct {p0, v3, v6}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v4, Lz60;

    invoke-direct {v4}, Lz60;-><init>()V

    invoke-interface {p0, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v4, La70;

    invoke-direct {v4}, La70;-><init>()V

    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/select/Elements;

    move v4, v0

    :goto_3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {p0, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    const-string v7, "span"

    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->H0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v1, v4, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v4, v2

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    if-ge v1, p0, :cond_7

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/2addr v1, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_7
    new-instance p0, Ltl5$a;

    new-instance p1, Lorg/schabi/newpipe/extractor/Page;

    invoke-direct {p1, v6}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x3b7864f -> :sswitch_2
        0x4c5f92b -> :sswitch_1
        0x7395d347 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
