.class public Lcom/hunantv/imgo/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/b/d$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Z


# direct methods
.method private constructor <init>(Lcom/hunantv/imgo/b/d$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/hunantv/imgo/b/d$a;->a(Lcom/hunantv/imgo/b/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hunantv/imgo/b/d;->d:Z

    .line 4
    invoke-static {p1}, Lcom/hunantv/imgo/b/d$a;->b(Lcom/hunantv/imgo/b/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hunantv/imgo/b/d;->b:Z

    .line 5
    invoke-static {p1}, Lcom/hunantv/imgo/b/d$a;->c(Lcom/hunantv/imgo/b/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hunantv/imgo/b/d;->a:Z

    .line 6
    invoke-static {p1}, Lcom/hunantv/imgo/b/d$a;->d(Lcom/hunantv/imgo/b/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hunantv/imgo/b/d;->c:Z

    .line 7
    invoke-static {p1}, Lcom/hunantv/imgo/b/d$a;->e(Lcom/hunantv/imgo/b/d$a;)I

    move-result v0

    iput v0, p0, Lcom/hunantv/imgo/b/d;->e:I

    .line 8
    invoke-static {p1}, Lcom/hunantv/imgo/b/d$a;->f(Lcom/hunantv/imgo/b/d$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hunantv/imgo/b/d;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hunantv/imgo/b/d$a;Lcom/hunantv/imgo/b/d$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/b/d;-><init>(Lcom/hunantv/imgo/b/d$a;)V

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/b/d$a;
    .locals 1

    new-instance v0, Lcom/hunantv/imgo/b/d$a;

    invoke-direct {v0}, Lcom/hunantv/imgo/b/d$a;-><init>()V

    return-object v0
.end method
