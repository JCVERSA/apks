.class public final Lm70;
.super Lil5;
.source "SourceFile"


# static fields
.field public static final a:Lm70;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm70;

    invoke-direct {v0}, Lm70;-><init>()V

    sput-object v0, Lm70;->a:Lm70;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lil5;-><init>()V

    return-void
.end method

.method public static j()Lm70;
    .locals 1

    sget-object v0, Lm70;->a:Lm70;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lj60;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "bandcamp.com/\\?show="

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lm70;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "\\d+"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://bandcamp.com/?show="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lj60;->m(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "https?://.+\\..+/track/.+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p1}, Lj60;->l(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
