.class Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;->this$0:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;->val$activity:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;->val$listener:Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;->this$0:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;->val$activity:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl$1;->val$listener:Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->b(Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
