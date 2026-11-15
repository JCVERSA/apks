.class Lcom/hunantv/imgo/c/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/c/a/a/b$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field b:I

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/imgo/c/a/a/b;->c:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/hunantv/imgo/c/a/a/b;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Lcom/hunantv/imgo/c/a/a/b$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/c/a/a/b;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final a(Ljava/lang/Runnable;)Lcom/hunantv/imgo/c/a/a/b$a;
    .locals 1

    new-instance v0, Lcom/hunantv/imgo/c/a/a/b$a;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/c/a/a/b$a;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
