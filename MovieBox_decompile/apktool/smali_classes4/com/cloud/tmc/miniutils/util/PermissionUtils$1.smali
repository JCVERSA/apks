.class Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnRationaleListener$ShouldRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/PermissionUtils;->rationalInner(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

.field final synthetic val$activity:Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

.field final synthetic val$againRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Ljava/lang/Runnable;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->val$againRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->val$activity:Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public again(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->e(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->f(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->val$againRunnable:Ljava/lang/Runnable;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->val$activity:Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$1;->this$0:Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->h(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
