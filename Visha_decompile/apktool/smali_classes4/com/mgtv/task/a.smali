.class public Lcom/mgtv/task/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/task/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParam;",
        "Ljava/lang/Integer;",
        "Lcom/mgtv/task/l<",
        "TResultType;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/mgtv/task/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mgtv/task/f<",
            "TParam;TResultType;>;"
        }
    .end annotation
.end field

.field private b:Lcom/mgtv/task/i;

.field private c:Lcom/mgtv/task/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mgtv/task/a$a<",
            "TParam;TResultType;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/mgtv/task/j;


# direct methods
.method public constructor <init>(Lcom/mgtv/task/f;Lcom/mgtv/task/i;Lcom/mgtv/task/a$a;Z)V
    .locals 1
    .param p1    # Lcom/mgtv/task/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mgtv/task/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/mgtv/task/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/task/f<",
            "TParam;TResultType;>;",
            "Lcom/mgtv/task/i;",
            "Lcom/mgtv/task/a$a<",
            "TParam;TResultType;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/mgtv/task/a$1;

    invoke-direct {v0, p0}, Lcom/mgtv/task/a$1;-><init>(Lcom/mgtv/task/a;)V

    iput-object v0, p0, Lcom/mgtv/task/a;->e:Lcom/mgtv/task/j;

    iput-object p1, p0, Lcom/mgtv/task/a;->a:Lcom/mgtv/task/f;

    iput-object p2, p0, Lcom/mgtv/task/a;->b:Lcom/mgtv/task/i;

    iput-object p3, p0, Lcom/mgtv/task/a;->c:Lcom/mgtv/task/a$a;

    iput-boolean p4, p0, Lcom/mgtv/task/a;->d:Z

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/mgtv/task/a;->b:Lcom/mgtv/task/i;

    .line 22
    iget-object p0, p0, Lcom/mgtv/task/a;->a:Lcom/mgtv/task/f;

    iput-object v0, p0, Lcom/mgtv/task/f;->c:Lcom/mgtv/task/d;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/task/a;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Lcom/mgtv/task/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParam;)",
            "Lcom/mgtv/task/l<",
            "TResultType;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mgtv/task/a;->a:Lcom/mgtv/task/f;

    iget-wide v0, v0, Lcom/mgtv/task/f;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v3

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mgtv/task/a;->a:Lcom/mgtv/task/f;

    iget-object v0, v0, Lcom/mgtv/task/f;->a:Lcom/mgtv/task/n;

    if-eqz v0, :cond_3

    .line 5
    iget-object v1, p0, Lcom/mgtv/task/a;->e:Lcom/mgtv/task/j;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-interface {v0, v1, v3}, Lcom/mgtv/task/n;->a(Lcom/mgtv/task/j;Ljava/lang/Object;)Lcom/mgtv/task/l;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/mgtv/task/a;->a:Lcom/mgtv/task/f;

    iget-object v1, v1, Lcom/mgtv/task/f;->d:Lcom/mgtv/task/c;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 7
    iget-boolean v3, v0, Lcom/mgtv/task/l;->b:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/mgtv/task/l;->a:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v4, v0, Lcom/mgtv/task/l;->e:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 8
    aget-object p1, p1, v2

    invoke-interface {v1, p1, v3}, Lcom/mgtv/task/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/mgtv/task/a;->a:Lcom/mgtv/task/f;

    iget-object p0, p0, Lcom/mgtv/task/f;->c:Lcom/mgtv/task/d;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 10
    iget-object p1, v0, Lcom/mgtv/task/l;->a:Ljava/lang/Object;

    iget-object v1, v0, Lcom/mgtv/task/l;->d:Ljava/lang/Object;

    iget-object v2, v0, Lcom/mgtv/task/l;->e:Ljava/lang/Throwable;

    invoke-interface {p0, p1, v1, v2}, Lcom/mgtv/task/d;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    return-object v0

    :cond_3
    return-object v3
.end method

.method public a(Lcom/mgtv/task/l;)V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/task/l<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/mgtv/task/a;->b:Lcom/mgtv/task/i;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Lcom/mgtv/task/i;->hide()V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mgtv/task/a;->a:Lcom/mgtv/task/f;

    iget-object v0, v0, Lcom/mgtv/task/f;->c:Lcom/mgtv/task/d;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 18
    invoke-interface {v0, p1, p1, p1}, Lcom/mgtv/task/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p1, Lcom/mgtv/task/l;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/mgtv/task/l;->d:Ljava/lang/Object;

    iget-object p1, p1, Lcom/mgtv/task/l;->e:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, p1}, Lcom/mgtv/task/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 20
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/mgtv/task/a;->a()V

    return-void
