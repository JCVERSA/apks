.class public final Luv/a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luv/a;->a(Ljava/lang/String;ZLandroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luv/a$a;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Luv/a$a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Luv/a$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p4, p0, Luv/a$a;->d:Z

    .line 8
    .line 9
    iput-object p5, p0, Luv/a$a;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onRequestFail(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "ps \u8bf7\u6c42\u5931\u8d25 "

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v2, "update"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Luv/a$a;->a:Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V
    .locals 7

    .line 1
    const-string v0, "upgradeInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->getVersionName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->isNewVersion()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->getShowUpgradeDialog()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v5, "ps \u8bf7\u6c42\u6210\u529f "

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, " "

    .line 34
    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v5, 0x4

    .line 58
    const/4 v6, 0x0

    .line 59
    const-string v2, "update"

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->getShowUpgradeDialog()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    new-instance p1, Luv/a$a$a;

    .line 72
    .line 73
    iget-object v0, p0, Luv/a$a;->c:Ljava/lang/String;

    .line 74
    .line 75
    iget-boolean v1, p0, Luv/a$a;->d:Z

    .line 76
    .line 77
    iget-object v2, p0, Luv/a$a;->e:Ljava/lang/String;

    .line 78
    .line 79
    invoke-direct {p1, v0, v1, v2}, Luv/a$a$a;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;

    .line 83
    .line 84
    iget-object v1, p0, Luv/a$a;->b:Landroid/app/Activity;

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;-><init>(Landroid/app/Activity;ZLcom/transsion/upgradesdk/manager/UpgradeDialogCallback;)V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    iput p1, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->dialogStyle:I

    .line 92
    .line 93
    invoke-static {}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->getInstance()Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->showUpgradeDialog(Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Luv/a$a;->a:Lkotlin/jvm/functions/Function1;

    .line 102
    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    const-string v0, "showUpgradeDialog false"

    .line 106
    .line 107
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_1
    :goto_0
    return-void
.end method
