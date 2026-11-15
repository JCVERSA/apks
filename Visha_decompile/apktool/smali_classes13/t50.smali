.class public final Lt50;
.super Lem5;
.source "SourceFile"


# static fields
.field public static final a:Lt50;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt50;

    invoke-direct {v0}, Lt50;-><init>()V

    sput-object v0, Lt50;->a:Lt50;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lem5;-><init>()V

    return-void
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "albums"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tracks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "/track"

    return-object p0

    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/UnsupportedTabException;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/UnsupportedTabException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "/album"

    return-object p0
.end method


# virtual methods
.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lr50;->r()Lr50;

    move-result-object p0

    invoke-virtual {p0, p1}, Lr50;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lr50;->r()Lr50;

    move-result-object p0

    invoke-virtual {p0, p1}, Lr50;->i(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lr50;->r()Lr50;

    move-result-object p0

    invoke-virtual {p0, p1}, Lem5;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lt50;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
