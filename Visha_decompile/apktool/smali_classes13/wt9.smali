.class public final Lwt9;
.super Lil5;
.source "SourceFile"


# static fields
.field public static final a:Lwt9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwt9;

    invoke-direct {v0}, Lwt9;-><init>()V

    sput-object v0, Lwt9;->a:Lwt9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lil5;-><init>()V

    return-void
.end method

.method public static j()Lwt9;
    .locals 1

    sget-object v0, Lwt9;->a:Lwt9;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "^https?://api-v2\\.soundcloud.com/(tracks|albums|sets|reposts|followers|following)/([0-9a-z_-]+)/"

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "^https?://(www\\.|m\\.|on\\.)?soundcloud.com/[0-9a-z_-]+/(?!(tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?([#?].*)?$"

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljt9;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://api.soundcloud.com/tracks/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljt9;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public i(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "^https?://(www\\.|m\\.|on\\.)?soundcloud.com/[0-9a-z_-]+/(?!(tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?([#?].*)?$"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
