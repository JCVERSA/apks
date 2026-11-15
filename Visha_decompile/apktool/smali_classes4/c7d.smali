.class public abstract Lc7d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc7d$b;,
        Lc7d$a;
    }
.end annotation


# instance fields
.field public a:Lc7d$a;

.field public final b:Lc7d$b;


# direct methods
.method public constructor <init>(Lc7d$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lc7d;->b:Lc7d$b;

    return-void
.end method


# virtual methods
.method public a(Lc7d$a;)V
    .locals 0

    iput-object p1, p0, Lc7d;->a:Lc7d$a;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lc7d;->a:Lc7d$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lc7d$a;->a(Lc7d;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc7d;->b(Ljava/lang/String;)V

    return-void
.end method
