.class public final Lat9;
.super Lem5;
.source "SourceFile"


# static fields
.field public static final a:Lat9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lat9;

    invoke-direct {v0}, Lat9;-><init>()V

    sput-object v0, Lat9;->a:Lat9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lem5;-><init>()V

    return-void
.end method

.method public static r()Lat9;
    .locals 1

    sget-object v0, Lat9;->a:Lat9;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "^https?://(www\\.|m\\.)?soundcloud.com/charts(/top)?/?([#?].*)?$"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Top 50"

    return-object p0

    :cond_0
    const-string p0, "New & hot"

    return-object p0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "^https?://(www\\.|m\\.)?soundcloud.com/charts(/top|/new)?/?([#?].*)?$"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "Top 50"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "https://soundcloud.com/charts/top"

    return-object p0

    :cond_0
    const-string p0, "https://soundcloud.com/charts/new"

    return-object p0
.end method
