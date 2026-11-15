.class public Lcom/hunantv/imgo/c/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hunantv/imgo/c/b$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hunantv/imgo/c/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/hunantv/imgo/c/b$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hunantv/imgo/c/b$a;->b:I

    return-object p0
.end method

.method public a(Ljava/lang/Runnable;)Lcom/hunantv/imgo/c/b$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/imgo/c/b$a;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/hunantv/imgo/c/b$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/hunantv/imgo/c/b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/hunantv/imgo/c/b;
    .locals 2

    .line 4
    new-instance v0, Lcom/hunantv/imgo/c/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hunantv/imgo/c/b;-><init>(Lcom/hunantv/imgo/c/b$1;)V

    .line 5
    iget-object v1, p0, Lcom/hunantv/imgo/c/b$a;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/hunantv/imgo/c/b;->a(Lcom/hunantv/imgo/c/b;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 6
    iget-object v1, p0, Lcom/hunantv/imgo/c/b$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hunantv/imgo/c/b;->a(Lcom/hunantv/imgo/c/b;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget v1, p0, Lcom/hunantv/imgo/c/b$a;->b:I

    invoke-static {v0, v1}, Lcom/hunantv/imgo/c/b;->a(Lcom/hunantv/imgo/c/b;I)I

    .line 8
    iget-object v1, p0, Lcom/hunantv/imgo/c/b$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hunantv/imgo/c/b;->b(Lcom/hunantv/imgo/c/b;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget p0, p0, Lcom/hunantv/imgo/c/b$a;->e:I

    invoke-static {v0, p0}, Lcom/hunantv/imgo/c/b;->b(Lcom/hunantv/imgo/c/b;I)I

    return-object v0
.end method

.method public b(I)Lcom/hunantv/imgo/c/b$a;
    .locals 0

    .line 2
    iput p1, p0, Lcom/hunantv/imgo/c/b$a;->e:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/hunantv/imgo/c/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hunantv/imgo/c/b$a;->d:Ljava/lang/String;

    return-object p0
.end method
