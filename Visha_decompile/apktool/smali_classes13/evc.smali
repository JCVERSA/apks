.class public Levc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpy9;


# instance fields
.field public final a:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Element;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levc;->a:Lorg/jsoup/nodes/Element;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Levc;->a:Lorg/jsoup/nodes/Element;

    const-string v0, "author > uri"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->h1(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->n1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Levc;->a:Lorg/jsoup/nodes/Element;

    const-string v0, "author > name"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->h1(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->n1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Levc;->a:Lorg/jsoup/nodes/Element;

    const-string v0, "published"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->H0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->n1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-virtual {p0}, Levc;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;)V
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p0}, Levc;->f()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse date (\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Levc;->a:Lorg/jsoup/nodes/Element;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->H0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->n1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Levc;->a:Lorg/jsoup/nodes/Element;

    const-string v0, "link"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->H0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "href"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 4

    iget-object p0, p0, Levc;->a:Lorg/jsoup/nodes/Element;

    const-string v0, "media:thumbnail"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->H0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "hqdefault"

    const-string v2, "mqdefault"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    :try_start_0
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v2, v0

    :goto_0
    :try_start_1
    const-string v3, "width"

    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_2
    const/16 v2, 0x140

    const/16 v0, 0xb4

    :catch_1
    :goto_1
    new-instance p0, Lorg/schabi/newpipe/extractor/Image;

    invoke-static {v2}, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->fromHeight(I)Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    invoke-static {p0}, Ldvc;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public s()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public u()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 0

    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object p0
.end method

.method public w()J
    .locals 2

    iget-object p0, p0, Levc;->a:Lorg/jsoup/nodes/Element;

    const-string v0, "media:statistics"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->H0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "views"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
