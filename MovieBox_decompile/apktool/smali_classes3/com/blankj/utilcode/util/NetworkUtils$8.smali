.class Lcom/blankj/utilcode/util/NetworkUtils$8;
.super Ljava/util/TimerTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/NetworkUtils;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->e()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->m()Lcom/blankj/utilcode/util/NetworkUtils$b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->c()Lcom/blankj/utilcode/util/NetworkUtils$b;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/blankj/utilcode/util/NetworkUtils$b;->a(Lcom/blankj/utilcode/util/NetworkUtils$b;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils$b;->a(Lcom/blankj/utilcode/util/NetworkUtils$b;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/NetworkUtils;->f(Ljava/util/List;Ljava/util/List;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->d(Lcom/blankj/utilcode/util/NetworkUtils$b;)Lcom/blankj/utilcode/util/NetworkUtils$b;

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$8$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/NetworkUtils$8$1;-><init>(Lcom/blankj/utilcode/util/NetworkUtils$8;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/blankj/utilcode/util/e0;->J(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
