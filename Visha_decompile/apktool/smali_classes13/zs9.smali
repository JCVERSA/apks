.class public Lzs9;
.super Lig5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lig5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lig5;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Lc23;)V
    .locals 0

    return-void
.end method

.method public r()Ltl5$a;
    .locals 4

    new-instance v0, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    invoke-direct {v0, v1}, Lqy9;-><init>(I)V

    invoke-static {}, Ljt9;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api-v2.soundcloud.com/charts?genre=soundcloud:genres:all-music&client_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lig5;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Top 50"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&kind=top"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&kind=trending"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object v2, Lce9;->b:Lst9;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->h()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v2

    invoke-virtual {p0}, Lmk3;->m()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->v()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&region=soundcloud:regions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    move-object p0, v1

    :cond_2
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0, p0, v2}, Ljt9;->l(Lqy9;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {v0, v1, v2}, Ljt9;->l(Lqy9;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :goto_2
    new-instance v1, Ltl5$a;

    new-instance v2, Lorg/schabi/newpipe/extractor/Page;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1
.end method

.method public t(Lorg/schabi/newpipe/extractor/Page;)Ltl5$a;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lqy9;

    invoke-virtual {p0}, Lmk3;->n()I

    move-result p0

    invoke-direct {v0, p0}, Lqy9;-><init>(I)V

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {v0, p0, p1}, Ljt9;->l(Lqy9;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ltl5$a;

    new-instance v1, Lorg/schabi/newpipe/extractor/Page;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Ltl5$a;-><init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Page doesn\'t contain an URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
