.class public Lcom/hunantv/imgo/c/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hunantv/imgo/c/a/a/a;

.field private final b:Lcom/hunantv/imgo/c/a/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/hunantv/imgo/c/a;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hunantv/imgo/c/a/a/d;-><init>(Ljava/lang/String;ILcom/hunantv/imgo/c/a;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/hunantv/imgo/c/a;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/hunantv/imgo/c/a/a/c;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/hunantv/imgo/c/a/a/c;-><init>(Ljava/lang/String;ILcom/hunantv/imgo/c/a;Z)V

    iput-object v0, p0, Lcom/hunantv/imgo/c/a/a/d;->b:Lcom/hunantv/imgo/c/a/a/c;

    .line 4
    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/a/c;->a()Lcom/hunantv/imgo/c/a/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/c/a/a/d;->a:Lcom/hunantv/imgo/c/a/a/a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/hunantv/imgo/c/a/a/d;->a:Lcom/hunantv/imgo/c/a/a/a;

    invoke-virtual {p0}, Lcom/hunantv/imgo/c/a/a/a;->a()I

    move-result p0

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/hunantv/imgo/c/a/a/d;->b:Lcom/hunantv/imgo/c/a/a/c;

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/c/a/a/c;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/String;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/hunantv/imgo/c/a/a/d;->a:Lcom/hunantv/imgo/c/a/a/a;

    invoke-static {p1}, Lcom/hunantv/imgo/c/a/a/b;->a(Ljava/lang/Runnable;)Lcom/hunantv/imgo/c/a/a/b$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/c/a/a/b$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/a/b$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/hunantv/imgo/c/a/a/b$a;->a(I)Lcom/hunantv/imgo/c/a/a/b$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/hunantv/imgo/c/a/a/b$a;->b(I)Lcom/hunantv/imgo/c/a/a/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/imgo/c/a/a/b$a;->a()Lcom/hunantv/imgo/c/a/a/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/c/a/a/a;->a(Lcom/hunantv/imgo/c/a/a/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/hunantv/imgo/c/a/a/d;->a:Lcom/hunantv/imgo/c/a/a/a;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/imgo/c/a/a/d;->b:Lcom/hunantv/imgo/c/a/a/c;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/imgo/c/a/a/d;->b:Lcom/hunantv/imgo/c/a/a/c;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/imgo/c/a/a/d;->b:Lcom/hunantv/imgo/c/a/a/c;

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
