.class public abstract synthetic Lk4/b;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Lk4/c;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lk4/c;->b()Lk4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
