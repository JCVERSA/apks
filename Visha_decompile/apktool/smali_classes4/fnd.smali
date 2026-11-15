.class public abstract Lfnd;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfnd$b;,
        Lfnd$a;
    }
.end annotation


# instance fields
.field private a:Lfnd$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfnd$a;"
        }
    .end annotation
.end field

.field private b:Lfnd$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfnd$b;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Exception;

.field private e:I


# direct methods
.method public constructor <init>(Lfnd$a;Lfnd$b;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfnd;->d:Ljava/lang/Exception;

    iput-object p1, p0, Lfnd;->a:Lfnd$a;

    iput-object p2, p0, Lfnd;->b:Lfnd$b;

    iput-object p3, p0, Lfnd;->c:Ljava/lang/String;

    iput p4, p0, Lfnd;->e:I

    return-void
.end method


# virtual methods
.method public a(Lfnd$a;Lfnd$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfnd$a;",
            "Lfnd$b;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfnd;->a:Lfnd$a;

    .line 2
    iput-object p2, p0, Lfnd;->b:Lfnd$b;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 3
    const-string v0, "mgmi"

    const-string v1, "cancelSafer"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 6
    iget v0, p0, Lfnd;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7
    invoke-static {}, Li4d;->a()Li4d;

    move-result-object v0

    invoke-virtual {v0}, Li4d;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lfnd;->b:Lfnd$b;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lfnd$b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lfnd;->d:Ljava/lang/Exception;

    :goto_0
    return-object v1
.end method

.method public onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object p0, p0, Lfnd;->a:Lfnd$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lfnd$a;->b()V

    :cond_0
    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lfnd;->a:Lfnd$a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lfnd;->d:Ljava/lang/Exception;

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Lfnd$a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lfnd$a;->a(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lfnd;->d:Ljava/lang/Exception;

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object p0, p0, Lfnd;->a:Lfnd$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lfnd$a;->a()V

    :cond_0
    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    iget-object p0, p0, Lfnd;->a:Lfnd$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lfnd$a;->a([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
