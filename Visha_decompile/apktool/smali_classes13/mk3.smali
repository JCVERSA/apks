.class public abstract Lmk3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/schabi/newpipe/extractor/StreamingService;

.field public final b:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

.field public c:Lorg/schabi/newpipe/extractor/localization/Localization;

.field public d:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

.field public e:Z

.field public final f:Lc23;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmk3;->c:Lorg/schabi/newpipe/extractor/localization/Localization;

    iput-object v0, p0, Lmk3;->d:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmk3;->e:Z

    const-string v0, "service is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lmk3;->a:Lorg/schabi/newpipe/extractor/StreamingService;

    const-string p1, "LinkHandler is null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lmk3;->b:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object p1

    const-string p2, "downloader is null"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lmk3;->f:Lc23;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean p0, p0, Lmk3;->e:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Page is not fetched. Make sure you call fetchPage()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lmk3;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmk3;->f:Lc23;

    invoke-virtual {p0, v0}, Lmk3;->q(Lc23;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmk3;->e:Z

    return-void
.end method

.method public c(Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V
    .locals 0

    iput-object p1, p0, Lmk3;->d:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    return-void
.end method

.method public d(Lorg/schabi/newpipe/extractor/localization/Localization;)V
    .locals 0

    iput-object p1, p0, Lmk3;->c:Lorg/schabi/newpipe/extractor/localization/Localization;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmk3;->b:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()Lc23;
    .locals 0

    iget-object p0, p0, Lmk3;->f:Lc23;

    return-object p0
.end method

.method public g()Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .locals 1

    iget-object v0, p0, Lmk3;->d:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmk3;->m()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->h()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public h()Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 1

    iget-object v0, p0, Lmk3;->c:Lorg/schabi/newpipe/extractor/localization/Localization;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmk3;->m()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->l()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmk3;->b:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 0

    iget-object p0, p0, Lmk3;->b:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    return-object p0
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmk3;->b:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public m()Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 0

    iget-object p0, p0, Lmk3;->a:Lorg/schabi/newpipe/extractor/StreamingService;

    return-object p0
.end method

.method public n()I
    .locals 0

    iget-object p0, p0, Lmk3;->a:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->q()I

    move-result p0

    return p0
.end method

.method public o()Lona;
    .locals 1

    invoke-virtual {p0}, Lmk3;->m()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {p0}, Lmk3;->h()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/StreamingService;->x(Lorg/schabi/newpipe/extractor/localization/Localization;)Lona;

    move-result-object p0

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmk3;->b:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract q(Lc23;)V
.end method
