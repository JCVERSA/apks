.class public abstract Lse/b;
.super Landroid/os/AsyncTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/b$b;,
        Lse/b$a;
    }
.end annotation


# instance fields
.field private a:Lse/b$a;

.field protected final b:Lse/b$b;


# direct methods
.method public constructor <init>(Lse/b$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lse/b;->b:Lse/b$b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lse/b;->a:Lse/b$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lse/b$a;->a(Lse/b;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public b(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public c(Lse/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lse/b;->a:Lse/b$a;

    .line 2
    .line 3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lse/b;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
