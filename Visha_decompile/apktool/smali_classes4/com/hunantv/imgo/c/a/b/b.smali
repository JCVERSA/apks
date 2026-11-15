.class Lcom/hunantv/imgo/c/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/c/a/b/b$a;,
        Lcom/hunantv/imgo/c/a/b/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/hunantv/imgo/c/a/b/a;


# direct methods
.method private constructor <init>(Lcom/hunantv/imgo/c/a/b/b$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/hunantv/imgo/c/a/b/c;

    invoke-direct {v0, p1}, Lcom/hunantv/imgo/c/a/b/c;-><init>(Lcom/hunantv/imgo/c/a/b/b$b;)V

    iput-object v0, p0, Lcom/hunantv/imgo/c/a/b/b;->a:Lcom/hunantv/imgo/c/a/b/a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hunantv/imgo/c/a/b/b$b;Lcom/hunantv/imgo/c/a/b/b$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/c/a/b/b;-><init>(Lcom/hunantv/imgo/c/a/b/b$b;)V

    return-void
.end method

.method public static a(I)Lcom/hunantv/imgo/c/a/b/b$a;
    .locals 1

    .line 2
    new-instance v0, Lcom/hunantv/imgo/c/a/b/b$a;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/c/a/b/b$a;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/hunantv/imgo/c/a/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/imgo/c/a/b/b;->a:Lcom/hunantv/imgo/c/a/b/a;

    return-object p0
.end method
