.class public Lcom/hunantv/imgo/c/a/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/c/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:I

.field b:I

.field c:Ljava/lang/String;

.field d:Lcom/hunantv/imgo/c/a;

.field e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/hunantv/imgo/c/a/b/b$a;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/hunantv/imgo/c/a/b/b$a;
    .locals 0

    .line 4
    iput p1, p0, Lcom/hunantv/imgo/c/a/b/b$a;->b:I

    return-object p0
.end method

.method public a(Lcom/hunantv/imgo/c/a;)Lcom/hunantv/imgo/c/a/b/b$a;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/hunantv/imgo/c/a/b/b$a;->d:Lcom/hunantv/imgo/c/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/b$a;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p1, "ThreadPool"

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/hunantv/imgo/c/a/b/b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/hunantv/imgo/c/a/b/b;
    .locals 2

    .line 6
    new-instance v0, Lcom/hunantv/imgo/c/a/b/b$b;

    iget v1, p0, Lcom/hunantv/imgo/c/a/b/b$a;->a:I

    invoke-direct {v0, v1}, Lcom/hunantv/imgo/c/a/b/b$b;-><init>(I)V

    .line 7
    iget-object v1, p0, Lcom/hunantv/imgo/c/a/b/b$a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/hunantv/imgo/c/a/b/b$b;->c:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/hunantv/imgo/c/a/b/b$a;->d:Lcom/hunantv/imgo/c/a;

    iput-object v1, v0, Lcom/hunantv/imgo/c/a/b/b$b;->d:Lcom/hunantv/imgo/c/a;

    .line 9
    iget v1, p0, Lcom/hunantv/imgo/c/a/b/b$a;->b:I

    iput v1, v0, Lcom/hunantv/imgo/c/a/b/b$b;->b:I

    .line 10
    iget p0, p0, Lcom/hunantv/imgo/c/a/b/b$a;->e:I

    iput p0, v0, Lcom/hunantv/imgo/c/a/b/b$b;->e:I

    .line 11
    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/b/b$b;->a()Lcom/hunantv/imgo/c/a/b/b;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Lcom/hunantv/imgo/c/a/b/b$a;
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/c/a/b/b$a;->e:I

    return-object p0
.end method