.end method

.method public varargs a([Ljava/lang/Integer;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 11
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/mgtv/task/a;->b:Lcom/mgtv/task/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 13
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/mgtv/task/a;->a:Lcom/mgtv/task/f;

    iget v0, v0, Lcom/mgtv/task/f;->f:I

    mul-int/2addr p1, v0

    iget-object v0, p0, Lcom/mgtv/task/a;->b:Lcom/mgtv/task/i;

    invoke-interface {v0}, Lcom/mgtv/task/i;->a()I

    move-result v0

    div-int/2addr p1, v0

    .line 14
    iget-object p0, p0, Lcom/mgtv/task/a;->b:Lcom/mgtv/task/i;

    invoke-interface {p0}, Lcom/mgtv/task/i;->getProgress()I

    move-result v0

    add-int/2addr v0, p1

    invoke-interface {p0, v0}, Lcom/mgtv/task/i;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/mgtv/task/l;)V
    .locals 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/task/l<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mgtv/task/a;->a:Lcom/mgtv/task/f;

    iget-object v0, v0, Lcom/mgtv/task/f;->c:Lcom/mgtv/task/d;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1, v1, v1}, Lcom/mgtv/task/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p1, Lcom/mgtv/task/l;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/mgtv/task/l;->d:Ljava/lang/Object;

    iget-object v3, p1, Lcom/mgtv/task/l;->e:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, v3}, Lcom/mgtv/task/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    invoke-interface {v0}, Lcom/mgtv/task/d;->d()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/mgtv/task/a;->b:Lcom/mgtv/task/i;

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1}, Lcom/mgtv/task/i;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/mgtv/task/a;->a:Lcom/mgtv/task/f;

    iget v3, v3, Lcom/mgtv/task/f;->f:I

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/mgtv/task/a;->b:Lcom/mgtv/task/i;

    .line 7
    invoke-interface {v4}, Lcom/mgtv/task/i;->a()I

    move-result v4

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 8
    invoke-interface {v1, v2}, Lcom/mgtv/task/i;->setProgress(I)V

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/mgtv/task/a;->a:Lcom/mgtv/task/f;

    iget-object v1, v1, Lcom/mgtv/task/f;->g:Lcom/mgtv/task/f;

    if-nez v1, :cond_3

    .line 10
    iget-object v2, p0, Lcom/mgtv/task/a;->b:Lcom/mgtv/task/i;

    if-eqz v2, :cond_3

    .line 11
    invoke-interface {v2}, Lcom/mgtv/task/i;->hide()V

    :cond_3
    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    .line 12
    iget-boolean p1, p1, Lcom/mgtv/task/l;->c:Z

    if-nez p1, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/mgtv/task/a;->c:Lcom/mgtv/task/a$a;

    iget-boolean p0, p0, Lcom/mgtv/task/a;->d:Z

    invoke-interface {p1, v1, p0}, Lcom/mgtv/task/a$a;->a(Lcom/mgtv/task/f;Z)V

    goto :goto_2

    .line 14
    :cond_5
    iget-object p0, p0, Lcom/mgtv/task/a;->b:Lcom/mgtv/task/i;

    if-eqz p0, :cond_6

    .line 15
    invoke-interface {p0}, Lcom/mgtv/task/i;->hide()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final varargs b([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParam;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/mgtv/task/a;->onPreExecute()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/mgtv/task/a;->a([Ljava/lang/Object;)Lcom/mgtv/task/l;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/mgtv/task/a;->a(Lcom/mgtv/task/l;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgtv/task/a;->b(Lcom/mgtv/task/l;)V

    :goto_0
    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgtv/task/a;->a([Ljava/lang/Object;)Lcom/mgtv/task/l;

    move-result-object p0

    return-object p0
.end method

.method public synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    check-cast p1, Lcom/mgtv/task/l;

    invoke-virtual {p0, p1}, Lcom/mgtv/task/a;->a(Lcom/mgtv/task/l;)V

    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    check-cast p1, Lcom/mgtv/task/l;

    invoke-virtual {p0, p1}, Lcom/mgtv/task/a;->b(Lcom/mgtv/task/l;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p0, p0, Lcom/mgtv/task/a;->a:Lcom/mgtv/task/f;

    iget-object p0, p0, Lcom/mgtv/task/f;->c:Lcom/mgtv/task/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/task/d;->c()V

    :cond_0
    return-void
.end method

.method public synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mgtv/task/a;->a([Ljava/lang/Integer;)V

    return-void
.end method
