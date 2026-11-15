.class public Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;


# static fields
.field private static final CLASS_ANIMATION_CALLBACK:Ljava/lang/String; = "android.app.appremote.AppRemote$AnimationCallback"

.field private static final CLASS_APP_REMOTE:Ljava/lang/String; = "android.app.appremote.AppRemote"

.field private static final TAG:Ljava/lang/String; = "TranAospAppRemoteImpl"

.field private static sAnimationCallbackClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sAppRemoteClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sFinishCurrentAnimationMethod:Ljava/lang/reflect/Method;

.field private static sSetAppRemoteViewMethod:Ljava/lang/reflect/Method;

.field private static sSkipBackAnimMethod:Ljava/lang/reflect/Method;

.field private static sStartActivityAsUserExMethod:Ljava/lang/reflect/Method;

.field private static sStartActivityAsUserMethod:Ljava/lang/reflect/Method;

.field private static sStartActivityExMethod:Ljava/lang/reflect/Method;

.field private static sStartActivityForResultExMethod:Ljava/lang/reflect/Method;

.field private static sStartActivityForResultMethod:Ljava/lang/reflect/Method;

.field private static sStartActivityMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.app.appremote.AppRemote"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAppRemoteClass:Ljava/lang/Class;

    const-string v0, "android.app.appremote.AppRemote$AnimationCallback"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAnimationCallbackClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishCurrentAnimation()Z
    .locals 3

    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAppRemoteClass:Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sFinishCurrentAnimationMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    const-string v1, "finishCurrentAnimation"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-static {p0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sFinishCurrentAnimationMethod:Ljava/lang/reflect/Method;

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sFinishCurrentAnimationMethod:Ljava/lang/reflect/Method;

    if-nez p0, :cond_2

    return v0

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSupported()Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAppRemoteClass:Ljava/lang/Class;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAnimationCallbackClass:Ljava/lang/Class;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newAnimationCallback()Ljava/lang/Object;
    .locals 3

    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAnimationCallbackClass:Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v1, "TranAospAppRemoteImpl"

    const-string v2, "newAnimationCallback failed"

    invoke-static {v1, v2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public setAppRemoteView(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Object;)Z
    .locals 5

    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAppRemoteClass:Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    sget-object v1, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAnimationCallbackClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sSetAppRemoteViewMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    const-class v2, Landroid/content/Context;

    const-class v3, Landroid/os/Bundle;

    const-class v4, Landroid/view/View;

    filled-new-array {v4, v2, v3, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setAppRemoteView"

    invoke-static {p0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sSetAppRemoteViewMethod:Ljava/lang/reflect/Method;

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sSetAppRemoteViewMethod:Ljava/lang/reflect/Method;

    if-nez p0, :cond_2

    return v0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public skipBackAnim(Landroid/app/Activity;)V
    .locals 2

    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAppRemoteClass:Ljava/lang/Class;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sSkipBackAnimMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    const-class v0, Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "skipBackAnim"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sSkipBackAnimMethod:Ljava/lang/reflect/Method;

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sSkipBackAnimMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 6

    .line 6
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAppRemoteClass:Ljava/lang/Class;

    if-eqz p0, :cond_2

    sget-object v5, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAnimationCallbackClass:Ljava/lang/Class;

    if-nez v5, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityExMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 8
    const-class v3, Landroid/view/View;

    const-class v4, Landroid/os/Bundle;

    const-class v0, Landroid/app/Activity;

    const-class v1, Landroid/content/Intent;

    const-class v2, Landroid/os/Bundle;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startActivity"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityExMethod:Ljava/lang/reflect/Method;

    .line 9
    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityExMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 10
    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAppRemoteClass:Ljava/lang/Class;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Landroid/content/Intent;

    const-class v1, Landroid/view/View;

    const-class v2, Landroid/app/Activity;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startActivity"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityMethod:Ljava/lang/reflect/Method;

    .line 4
    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 5
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public startActivityAsUser(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 7

    .line 6
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAppRemoteClass:Ljava/lang/Class;

    if-eqz p0, :cond_2

    sget-object v6, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAnimationCallbackClass:Ljava/lang/Class;

    if-nez v6, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityAsUserExMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 8
    const-class v4, Landroid/view/View;

    const-class v5, Landroid/os/Bundle;

    const-class v0, Landroid/app/Activity;

    const-class v1, Landroid/content/Intent;

    const-class v2, Landroid/os/UserHandle;

    const-class v3, Landroid/os/Bundle;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startActivityAsUser"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityAsUserExMethod:Ljava/lang/reflect/Method;

    .line 9
    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityAsUserExMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 10
    filled-new-array/range {p1 .. p7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public startActivityAsUser(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAppRemoteClass:Ljava/lang/Class;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityAsUserMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Landroid/os/UserHandle;

    const-class v1, Landroid/view/View;

    const-class v2, Landroid/app/Activity;

    const-class v3, Landroid/content/Intent;

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startActivityAsUser"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityAsUserMethod:Ljava/lang/reflect/Method;

    .line 4
    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityAsUserMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 5
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 7

    .line 6
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAppRemoteClass:Ljava/lang/Class;

    if-eqz p0, :cond_2

    sget-object v6, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAnimationCallbackClass:Ljava/lang/Class;

    if-nez v6, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityForResultExMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 8
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    const-class v5, Landroid/os/Bundle;

    const-class v0, Landroid/app/Activity;

    const-class v1, Landroid/content/Intent;

    const-class v3, Landroid/os/Bundle;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startActivityForResult"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityForResultExMethod:Ljava/lang/reflect/Method;

    .line 9
    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityForResultExMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_2

    .line 10
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, p1

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    .line 11
    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/view/View;)V
    .locals 4

    .line 1
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sAppRemoteClass:Ljava/lang/Class;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityForResultMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    const-class v2, Landroid/app/Activity;

    const-class v3, Landroid/content/Intent;

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startActivityForResult"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityForResultMethod:Ljava/lang/reflect/Method;

    .line 4
    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/aosp/app/TranAospAppRemoteImpl;->sStartActivityForResultMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_2

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
