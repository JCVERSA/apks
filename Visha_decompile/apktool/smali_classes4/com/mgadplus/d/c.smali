.class public Lcom/mgadplus/d/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/d/c$b;
    }
.end annotation


# instance fields
.field public a:Lw5d;

.field public b:Lcom/mgadplus/d/c$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/mgadplus/d/c;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lcgd;
    .locals 2

    iget-object p1, p0, Lcom/mgadplus/d/c;->a:Lw5d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lw5d;->a:Lcom/mgadplus/d/b;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lw5d;->b:Lwed;

    new-instance v1, Lcom/mgadplus/d/c$a;

    invoke-direct {v1, p0}, Lcom/mgadplus/d/c$a;-><init>(Lcom/mgadplus/d/c;)V

    invoke-interface {v0, p1, v1}, Lcom/mgadplus/d/b;->a(Ljava/lang/Object;Lcom/mgadplus/d/b$a;)Lcgd;

    move-result-object p1

    iget-object p0, p0, Lcom/mgadplus/d/c;->a:Lw5d;

    iget-object p0, p0, Lw5d;->c:La9d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, La9d;->c(Ljava/lang/Object;)V

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Lcgd;)V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/d/c;->a:Lw5d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lw5d;->c:La9d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, La9d;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/mgadplus/d/c;->b:Lcom/mgadplus/d/c$b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/mgadplus/d/c$b;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mgadplus/d/c;->b:Lcom/mgadplus/d/c$b;

    :cond_1
    return-void
.end method

.method public d(Ljava/util/concurrent/Executor;Lw5d;Lcom/mgadplus/d/c$b;)V
    .locals 0

    iput-object p2, p0, Lcom/mgadplus/d/c;->a:Lw5d;

    iput-object p3, p0, Lcom/mgadplus/d/c;->b:Lcom/mgadplus/d/c$b;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgadplus/d/c;->a([Ljava/lang/Object;)Lcgd;

    move-result-object p0

    return-object p0
.end method

.method public varargs e([Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/d/c;->a:Lw5d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lw5d;->c:La9d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, La9d;->a([Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public f(Lcgd;)V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/d/c;->a:Lw5d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lw5d;->a:Lcom/mgadplus/d/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgadplus/d/b;->a()Z

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/d/c;->a:Lw5d;

    iget-object v0, v0, Lw5d;->c:La9d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, La9d;->d(Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/mgadplus/d/c;->a:Lw5d;

    const/4 p1, 0x0

    iput-object p1, p0, Lw5d;->c:La9d;

    :cond_2
    return-void
.end method

.method public synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcgd;

    invoke-virtual {p0, p1}, Lcom/mgadplus/d/c;->f(Lcgd;)V

    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcgd;

    invoke-virtual {p0, p1}, Lcom/mgadplus/d/c;->c(Lcgd;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/d/c;->a:Lw5d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lw5d;->c:La9d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, La9d;->a()V

    :cond_0
    return-void
.end method

.method public synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mgadplus/d/c;->e([Ljava/lang/Integer;)V

    return-void
.end method
