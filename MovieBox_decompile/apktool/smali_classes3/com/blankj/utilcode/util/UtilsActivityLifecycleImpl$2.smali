.class Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;->this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;->val$activity:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;->this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->b(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;->val$activity:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method
