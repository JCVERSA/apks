.class Lcom/transsion/onlinevideo/membership/UserCenterActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/membership/UserCenterActivity;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/onlinevideo/membership/UserCenterActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity$1;->this$0:Lcom/transsion/onlinevideo/membership/UserCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/membership/UserCenterActivity$1;->this$0:Lcom/transsion/onlinevideo/membership/UserCenterActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->z0(Lcom/transsion/onlinevideo/membership/UserCenterActivity;)Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
