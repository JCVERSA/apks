.class public final Ll60;
.super Lem5;
.source "SourceFile"


# static fields
.field public static final a:Ll60;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll60;

    invoke-direct {v0}, Ll60;-><init>()V

    sput-object v0, Ll60;->a:Ll60;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lem5;-><init>()V

    return-void
.end method

.method public static r()Ll60;
    .locals 1

    sget-object v0, Ll60;->a:Ll60;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj60;->m(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "https://bandcamp.com/api/bcweekly/3/list"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "https://bandcamp.com/api/mobile/24/bootstrap_data"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Featured"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "Radio"

    return-object p0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "https://bandcamp.com/api/mobile/24/bootstrap_data"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "https://bandcamp.com/api/bcweekly/3/list"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lj60;->m(Ljava/lang/String;)Z

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

.method public p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "Featured"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "https://bandcamp.com/api/mobile/24/bootstrap_data"

    return-object p0

    :cond_0
    const-string p0, "Radio"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "https://bandcamp.com/api/bcweekly/3/list"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
