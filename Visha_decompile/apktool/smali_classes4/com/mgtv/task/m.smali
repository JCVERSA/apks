.class public Lcom/mgtv/task/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x3a98

.field private static e:I = 0x3


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mgtv/task/h;

.field private d:Lcom/mgtv/task/k;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/mgtv/task/http/retry/c;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mgtv/task/m;->f:I

    .line 3
    iput v0, p0, Lcom/mgtv/task/m;->g:I

    .line 4
    sget v0, Lcom/mgtv/task/m;->e:I

    iput v0, p0, Lcom/mgtv/task/m;->h:I

    .line 5
    new-instance v0, Lcom/mgtv/task/http/host/a;

    invoke-direct {v0}, Lcom/mgtv/task/http/host/a;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/m;->i:Lcom/mgtv/task/http/retry/c;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/mgtv/task/m;->l:Z

    .line 7
    iput-boolean v0, p0, Lcom/mgtv/task/m;->m:Z

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/mgtv/task/m;->b:Landroid/content/Context;

    .line 9
    new-instance p1, Lcom/mgtv/task/h;

    invoke-direct {p1}, Lcom/mgtv/task/h;-><init>()V

    iput-object p1, p0, Lcom/mgtv/task/m;->c:Lcom/mgtv/task/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mgtv/task/h;Lcom/mgtv/task/k;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/mgtv/task/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mgtv/task/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/mgtv/task/m;->f:I

    .line 12
    iput v0, p0, Lcom/mgtv/task/m;->g:I

    .line 13
    sget v0, Lcom/mgtv/task/m;->e:I

    iput v0, p0, Lcom/mgtv/task/m;->h:I

    .line 14
    new-instance v0, Lcom/mgtv/task/http/host/a;

    invoke-direct {v0}, Lcom/mgtv/task/http/host/a;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/m;->i:Lcom/mgtv/task/http/retry/c;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/mgtv/task/m;->l:Z

    .line 16
    iput-boolean v0, p0, Lcom/mgtv/task/m;->m:Z

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/mgtv/task/m;->b:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/mgtv/task/m;->c:Lcom/mgtv/task/h;

    .line 19
    iput-object p3, p0, Lcom/mgtv/task/m;->d:Lcom/mgtv/task/k;

    return-void
.end method

