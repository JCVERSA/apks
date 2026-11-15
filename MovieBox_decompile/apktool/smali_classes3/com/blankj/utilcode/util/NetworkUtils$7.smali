.class Lcom/blankj/utilcode/util/NetworkUtils$7;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$consumer:Lcom/blankj/utilcode/util/Utils$b;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/Utils$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$7;->val$consumer:Lcom/blankj/utilcode/util/Utils$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->a()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->a()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/blankj/utilcode/util/NetworkUtils$7;->val$consumer:Lcom/blankj/utilcode/util/Utils$b;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->b()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$7;->val$consumer:Lcom/blankj/utilcode/util/Utils$b;

    .line 25
    .line 26
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->c()Lcom/blankj/utilcode/util/NetworkUtils$b;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/Utils$b;->accept(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->a()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/blankj/utilcode/util/NetworkUtils$7;->val$consumer:Lcom/blankj/utilcode/util/Utils$b;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method
