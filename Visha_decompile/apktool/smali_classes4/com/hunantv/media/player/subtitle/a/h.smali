.class Lcom/hunantv/media/player/subtitle/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/subtitle/a/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/hunantv/media/player/subtitle/a/h$a;

.field private b:Lcom/hunantv/media/player/subtitle/a/b;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/hunantv/media/player/subtitle/a/g;

.field private e:Ljava/lang/String;

.field private final f:Lcom/hunantv/media/player/subtitle/a/h$a;

.field private final g:Lcom/hunantv/media/player/subtitle/a/h$a;

.field private final h:Lcom/hunantv/media/player/subtitle/a/h$a;

.field private final i:Lcom/hunantv/media/player/subtitle/a/h$a;

.field private final j:Lcom/hunantv/media/player/subtitle/a/h$a;

.field private final k:Lcom/hunantv/media/player/subtitle/a/h$a;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/a/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hunantv/media/player/subtitle/a/h$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/subtitle/a/h$1;-><init>(Lcom/hunantv/media/player/subtitle/a/h;)V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->f:Lcom/hunantv/media/player/subtitle/a/h$a;

    new-instance v0, Lcom/hunantv/media/player/subtitle/a/h$2;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/subtitle/a/h$2;-><init>(Lcom/hunantv/media/player/subtitle/a/h;)V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->g:Lcom/hunantv/media/player/subtitle/a/h$a;

    new-instance v1, Lcom/hunantv/media/player/subtitle/a/h$3;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/subtitle/a/h$3;-><init>(Lcom/hunantv/media/player/subtitle/a/h;)V

    iput-object v1, p0, Lcom/hunantv/media/player/subtitle/a/h;->h:Lcom/hunantv/media/player/subtitle/a/h$a;

    new-instance v1, Lcom/hunantv/media/player/subtitle/a/h$4;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/subtitle/a/h$4;-><init>(Lcom/hunantv/media/player/subtitle/a/h;)V

    iput-object v1, p0, Lcom/hunantv/media/player/subtitle/a/h;->i:Lcom/hunantv/media/player/subtitle/a/h$a;

    new-instance v1, Lcom/hunantv/media/player/subtitle/a/h$5;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/subtitle/a/h$5;-><init>(Lcom/hunantv/media/player/subtitle/a/h;)V

    iput-object v1, p0, Lcom/hunantv/media/player/subtitle/a/h;->j:Lcom/hunantv/media/player/subtitle/a/h$a;

    new-instance v1, Lcom/hunantv/media/player/subtitle/a/h$6;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/subtitle/a/h$6;-><init>(Lcom/hunantv/media/player/subtitle/a/h;)V

    iput-object v1, p0, Lcom/hunantv/media/player/subtitle/a/h;->k:Lcom/hunantv/media/player/subtitle/a/h$a;

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->a:Lcom/hunantv/media/player/subtitle/a/h$a;

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h;->d:Lcom/hunantv/media/player/subtitle/a/g;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h;->c:Ljava/util/Vector;

    return-void
.end method

.method public static a(Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".*[^0-9.].*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "is out of range"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "is not a number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "contains an invalid character"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "does not end in %"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/a/h;Lcom/hunantv/media/player/subtitle/a/b;)Lcom/hunantv/media/player/subtitle/a/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h;->b:Lcom/hunantv/media/player/subtitle/a/b;

    return-object p1
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h;->f:Lcom/hunantv/media/player/subtitle/a/h$a;

    return-object p0
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/a/h;Lcom/hunantv/media/player/subtitle/a/h$a;)Lcom/hunantv/media/player/subtitle/a/h$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h;->a:Lcom/hunantv/media/player/subtitle/a/h$a;

    return-object p1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 9

    .line 5
    const-wide/32 v0, 0x36ee80

    div-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0xea60

    div-long v1, p0, v1

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v5, 0x3e8

    div-long v7, p0, v5

    rem-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    rem-long/2addr p0, v5

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d:%02d:%02d.%03d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/a/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/subtitle/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/subtitle/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/hunantv/media/player/subtitle/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".*[^0-9].*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "is out of range"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "is not a number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "contains an invalid character"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "does not end in %"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h;->h:Lcom/hunantv/media/player/subtitle/a/h$a;

    return-object p0
.end method

.method public static c(Ljava/lang/String;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    const-string v0, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\\."

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const-wide/16 v3, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v5, v1, v0

    const-wide/16 v6, 0x3c

    mul-long/2addr v3, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v3, v0

    return-wide v3

    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "has invalid format"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h;->i:Lcom/hunantv/media/player/subtitle/a/h$a;

    return-object p0
.end method

.method public static synthetic d(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h;->j:Lcom/hunantv/media/player/subtitle/a/h$a;

    return-object p0
.end method

.method public static synthetic e(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h;->a:Lcom/hunantv/media/player/subtitle/a/h$a;

    return-object p0
.end method

.method public static synthetic f(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/g;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h;->d:Lcom/hunantv/media/player/subtitle/a/g;

    return-object p0
.end method

.method public static synthetic g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h;->b:Lcom/hunantv/media/player/subtitle/a/b;

    return-object p0
.end method

.method public static synthetic h(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h;->k:Lcom/hunantv/media/player/subtitle/a/h$a;

    return-object p0
.end method

.method public static synthetic i(Lcom/hunantv/media/player/subtitle/a/h;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h;->c:Ljava/util/Vector;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->a:Lcom/hunantv/media/player/subtitle/a/h$a;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/subtitle/a/h$a;->a(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/a/h;->b()V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->g:Lcom/hunantv/media/player/subtitle/a/h$a;

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->a:Lcom/hunantv/media/player/subtitle/a/h$a;

    return-void
.end method

.method public b()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->b:Lcom/hunantv/media/player/subtitle/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->b:Lcom/hunantv/media/player/subtitle/a/b;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/h;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/hunantv/media/player/subtitle/a/b;->p:[Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->c:Ljava/util/Vector;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/h;->b:Lcom/hunantv/media/player/subtitle/a/b;

    iget-object v1, v1, Lcom/hunantv/media/player/subtitle/a/b;->p:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->d:Lcom/hunantv/media/player/subtitle/a/g;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/h;->b:Lcom/hunantv/media/player/subtitle/a/b;

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/subtitle/a/g;->a(Lcom/hunantv/media/player/subtitle/a/b;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h;->b:Lcom/hunantv/media/player/subtitle/a/b;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0000"

    const-string v2, "\ufffd"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v3, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    const-string v4, "[\r\n]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_1
    array-length v4, v3

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/hunantv/media/player/subtitle/a/h;->a:Lcom/hunantv/media/player/subtitle/a/h$a;

    aget-object v5, v3, v2

    invoke-interface {v4, v5}, Lcom/hunantv/media/player/subtitle/a/h$a;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    array-length v2, v3

    sub-int/2addr v2, v1

    aget-object v1, v3, v2

    iput-object v1, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h;->e:Ljava/lang/String;

    :cond_2
    return-void
.end method
