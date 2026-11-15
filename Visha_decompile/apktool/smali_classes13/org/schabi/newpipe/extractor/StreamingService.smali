.class public abstract Lorg/schabi/newpipe/extractor/StreamingService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/StreamingService$LinkType;,
        Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/schabi/newpipe/extractor/StreamingService;->a:I

    new-instance p1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/StreamingService;->b:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lus0;
    .locals 1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->c()Lem5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->b(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lus0;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lus0;
.end method

.method public abstract c()Lem5;
.end method

.method public abstract d(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
.end method

.method public e(Ljava/lang/String;)Lea1;
    .locals 1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->g()Lem5;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->f(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lea1;

    move-result-object p0

    return-object p0
.end method

.method public abstract f(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lea1;
.end method

.method public abstract g()Lem5;
.end method

.method public h()Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .locals 1

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->d()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->v()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lrp3;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract j()Ljg5;
.end method

.method public final k(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;
    .locals 2

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->u()Lil5;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->c()Lem5;

    move-result-object v1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->o()Lem5;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lil5;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lil5;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->CHANNEL:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lil5;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->PLAYLIST:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    return-object p0
.end method

.method public l()Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 4

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->e()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->w()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/localization/Localization;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    sget-object p0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/a;
    .locals 1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->o()Lem5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->n(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/playlist/a;

    move-result-object p0

    return-object p0
.end method

.method public abstract n(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/playlist/a;
.end method

.method public abstract o()Lem5;
.end method

.method public abstract p(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.end method

.method public final q()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->a:I

    return p0
.end method

.method public r()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->b:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->u()Lil5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lil5;->d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->t(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    move-result-object p0

    return-object p0
.end method

.method public abstract t(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->a:I

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->b:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract u()Lil5;
.end method

.method public v()Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public w()Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public x(Lorg/schabi/newpipe/extractor/localization/Localization;)Lona;
    .locals 2

    invoke-static {p1}, Lpna;->b(Lorg/schabi/newpipe/extractor/localization/Localization;)Lona;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lorg/schabi/newpipe/extractor/localization/Localization;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lpna;->b(Lorg/schabi/newpipe/extractor/localization/Localization;)Lona;

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Localization is not supported (\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
