.class public final Luzc;
.super Lem5;
.source "SourceFile"


# static fields
.field public static final a:Luzc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Luzc;

    invoke-direct {v0}, Luzc;-><init>()V

    sput-object v0, Luzc;->a:Luzc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lem5;-><init>()V

    return-void
.end method

.method public static r()Luzc;
    .locals 1

    sget-object v0, Luzc;->a:Luzc;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "Trending"

    return-object p0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->x(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->l(Ljava/net/URL;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcxc;->l0(Ljava/net/URL;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcxc;->c0(Ljava/net/URL;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "/feed/trending"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :catch_0
    :cond_1
    return p0
.end method

.method public p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "https://www.youtube.com/feed/trending"

    return-object p0
.end method
