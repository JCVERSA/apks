.class public Lcom/hunantv/imgo/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/c/b$a;
    }
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
    invoke-direct {p0}, Lcom/hunantv/imgo/c/b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/imgo/c/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/hunantv/imgo/c/b;->b:I

    return p1
.end method

.method public static synthetic a(Lcom/hunantv/imgo/c/b;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/imgo/c/b;->a:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static synthetic a(Lcom/hunantv/imgo/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/hunantv/imgo/c/b;->c:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/hunantv/imgo/c/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/hunantv/imgo/c/b;->e:I

    return p1
.end method

.method public static synthetic b(Lcom/hunantv/imgo/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/imgo/c/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static c()Lcom/hunantv/imgo/c/b$a;
    .locals 2

    new-instance v0, Lcom/hunantv/imgo/c/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hunantv/imgo/c/b$a;-><init>(Lcom/hunantv/imgo/c/b$1;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/hunantv/imgo/c/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/hunantv/imgo/c/b;->a:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/hunantv/imgo/c/b;->c:Ljava/lang/String;

    iget v3, p0, Lcom/hunantv/imgo/c/b;->b:I

    iget p0, p0, Lcom/hunantv/imgo/c/b;->e:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/hunantv/imgo/c/a/b/f;->a(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;II)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/hunantv/imgo/c/b;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/imgo/c/a/b/f;->b(Ljava/lang/String;)V

    return-void
.end method
