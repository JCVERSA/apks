.class public abstract Lorg/schabi/newpipe/extractor/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lc23;

.field public static b:Lorg/schabi/newpipe/extractor/localization/Localization;

.field public static c:Lorg/schabi/newpipe/extractor/localization/ContentCountry;


# direct methods
.method public static synthetic a(I)Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/a;->j(I)Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ILorg/schabi/newpipe/extractor/StreamingService;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/a;->i(ILorg/schabi/newpipe/extractor/StreamingService;)Z

    move-result p0

    return p0
.end method

.method public static c()Lc23;
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/a;->a:Lc23;

    return-object v0
.end method

.method public static d()Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/a;->c:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    if-nez v0, :cond_0

    sget-object v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    :cond_0
    return-object v0
.end method

.method public static e()Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/a;->b:Lorg/schabi/newpipe/extractor/localization/Localization;

    if-nez v0, :cond_0

    sget-object v0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    :cond_0
    return-object v0
.end method

.method public static f(I)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 2

    invoke-static {}, Lce9;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ll07;

    invoke-direct {v1, p0}, Ll07;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lm07;

    invoke-direct {v1, p0}, Lm07;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/StreamingService;

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 4

    invoke-static {}, Lce9;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/extractor/StreamingService;->k(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    move-result-object v2

    sget-object v3, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No service can handle the url = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Lc23;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V
    .locals 0

    sput-object p0, Lorg/schabi/newpipe/extractor/a;->a:Lc23;

    sput-object p1, Lorg/schabi/newpipe/extractor/a;->b:Lorg/schabi/newpipe/extractor/localization/Localization;

    sput-object p2, Lorg/schabi/newpipe/extractor/a;->c:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    return-void
.end method

.method public static synthetic i(ILorg/schabi/newpipe/extractor/StreamingService;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->q()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(I)Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
    .locals 3

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There\'s no service with the id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
