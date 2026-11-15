.class Lcom/blankj/utilcode/util/NetworkUtils$9;
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
    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$9;->val$consumer:Lcom/blankj/utilcode/util/Utils$b;

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
    iget-object v1, p0, Lcom/blankj/utilcode/util/NetworkUtils$9;->val$consumer:Lcom/blankj/utilcode/util/Utils$b;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->a()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->g()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
