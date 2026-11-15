.class Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->b(Lcom/blankj/utilcode/util/UtilsTransActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

.field final synthetic val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;->this$0:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    iput-object p2, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;->val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;->val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->d()Lcom/blankj/utilcode/util/PermissionUtils;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->e(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
