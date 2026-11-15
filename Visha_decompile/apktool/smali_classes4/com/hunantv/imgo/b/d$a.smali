.class public final Lcom/hunantv/imgo/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/imgo/b/d$a;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/imgo/b/d$a;->d:Z

    iput-boolean v0, p0, Lcom/hunantv/imgo/b/d$a;->f:Z

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/imgo/b/d$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hunantv/imgo/b/d$a;->a:Z

    return p0
.end method

.method public static synthetic b(Lcom/hunantv/imgo/b/d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/imgo/b/d$a;->c:Z

    return p0
.end method

.method public static synthetic c(Lcom/hunantv/imgo/b/d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/imgo/b/d$a;->b:Z

    return p0
.end method

.method public static synthetic d(Lcom/hunantv/imgo/b/d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/imgo/b/d$a;->d:Z

    return p0
.end method

.method public static synthetic e(Lcom/hunantv/imgo/b/d$a;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/b/d$a;->e:I

    return p0
.end method

.method public static synthetic f(Lcom/hunantv/imgo/b/d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/imgo/b/d$a;->f:Z

    return p0
.end method


# virtual methods
.method public a()Lcom/hunantv/imgo/b/d;
    .locals 2

    .line 2
    new-instance v0, Lcom/hunantv/imgo/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hunantv/imgo/b/d;-><init>(Lcom/hunantv/imgo/b/d$a;Lcom/hunantv/imgo/b/d$1;)V

    return-object v0
.end method
