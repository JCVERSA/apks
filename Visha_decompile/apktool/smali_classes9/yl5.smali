.class public abstract Lyl5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-static {v0, v1, v2}, Lul5;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyl5;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lorg/schabi/newpipe/extractor/stream/VideoStream;)I
    .locals 0

    invoke-static {p0}, Lyl5;->d(Lorg/schabi/newpipe/extractor/stream/VideoStream;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lyl5;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string v0, ""

    const-string v1, "[^\\d.]"

    const-string v2, "1"

    const-string v3, "0p\\d+$"

    :try_start_0
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p0, p1

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic d(Lorg/schabi/newpipe/extractor/stream/VideoStream;)I
    .locals 1

    sget-object v0, Lyl5;->a:Ljava/util/List;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/util/List;Z)Ljava/util/List;
    .locals 2

    new-instance v0, Lvl5;

    invoke-direct {v0}, Lvl5;-><init>()V

    new-instance v1, Lwl5;

    invoke-direct {v1}, Lwl5;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lxl5;

    invoke-direct {v1}, Lxl5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Comparator;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method
