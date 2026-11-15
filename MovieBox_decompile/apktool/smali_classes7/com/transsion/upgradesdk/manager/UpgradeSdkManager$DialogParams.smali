.class public Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogParams"
.end annotation


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public callback:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

.field public cancelButtonTextColor:Ljava/lang/Integer;

.field public confirmButtonTextColor:Ljava/lang/Integer;

.field public dialogStyle:I

.field public isManualClick:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/transsion/upgradesdk/manager/UpgradeDialogCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->dialogStyle:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->activityRef:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    iput-boolean p2, p0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->isManualClick:Z

    .line 15
    .line 16
    iput-object p3, p0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->callback:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->activityRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method
