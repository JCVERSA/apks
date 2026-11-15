.class Lcom/hunantv/media/player/subtitle/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/subtitle/a/e$b;,
        Lcom/hunantv/media/player/subtitle/a/e$c;,
        Lcom/hunantv/media/player/subtitle/a/e$a;,
        Lcom/hunantv/media/player/subtitle/a/e$d;
    }
.end annotation


# instance fields
.field private a:Lcom/hunantv/media/player/subtitle/a/e$d;

.field private b:Lcom/hunantv/media/player/subtitle/a/e$d;

.field private c:Lcom/hunantv/media/player/subtitle/a/e$d;

.field private d:Lcom/hunantv/media/player/subtitle/a/e$b;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/a/e$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hunantv/media/player/subtitle/a/e$a;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/subtitle/a/e$a;-><init>(Lcom/hunantv/media/player/subtitle/a/e;)V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e;->b:Lcom/hunantv/media/player/subtitle/a/e$d;

    new-instance v0, Lcom/hunantv/media/player/subtitle/a/e$c;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/subtitle/a/e$c;-><init>(Lcom/hunantv/media/player/subtitle/a/e;)V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e;->c:Lcom/hunantv/media/player/subtitle/a/e$d;

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/a/e;->a()V

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/e;->d:Lcom/hunantv/media/player/subtitle/a/e$b;

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/a/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/hunantv/media/player/subtitle/a/e;->f:I

    return p1
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/a/e;Lcom/hunantv/media/player/subtitle/a/e$d;)Lcom/hunantv/media/player/subtitle/a/e$d;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/e;->a:Lcom/hunantv/media/player/subtitle/a/e$d;

    return-object p1
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/hunantv/media/player/subtitle/a/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hunantv/media/player/subtitle/a/e;->f:I

    return p0
.end method

.method public static synthetic b(Lcom/hunantv/media/player/subtitle/a/e;I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/hunantv/media/player/subtitle/a/e;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/hunantv/media/player/subtitle/a/e;->f:I

    return v0
.end method

.method public static synthetic c(Lcom/hunantv/media/player/subtitle/a/e;)Lcom/hunantv/media/player/subtitle/a/e$d;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/e;->c:Lcom/hunantv/media/player/subtitle/a/e$d;

    return-object p0
.end method

.method public static synthetic d(Lcom/hunantv/media/player/subtitle/a/e;)Lcom/hunantv/media/player/subtitle/a/e$b;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/e;->d:Lcom/hunantv/media/player/subtitle/a/e$b;

    return-object p0
.end method

.method public static synthetic e(Lcom/hunantv/media/player/subtitle/a/e;)I
    .locals 2

    iget v0, p0, Lcom/hunantv/media/player/subtitle/a/e;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hunantv/media/player/subtitle/a/e;->f:I

    return v0
.end method

.method public static synthetic f(Lcom/hunantv/media/player/subtitle/a/e;)Lcom/hunantv/media/player/subtitle/a/e$d;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/e;->b:Lcom/hunantv/media/player/subtitle/a/e$d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e;->b:Lcom/hunantv/media/player/subtitle/a/e$d;

    invoke-interface {v0}, Lcom/hunantv/media/player/subtitle/a/e$d;->a()Lcom/hunantv/media/player/subtitle/a/e$d;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e;->a:Lcom/hunantv/media/player/subtitle/a/e$d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/subtitle/a/e;->f:I

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/e;->e:Ljava/lang/String;

    :goto_0
    iget p1, p0, Lcom/hunantv/media/player/subtitle/a/e;->f:I

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/a/e;->a:Lcom/hunantv/media/player/subtitle/a/e$d;

    invoke-interface {p1}, Lcom/hunantv/media/player/subtitle/a/e$d;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/a/e;->a:Lcom/hunantv/media/player/subtitle/a/e$d;

    instance-of p1, p1, Lcom/hunantv/media/player/subtitle/a/e$c;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/e;->d:Lcom/hunantv/media/player/subtitle/a/e$b;

    invoke-interface {p0}, Lcom/hunantv/media/player/subtitle/a/e$b;->a()V

    :cond_1
    return-void
.end method