.method private a(Lcom/mgtv/task/http/e;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Lcom/mgtv/task/http/e;->b()Lcom/mgtv/task/http/g;

    move-result-object v0

    iget v1, p0, Lcom/mgtv/task/m;->f:I

    invoke-virtual {v0, v1}, Lcom/mgtv/task/http/g;->b(I)V

    .line 7
    invoke-virtual {p1}, Lcom/mgtv/task/http/e;->b()Lcom/mgtv/task/http/g;

    move-result-object v0

    iget v1, p0, Lcom/mgtv/task/m;->g:I

    invoke-virtual {v0, v1}, Lcom/mgtv/task/http/g;->a(I)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/task/m;->i:Lcom/mgtv/task/http/retry/c;

    instance-of v1, v0, Lcom/mgtv/task/http/retry/a;

    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lcom/mgtv/task/http/retry/a;

    .line 10
    iget v1, p0, Lcom/mgtv/task/m;->f:I

    invoke-virtual {v0, v1}, Lcom/mgtv/task/http/retry/a;->a(I)V

    .line 11
    iget v1, p0, Lcom/mgtv/task/m;->g:I

    invoke-virtual {v0, v1}, Lcom/mgtv/task/http/retry/a;->b(I)V

    .line 12
    iget v1, p0, Lcom/mgtv/task/m;->h:I

    invoke-virtual {v0, v1}, Lcom/mgtv/task/http/retry/a;->c(I)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mgtv/task/m;->i:Lcom/mgtv/task/http/retry/c;

    instance-of v1, v0, Lcom/mgtv/task/http/host/a;

    if-eqz v1, :cond_1

    .line 14
    check-cast v0, Lcom/mgtv/task/http/host/a;

    .line 15
    iget-boolean v1, p0, Lcom/mgtv/task/m;->l:Z

    invoke-virtual {v0, v1}, Lcom/mgtv/task/http/host/a;->a(Z)V

    .line 16
    iget-boolean v1, p0, Lcom/mgtv/task/m;->m:Z

    invoke-virtual {v0, v1}, Lcom/mgtv/task/http/host/a;->b(Z)V

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/mgtv/task/http/e;->b()Lcom/mgtv/task/http/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/task/m;->i:Lcom/mgtv/task/http/retry/c;

    invoke-virtual {v0, v1}, Lcom/mgtv/task/http/g;->a(Lcom/mgtv/task/http/retry/c;)V

    .line 18
    invoke-virtual {p1}, Lcom/mgtv/task/http/e;->a()Lcom/mgtv/task/http/HttpRequestObject;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mgtv/task/m;->j:Z

    iput-boolean v1, v0, Lcom/mgtv/task/http/HttpRequestObject;->wholeResponse:Z

    .line 19
    invoke-virtual {p1}, Lcom/mgtv/task/http/e;->a()Lcom/mgtv/task/http/HttpRequestObject;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mgtv/task/m;->n:Z

    iput-boolean v1, v0, Lcom/mgtv/task/http/HttpRequestObject;->enableSmartDns:Z

    .line 20
    iget-boolean v0, p0, Lcom/mgtv/task/m;->k:Z

    if-eqz v0, :cond_2

    .line 21
    new-instance v0, Lcom/mgtv/task/http/b;

    iget-object v1, p0, Lcom/mgtv/task/m;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mgtv/task/http/b;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p1, Lcom/mgtv/task/f;->d:Lcom/mgtv/task/c;

    .line 23
    iget-object p1, p0, Lcom/mgtv/task/m;->o:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/mgtv/task/http/b;->a(Ljava/util/Collection;)V

    .line 24
    :cond_2
    sget p1, Lcom/mgtv/task/m;->a:I

    iput p1, p0, Lcom/mgtv/task/m;->f:I

    .line 25
    iput p1, p0, Lcom/mgtv/task/m;->g:I

    .line 26
    sget p1, Lcom/mgtv/task/m;->e:I

    iput p1, p0, Lcom/mgtv/task/m;->h:I

    .line 27
    new-instance p1, Lcom/mgtv/task/http/host/a;

    invoke-direct {p1}, Lcom/mgtv/task/http/host/a;-><init>()V

    iput-object p1, p0, Lcom/mgtv/task/m;->i:Lcom/mgtv/task/http/retry/c;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/mgtv/task/m;->j:Z

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/mgtv/task/m;->o:Ljava/util/Collection;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/mgtv/task/m;->l:Z

    .line 31
    iput-boolean p1, p0, Lcom/mgtv/task/m;->k:Z

    .line 32
    iput-boolean p1, p0, Lcom/mgtv/task/m;->n:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/task/f;Lcom/mgtv/task/b;)Lcom/mgtv/task/g;
    .locals 0
    .param p1    # Lcom/mgtv/task/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mgtv/task/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Param:",
            "Ljava/lang/Object;",
            "ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mgtv/task/f<",
            "TParam;TResultType;>;",
            "Lcom/mgtv/task/b<",
            "TParam;TResultType;>;)",
            "Lcom/mgtv/task/g;"
        }
    .end annotation

    .line 36
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/task/m;->a(Ljava/util/List;Lcom/mgtv/task/b;)Lcom/mgtv/task/g;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mgtv/task/http/HttpParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mgtv/task/http/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/mgtv/task/http/HttpParams;",
            "Lcom/mgtv/task/http/c<",
            "TT;>;)",
            "Lcom/mgtv/task/g;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/mgtv/task/m;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/mgtv/task/http/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/http/e;

    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lcom/mgtv/task/m;->a(Lcom/mgtv/task/http/e;)V

    const/4 p2, 0x0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/task/m;->a(Lcom/mgtv/task/f;Lcom/mgtv/task/b;)Lcom/mgtv/task/g;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/util/List;Lcom/mgtv/task/b;)Lcom/mgtv/task/g;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mgtv/task/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Param:",
            "Ljava/lang/Object;",
            "ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lcom/mgtv/task/f<",
            "TParam;TResultType;>;>;",
            "Lcom/mgtv/task/b<",
            "TParam;TResultType;>;)",
            "Lcom/mgtv/task/g;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/task/f;

    .line 38
    iget-object v2, v1, Lcom/mgtv/task/f;->c:Lcom/mgtv/task/d;

    .line 39
    new-instance v3, Lcom/mgtv/task/m$1;

    invoke-direct {v3, p0, v2, p2, p1}, Lcom/mgtv/task/m$1;-><init>(Lcom/mgtv/task/m;Lcom/mgtv/task/d;Lcom/mgtv/task/b;Ljava/util/List;)V

    iput-object v3, v1, Lcom/mgtv/task/f;->c:Lcom/mgtv/task/d;

    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/mgtv/task/m;->c:Lcom/mgtv/task/h;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/task/h;->a(Ljava/util/List;Lcom/mgtv/task/i;)Lcom/mgtv/task/g;

    move-result-object p0

    return-object p0
.end method

.method public a()Lcom/mgtv/task/m;
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mgtv/task/m;->m:Z

    return-object p0
.end method

.method public a(I)Lcom/mgtv/task/m;
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgtv/task/m;->g:I

    return-object p0
.end method

.method public a(Lcom/mgtv/task/http/retry/c;)Lcom/mgtv/task/m;
    .locals 0
    .param p1    # Lcom/mgtv/task/http/retry/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iput-object p1, p0, Lcom/mgtv/task/m;->i:Lcom/mgtv/task/http/retry/c;

    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lcom/mgtv/task/m;
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgtv/task/m;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/mgtv/task/m;->o:Ljava/util/Collection;

    return-object p0
.end method

.method public a(Z)Lcom/mgtv/task/m;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgtv/task/m;->j:Z

    return-object p0
.end method

.method public a(Lcom/mgtv/task/g;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mgtv/task/m;->c:Lcom/mgtv/task/h;

    invoke-virtual {p0, p1}, Lcom/mgtv/task/h;->a(Lcom/mgtv/task/g;)V

    return-void
.end method

.method public b(I)Lcom/mgtv/task/m;
    .locals 0

    iput p1, p0, Lcom/mgtv/task/m;->f:I

    return-object p0
.end method

.method public c(I)Lcom/mgtv/task/m;
    .locals 0

    iput p1, p0, Lcom/mgtv/task/m;->h:I

    return-object p0
.end method
