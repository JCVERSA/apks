.class public final Lqxc;
.super Lem5;
.source "SourceFile"


# static fields
.field public static final a:Lqxc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqxc;

    invoke-direct {v0}, Lqxc;-><init>()V

    sput-object v0, Lqxc;->a:Lqxc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lem5;-><init>()V

    return-void
.end method

.method public static r()Lqxc;
    .locals 1

    sget-object v0, Lqxc;->a:Lqxc;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 0

    invoke-virtual {p0, p1}, Lqxc;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->x(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->l(Ljava/net/URL;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p0}, Lcxc;->l0(Ljava/net/URL;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcxc;->c0(Ljava/net/URL;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/watch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/playlist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "the url given is neither a video nor a playlist URL"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    const-string p1, "list"

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "[a-zA-Z0-9_-]{10,}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcxc;->f0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "v"

    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    const-string p1, "Channel Mix without a video id are not supported"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-object p1

    :cond_5
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "the list-ID given in the URL does not match the list pattern"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "the URL given does not include a playlist"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "the url given is not a YouTube-URL"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error could not parse URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public i(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lqxc;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->x(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const-string v1, "list"

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcxc;->h0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "v"

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {v1}, Lcxc;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.youtube.com/watch?v="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&list="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    new-instance v2, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-direct {v2, p1, p0, v1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    return-object p0

    :goto_1
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error could not parse URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "https://www.youtube.com/playlist?list="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
