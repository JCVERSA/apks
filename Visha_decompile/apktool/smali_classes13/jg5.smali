.class public Ljg5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljg5$a;,
        Ljg5$b;
    }
.end annotation


# instance fields
.field public final a:Lorg/schabi/newpipe/extractor/StreamingService;

.field public final b:Ljava/util/HashMap;

.field public c:Ljava/lang/String;

.field public d:Lorg/schabi/newpipe/extractor/localization/Localization;

.field public e:Lorg/schabi/newpipe/extractor/localization/ContentCountry;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljg5;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Ljg5;->c:Ljava/lang/String;

    iput-object p1, p0, Ljg5;->a:Lorg/schabi/newpipe/extractor/StreamingService;

    return-void
.end method


# virtual methods
.method public a(Ljg5$b;Lem5;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljg5;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Ljg5;->b:Ljava/util/HashMap;

    new-instance v0, Ljg5$a;

    invoke-direct {v0, p1, p2}, Ljg5$a;-><init>(Ljg5$b;Lem5;)V

    invoke-virtual {p0, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Kiosk with type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " already exists."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lig5;
    .locals 1

    iget-object p2, p0, Ljg5;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljg5$a;

    if-eqz p2, :cond_2

    iget-object p3, p2, Ljg5$a;->a:Ljg5$b;

    iget-object v0, p0, Ljg5;->a:Lorg/schabi/newpipe/extractor/StreamingService;

    iget-object p2, p2, Ljg5$a;->b:Lem5;

    invoke-virtual {p2, p1}, Lem5;->j(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p2

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v0, p2, p1}, Ljg5$b;->a(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p1

    iget-object p2, p0, Ljg5;->d:Lorg/schabi/newpipe/extractor/localization/Localization;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lmk3;->d(Lorg/schabi/newpipe/extractor/localization/Localization;)V

    :cond_0
    iget-object p0, p0, Ljg5;->e:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Lmk3;->c(Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V

    :cond_1
    return-object p1

    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No kiosk found with the type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lig5;
    .locals 1

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->e()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljg5;->d(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lig5;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lig5;
    .locals 3

    iget-object v0, p0, Ljg5;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljg5$a;

    iget-object v2, v1, Ljg5$a;->b:Lem5;

    invoke-virtual {v2, p1}, Lil5;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Ljg5$a;->b:Lem5;

    invoke-virtual {v0, p1}, Lil5;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Ljg5;->b(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lig5;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not find a kiosk that fits to the url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljg5;->c:Ljava/lang/String;

    return-void
.end method
