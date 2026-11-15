.class public final Lzz7;
.super Lil5;
.source "SourceFile"


# static fields
.field public static final a:Lzz7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzz7;

    invoke-direct {v0}, Lzz7;-><init>()V

    sput-object v0, Lzz7;->a:Lzz7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lil5;-><init>()V

    return-void
.end method

.method public static j()Lzz7;
    .locals 1

    sget-object v0, Lzz7;->a:Lzz7;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "(/w/|(/videos/(watch/|embed/)?))(?!p/)([^/?&#]*)"

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/extractor/utils/Parser;->m(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lce9;->d:Ltz7;

    invoke-virtual {v0}, Ltz7;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lzz7;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/videos/watch/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "/playlist/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lzz7;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method
