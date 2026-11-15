.class public Lcom/transsion/compressor/image/h$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/compressor/image/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Lcom/transsion/compressor/image/e;

.field private f:Lcom/transsion/compressor/image/a;

.field private final g:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    iput v0, p0, Lcom/transsion/compressor/image/h$a;->d:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/transsion/compressor/image/h$a;->a:Landroid/content/Context;

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/transsion/compressor/image/h$a;->g:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/compressor/image/h$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/compressor/image/h$a;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic b(Lcom/transsion/compressor/image/h$a;)Lcom/transsion/compressor/image/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/compressor/image/h$a;->e:Lcom/transsion/compressor/image/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/transsion/compressor/image/h$a;)Lcom/transsion/compressor/image/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/compressor/image/h$a;->f:Lcom/transsion/compressor/image/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/transsion/compressor/image/h$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/compressor/image/h$a;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic e(Lcom/transsion/compressor/image/h$a;)Lcom/transsion/compressor/image/f;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static bridge synthetic f(Lcom/transsion/compressor/image/h$a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/compressor/image/h$a;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic g(Lcom/transsion/compressor/image/h$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/compressor/image/h$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private h()Lcom/transsion/compressor/image/h;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/compressor/image/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/transsion/compressor/image/h;-><init>(Lcom/transsion/compressor/image/h$a;Lcom/transsion/compressor/image/i;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public i()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/compressor/image/h$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/compressor/image/j;->e(Landroid/content/Context;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/compressor/image/h$a;->b:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/transsion/compressor/image/h$a;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/transsion/compressor/image/j;->d(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    return-void
.end method

.method public j(Lcom/transsion/compressor/image/a;)Lcom/transsion/compressor/image/h$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/compressor/image/h$a;->f:Lcom/transsion/compressor/image/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public k()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/compressor/image/h$a;->h()Lcom/transsion/compressor/image/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/compressor/image/h$a;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/transsion/compressor/image/h;->b(Lcom/transsion/compressor/image/h;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/transsion/compressor/image/h$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/compressor/image/h$a;->g:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/compressor/image/h$a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/transsion/compressor/image/h$a$a;-><init>(Lcom/transsion/compressor/image/h$a;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public m(Lcom/transsion/compressor/image/e;)Lcom/transsion/compressor/image/h$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/compressor/image/h$a;->e:Lcom/transsion/compressor/image/e;

    .line 2
    .line 3
    return-object p0
.end method
