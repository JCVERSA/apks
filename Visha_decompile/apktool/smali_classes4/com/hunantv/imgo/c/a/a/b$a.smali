.class public Lcom/hunantv/imgo/c/a/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/c/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/imgo/c/a/a/b$a;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/hunantv/imgo/c/a/a/b$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hunantv/imgo/c/a/a/b$a;->b:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/a/b$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/imgo/c/a/a/b$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/hunantv/imgo/c/a/a/b;
    .locals 3

    .line 3
    new-instance v0, Lcom/hunantv/imgo/c/a/a/b;

    iget-object v1, p0, Lcom/hunantv/imgo/c/a/a/b$a;->a:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/imgo/c/a/a/b;-><init>(Ljava/lang/Runnable;Lcom/hunantv/imgo/c/a/a/b$1;)V

    .line 4
    iget v1, p0, Lcom/hunantv/imgo/c/a/a/b$a;->b:I

    iput v1, v0, Lcom/hunantv/imgo/c/a/a/b;->b:I

    .line 5
    iget-object v1, p0, Lcom/hunantv/imgo/c/a/a/b$a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/hunantv/imgo/c/a/a/b;->c:Ljava/lang/String;

    .line 6
    iget p0, p0, Lcom/hunantv/imgo/c/a/a/b$a;->c:I

    iput p0, v0, Lcom/hunantv/imgo/c/a/a/b;->d:I

    return-object v0
.end method

.method public b(I)Lcom/hunantv/imgo/c/a/a/b$a;
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/hunantv/imgo/c/a/a/b$a;->c:I

    return-object p0
.end method
