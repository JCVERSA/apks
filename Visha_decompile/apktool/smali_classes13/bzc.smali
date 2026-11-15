.class public Lbzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpy9;


# static fields
.field public static final e:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lcom/grack/nanojson/JsonObject;

.field public final b:Lona;

.field public c:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public d:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([\\d,]+) views$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbzc;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lona;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    return-void
.end method

.method public static synthetic B(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lbzc;->K(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic C(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    invoke-static {p0}, Lbzc;->L(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    invoke-static {p0}, Lbzc;->J(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic J(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic K(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic L(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final E()Ljava/time/OffsetDateTime;
    .locals 3

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "upcomingEventData"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "startTime"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v1}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse date from premiere: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final F()J
    .locals 2

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "accessibilityData"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "label"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no views"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget-object v0, Lbzc;->e:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->p(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final G(Ljava/lang/String;Z)J
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "no views"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "recommended"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->r(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final H()Z
    .locals 2

    iget-object v0, p0, Lbzc;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "upcomingEventData"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbzc;->d:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lbzc;->d:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final I()Z
    .locals 3

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "badges"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "metadataBadgeRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "longBylineText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "runs"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v3, "navigationEndpoint"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->P(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v4, "ownerText"

    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->P(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "shortBylineText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->P(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get uploader url"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "longBylineText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "ownerText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "shortBylineText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get uploader name"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "ownerBadges"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lcxc;->d0(Lcom/grack/nanojson/JsonArray;)Z

    move-result p0

    return p0
.end method

.method public e()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "channelThumbnailSupportedRenderers"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "channelThumbnailSupportedRenderers.channelThumbnailWithLinkRenderer.thumbnail.thumbnails"

    invoke-static {p0, v0}, Loc5;->a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lcxc;->F(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "channelThumbnail"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "channelThumbnail.thumbnails"

    invoke-static {p0, v0}, Loc5;->a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lcxc;->F(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lbzc;->u()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lbzc;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "yyyy-MM-dd HH:mm"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lbzc;->E()Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v2, "publishedTimeText"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v3, "videoInfo"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "runs"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public g()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 2

    invoke-virtual {p0}, Lbzc;->u()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lbzc;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-virtual {p0}, Lbzc;->E()Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lbzc;->f()Ljava/lang/String;

    return-object v1
.end method

.method public getDuration()J
    .locals 6

    invoke-virtual {p0}, Lbzc;->u()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-wide/16 v2, -0x1

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "lengthText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "lengthSeconds"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v4, "thumbnailOverlays"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lw50;

    const-class v5, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v4, v5}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lx50;

    invoke-direct {v4, v5}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lyyc;

    invoke-direct {v4}, Lyyc;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonObject;

    if-eqz v1, :cond_1

    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lbzc;->H()Z

    move-result p0

    if-eqz p0, :cond_2

    return-wide v2

    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get duration"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {v0}, Lcxc;->x0(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get name"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "videoId"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ldzc;->m()Ldzc;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldzc;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get url"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-static {p0}, Lcxc;->O(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public s()Z
    .locals 2

    invoke-virtual {p0}, Lbzc;->I()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbzc;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Private video]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbzc;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[Deleted video]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public t()Z
    .locals 7

    const-string v0, ""

    const-class v1, Lcom/grack/nanojson/JsonObject;

    const-string v2, "navigationEndpoint"

    :try_start_0
    iget-object v3, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v3, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "commandMetadata"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "webCommandMetadata"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "webPageType"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    const-string v4, "WEB_PAGE_TYPE_SHORTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    move v3, v5

    :goto_0
    if-nez v3, :cond_1

    iget-object v3, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v3, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "reelWatchEndpoint"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    :cond_1
    if-nez v3, :cond_4

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v2, "thumbnailOverlays"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lw50;

    invoke-direct {v2, v1}, Lw50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lx50;

    invoke-direct {v2, v1}, Lx50;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lzyc;

    invoke-direct {v1}, Lzyc;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lazc;

    invoke-direct {v1}, Lazc;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->o(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "style"

    invoke-virtual {p0, v1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHORTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "iconType"

    invoke-virtual {p0, v1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "shorts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    :cond_2
    move v5, v6

    :cond_3
    move v3, v5

    :cond_4
    return v3

    :goto_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not determine if this is short-form content"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public u()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 5

    iget-object v0, p0, Lbzc;->c:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "badges"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "style"

    const-string v3, ""

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/grack/nanojson/JsonObject;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    const-string v4, "metadataBadgeRenderer"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BADGE_STYLE_TYPE_LIVE_NOW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "label"

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIVE NOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iput-object v0, p0, Lbzc;->c:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0

    :cond_4
    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "thumbnailOverlays"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/grack/nanojson/JsonObject;

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    const-string v4, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "LIVE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iput-object v0, p0, Lbzc;->c:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0

    :cond_7
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iput-object v0, p0, Lbzc;->c:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "detailedMetadataSnippets"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "snippetText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v1, "descriptionSnippet"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public w()J
    .locals 6

    invoke-virtual {p0}, Lbzc;->I()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lbzc;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v3, "viewCountText"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {p0, v0, v4}, Lbzc;->G(Ljava/lang/String;Z)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_1
    invoke-virtual {p0}, Lbzc;->u()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v3, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq v0, v3, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lbzc;->F()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    :catch_1
    :cond_2
    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v3, "videoInfo"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    :try_start_2
    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v3, "runs"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v3, "text"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lbzc;->G(Ljava/lang/String;Z)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-wide v0

    :catch_2
    :cond_3
    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    const-string v3, "shortViewCountText"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_3
    iget-object v0, p0, Lbzc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcxc;->L(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v0, v5}, Lbzc;->G(Ljava/lang/String;Z)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-wide v0

    :catch_3
    :cond_4
    :goto_0
    return-wide v1
.end method
