.class public Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAppRemoteImpl"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs requireNonNull([Ljava/lang/Object;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public finishCurrentAnimation()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;->finishCurrentAnimation()Z

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubAppRemoteImpl;

    :cond_0
    return-object p1

    :cond_1
    const-string p1, "TranAppRemoteImpl"

    const-string v0, "TranAospAppRemoteImpl"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;

    :cond_2
    return-object p1
.end method

.method public isSupported()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;->isSupported()Z

    move-result p0

    return p0
.end method

.method public newAnimationCallback()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;->newAnimationCallback()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setAppRemoteView(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Object;)Z
    .locals 1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->requireNonNull([Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;->setAppRemoteView(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public skipBackAnim(Landroid/app/Activity;)V
    .locals 1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->requireNonNull([Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;->skipBackAnim(Landroid/app/Activity;)V

    return-void
.end method

.method public startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 8

    .line 3
    filled-new-array {p1, p2, p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->requireNonNull([Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;->startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 1
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->requireNonNull([Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;->startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public startActivityAsUser(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 8

    .line 3
    filled-new-array {p1, p2, p3, p5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->requireNonNull([Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;->startActivityAsUser(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public startActivityAsUser(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/view/View;)V
    .locals 1

    .line 1
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->requireNonNull([Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;->startActivityAsUser(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/view/View;)V

    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 8

    .line 3
    filled-new-array {p1, p2, p5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->requireNonNull([Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/view/View;)V
    .locals 1

    .line 1
    filled-new-array {p1, p2, p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->requireNonNull([Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppRemoteImpl;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/view/View;)V

    return-void
.end method
