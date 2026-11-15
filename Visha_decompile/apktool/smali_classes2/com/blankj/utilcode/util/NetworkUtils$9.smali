.class Lcom/blankj/utilcode/util/NetworkUtils$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$consumer:Lcom/blankj/utilcode/util/Utils$b;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/Utils$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$9;->val$consumer:Lcom/blankj/utilcode/util/Utils$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->a()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/blankj/utilcode/util/NetworkUtils$9;->val$consumer:Lcom/blankj/utilcode/util/Utils$b;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->a()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->g()V

    :cond_0
    return-void
.end method
