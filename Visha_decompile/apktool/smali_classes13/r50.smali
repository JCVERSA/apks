.class public final Lr50;
.super Lem5;
.source "SourceFile"


# static fields
.field public static final a:Lr50;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr50;

    invoke-direct {v0}, Lr50;-><init>()V

    sput-object v0, Lr50;->a:Lr50;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lem5;-><init>()V

    return-void
.end method

.method public static r()Lr50;
    .locals 1

    sget-object v0, Lr50;->a:Lr50;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->c()Lc23;

    move-result-object p0

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc23;->b(Ljava/lang/String;)Lfu8;

    move-result-object p0

    invoke-virtual {p0}, Lfu8;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, "data-band"

    invoke-static {p0, p1}, Loc5;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "id"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Download failed"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public i(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    array-length v0, p1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    aget-object v0, p1, v3

    const-string v1, "releases"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, p1, v3

    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, p1, v3

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, p1, v3

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x2

    aget-object p1, p1, v0

    const-string v0, "daily.bandcamp.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    invoke-static {p0}, Lj60;->l(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lj60;->e(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string p1, "error"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "bandcamp_url"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "JSON does not contain a channel URL (invalid id?) or is otherwise invalid"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
