.class public Lcom/transsion/playercommon/activities/BasePermissionActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/MountPointManager$a;


# static fields
.field public static final PERMISSION_ACTION:Ljava/lang/String; = "com.android.setting.ACTION_GET_PERMISSION_DETAILS"

.field public static final PERMISSION_ACTION_ALL:Ljava/lang/String; = "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

.field public static final PERMISSION_ACTION_OTHER:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field public static final PERMISSION_REQUESTCODE:I = 0x4a39

.field private static final TAG:Ljava/lang/String; = "BasePermissionActivity"


# instance fields
.field protected mActivityStart:Z

.field public mAutoRequestGuideDialog:Z

.field protected mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

.field protected mHaveFilePermission:Z

.field protected mIsDelayRequestPermission:Z

.field final mIsEnsure:[Z

.field public mRequestVideoAndAudioPermission:Z

.field private mSuccessWritePermissionCalled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mSuccessWritePermissionCalled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mAutoRequestGuideDialog:Z

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mRequestVideoAndAudioPermission:Z

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    iput-object v1, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mIsEnsure:[Z

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/playercommon/activities/BasePermissionActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->y0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic q0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->w0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic r0(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->v0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->z0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/playercommon/activities/BasePermissionActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->A0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic u0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->x0(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic v0(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic w0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static synthetic x0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lv34;->i()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "packagename"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x83

    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_1
    check-cast p0, Landroid/app/Activity;

    invoke-static {p1, p2, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "BasePermissionActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic z0(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final synthetic A0(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->isRestrictPermissionGuideShow()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "BasePermissionActivity"

    const-string v0, "permissionDialog cancel"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public addRegisterMountListener()V
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f()Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->p(Lcom/transsion/playercommon/utils/storage/MountPointManager$a;)V

    return-void
.end method

.method public afterGpdrPermission()V
    .locals 3

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->o:Z

    const/16 v1, 0x21

    if-eqz v0, :cond_2

    invoke-static {p0}, Lt08;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->showNewAudioNotificationSdk33PermissionDialog()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->showNewAudioNotificationPermissionDialog(Landroid/content/Context;)V

    :cond_1
    :goto_0
    const-string v0, "is_first_enter_main_activity"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->checkFilePermission()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    const/16 v0, 0x83

    invoke-static {p0, v0}, Lm27;->b(Landroid/content/Context;I)V

    :cond_3
    return-void
.end method

.method public callRequestPermission()V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-static {p0, v0, v1}, Lt08;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public checkFilePermission()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->isHaveFilePermission()Z

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lt08;->n(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lt08;->l(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->showRequestPermissionDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkPermissionDialog()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mIsEnsure:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    const-string v0, "BasePermissionActivity"

    const-string v1, "setCheckPermissionDialog reShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_0
    return-void
.end method

.method public exitAPP()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public isHaveFilePermission()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lt08;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    return v0
.end method

.method public isRestrictPermissionGuideShow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, p1, p2, p3}, Lnx8;->p(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x83

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, p3, :cond_7

    const/16 p3, 0x4d2

    if-eq p1, p3, :cond_6

    const/16 p3, 0x4d4

    if-eq p1, p3, :cond_5

    const/16 p3, 0x4de

    if-eq p1, p3, :cond_4

    const/16 p3, 0x4a39

    if-eq p1, p3, :cond_1

    const/16 p3, 0x4d6

    if-eq p1, p3, :cond_4

    const/16 p3, 0x4d7

    if-eq p1, p3, :cond_4

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onActivityResult mAutoRequestGuideDialog:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mAutoRequestGuideDialog:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mAutoRequestGuideDialog:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->requestFilePermission()V

    goto :goto_2

    :cond_2
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x439

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {p0}, Lt08;->c(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->successWritePermission()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->isRestrictPermissionGuideShow()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->showRequestPermissionDialog()V

    goto :goto_2

    :cond_4
    sput-boolean v2, Laf9;->h:Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p3

    const/16 v1, 0x455

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p3, v1, v4}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-ne p2, v0, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isAlertWindowPermissionGranted()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->onFinishRequestPermission(IZ)V

    goto :goto_2

    :cond_7
    :goto_0
    if-ne p2, v0, :cond_8

    goto :goto_1

    :cond_8
    move v2, v3

    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/transsion/playercommon/activities/BaseActivity;->onFinishRequestPermission(IZ)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->addRegisterMountListener()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f()Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->t(Lcom/transsion/playercommon/utils/storage/MountPointManager$a;)V

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mIsEnsure:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onEjected(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEjected unMountPoint:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BasePermissionActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMounted(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMounted mountPoint:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BasePermissionActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lob0;

    invoke-direct {v2}, Lob0;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "onRequestPermissionsResult POST_NOTIFICATIONS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "have_request_notification_permission"

    invoke-static {p0, v0, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lm27;->e(Z)V

    const/16 v1, 0x84

    if-eq p1, v1, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    :cond_1
    array-length p1, p3

    if-le p1, v2, :cond_2

    aget p1, p3, v0

    if-nez p1, :cond_2

    aget p1, p3, v2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->successWritePermission()V

    invoke-virtual {p0, v1, v2}, Lcom/transsion/playercommon/activities/BaseActivity;->onFinishRequestPermission(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    return-void
.end method

.method public onSdSwap()V
    .locals 1

    const-string p0, "BasePermissionActivity"

    const-string v0, "onSdSwap "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mActivityStart:Z

    iget-boolean v1, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mIsDelayRequestPermission:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lpp3;->u:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->r:Z

    if-nez v1, :cond_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BasePermissionActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/privacy/MarkPointUtil;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/playercommon/utils/UpdateUtils;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->isRestrictPermissionGuideShow()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "file_permission_show"

    invoke-static {p0, v1, v0}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->checkFilePermission()V

    :cond_4
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mActivityStart:Z

    return-void
.end method

.method public onUnMounted(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUnMounted unMountPoint:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BasePermissionActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestAudioPermission()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x82

    invoke-static {p0, v0, v1}, Lt08;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->callRequestPermission()V

    :goto_0
    return-void
.end method

.method public requestFilePermission()V
    .locals 2

    const-string v0, "BasePermissionActivity"

    const-string v1, "requestFilePermission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lt08;->l(Landroid/app/Activity;)V

    return-void
.end method

.method public requestPermissionForAllData(Ljava/util/List;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;IZ)V"
        }
    .end annotation

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p3, v0, :cond_2

    const/16 p3, 0x4d6

    if-ne p2, p3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, p1}, Lkb0;->a(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 p3, 0x4d7

    if-ne p2, p3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    sput p3, Laf9;->i:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, p1}, Llb0;->a(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public requestVideoPermission()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x81

    invoke-static {p0, v0, v1}, Lt08;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->callRequestPermission()V

    :goto_0
    return-void
.end method

.method public showNewAudioNotificationPermissionDialog(Landroid/content/Context;)V
    .locals 5

    const-string v0, "BasePermissionActivity"

    const-string v1, "showNotificationPermissionDialog "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionNewAudioDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v2, Lmb0;

    invoke-direct {v2}, Lmb0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$layout;->dialog_new_audio_notification_permission:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->go_to_open:I

    new-instance v2, Lnb0;

    invoke-direct {v2, p1}, Lnb0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionNewAudioDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionNewAudioDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    invoke-static {}, Lm27;->f()V

    invoke-static {}, Lm27;->g()V

    :cond_1
    return-void
.end method

.method public showNewAudioNotificationSdk33PermissionDialog()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x21
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.audio.ACTION_START_AUDIO_NEW_NOTIFICATION_TEMP_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.transsion.audio.CATEGORY_AUDIO_NEW_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "requestCode"

    const/16 v2, 0x7533

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.audio.activities.LaunchTempActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request System Notification Permission Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BasePermissionActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public showRequestPermissionDialog()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mIsEnsure:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$layout;->dialog_permission_remind:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-ge v3, v5, :cond_1

    sget v3, Lcom/transsion/playercommon/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->permission_only_media_R:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    sget-boolean v3, Lpp3;->j:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/transsion/playercommon/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->permission_all_file_access:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    sget v3, Lcom/transsion/playercommon/R$id;->tv2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-boolean v5, Lpp3;->c:Z

    if-eqz v5, :cond_3

    sget v5, Lcom/transsion/playercommon/R$string;->permission_content_desciption_pre:I

    goto :goto_1

    :cond_3
    sget v5, Lcom/transsion/playercommon/R$string;->permission_content_desciption:I

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    sget v3, Lcom/transsion/playercommon/R$id;->description:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v2, Lcom/transsion/playercommon/activities/BasePermissionActivity$a;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity$a;-><init>(Lcom/transsion/playercommon/activities/BasePermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->permission_go:I

    new-instance v2, Lpb0;

    invoke-direct {v2, p0}, Lpb0;-><init>(Lcom/transsion/playercommon/activities/BasePermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Lqb0;

    invoke-direct {v1}, Lqb0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Lrb0;

    invoke-direct {v1, p0}, Lrb0;-><init>(Lcom/transsion/playercommon/activities/BasePermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const-string p0, "popup_mediafile2"

    invoke-static {v4, p0}, Lp06;->e0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public successWritePermission()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mSuccessWritePermissionCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mSuccessWritePermissionCalled:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->successWritePermissionOnce()V

    :cond_0
    return-void
.end method

.method public successWritePermissionOnce()V
    .locals 0

    return-void
.end method

.method public final synthetic y0(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mIsEnsure:[Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    aput-boolean p2, p1, v0

    invoke-static {}, Lv34;->i()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.setting.ACTION_GET_PERMISSION_DETAILS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-boolean p2, Lpp3;->j:Z

    if-eqz p2, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const-string p2, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    const/16 v1, 0x4a39

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "BasePermissionActivity"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mAutoRequestGuideDialog:Z

    const-string p0, "popup_mediafile2_y"

    const-wide/16 v0, 0x246c

    invoke-static {p2, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
