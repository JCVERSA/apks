.class public Lcom/transsion/sniffer_load/WhatsappPermissionActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/MountPointManager$a;


# instance fields
.field public N:Lcom/transsion/widgetslib/dialog/d;

.field public O:Z

.field public P:Z

.field public Q:I

.field public final R:[Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->O:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->P:Z

    iput v1, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->Q:I

    new-array v0, v0, [Z

    aput-boolean v1, v0, v1

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->R:[Z

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/sniffer_load/WhatsappPermissionActivity;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->t0(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/sniffer_load/WhatsappPermissionActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->v0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/sniffer_load/WhatsappPermissionActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->u0(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public exitAPP()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "WhatsappPermissionActivity"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, p1, p2, p3}, Lnx8;->p(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x4d4

    const/4 v0, -0x1

    if-eq p1, p3, :cond_4

    const/16 p3, 0x4a39

    if-eq p1, p3, :cond_3

    const/16 p3, 0x4d6

    if-eq p1, p3, :cond_1

    const/16 p3, 0x4d7

    if-eq p1, p3, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->onFinishRequestPermission(IZ)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->requestFilePermission()V

    goto :goto_1

    :cond_4
    if-ne p2, v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "WhatsappPermissionActivity"

    const-string v0, "onCreate()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f()Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->p(Lcom/transsion/playercommon/utils/storage/MountPointManager$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhatsappPermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f()Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->t(Lcom/transsion/playercommon/utils/storage/MountPointManager$a;)V

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->R:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onEjected(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMounted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WhatsappPermissionActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/16 v0, 0x7b

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto/16 :goto_3

    :cond_0
    array-length p1, p3

    if-ne p1, v3, :cond_a

    aget p1, p3, v2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->successWritePermission()V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->s0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->w0(Z)V

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->exitAPP()V

    goto :goto_3

    :cond_3
    array-length p1, p3

    if-le p1, v3, :cond_a

    aget p1, p3, v2

    if-nez p1, :cond_4

    aget p1, p3, v3

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->successWritePermission()V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    goto :goto_3

    :cond_4
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move p1, v2

    goto :goto_1

    :cond_6
    :goto_0
    move p1, v3

    :goto_1
    sget-boolean p2, Lpp3;->a:Z

    if-nez p2, :cond_7

    if-nez p1, :cond_8

    :cond_7
    iget p2, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->Q:I

    if-nez p2, :cond_9

    if-eqz p1, :cond_9

    :cond_8
    invoke-virtual {p0, v2}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->w0(Z)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v3}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->w0(Z)V

    :goto_2
    iget p1, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->Q:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->Q:I

    :cond_a
    :goto_3
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WhatsappPermissionActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSdSwap()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onStart()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhatsappPermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/privacy/MarkPointUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->b(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onStop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WhatsappPermissionActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnMounted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestFilePermission()V
    .locals 2

    const-string v0, "WhatsappPermissionActivity"

    const-string v1, "requestFilePermission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->w0(Z)V

    return-void
.end method

.method public final s0()Z
    .locals 3

    sget-boolean v0, Lpp3;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isNeverShowPermissionDialog="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WhatsappPermissionActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public successWritePermission()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->P:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->P:Z

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->successWritePermissionOnce()V

    :cond_0
    return-void
.end method

.method public successWritePermissionOnce()V
    .locals 0

    return-void
.end method

.method public final synthetic t0(ZLandroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "popup_mediafile2_n"

    goto :goto_0

    :cond_0
    const-string p1, "popup_mediafile1_n"

    :goto_0
    const-wide/16 p2, 0x246c

    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public final synthetic u0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0}, Likc;->b(Landroid/content/Context;)Z

    return-void
.end method

.method public final synthetic v0(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {p0}, Likc;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final w0(Z)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->R:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$layout;->dialog_permission_remind:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->whats_app_permission_content:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    sget v3, Lcom/transsion/playercommon/R$id;->tv2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->whats_app_permission_notice:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    sget v3, Lcom/transsion/playercommon/R$id;->description:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->whats_app_permission_guide:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    sget v3, Lcom/transsion/playercommon/R$id;->content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->whats_app_permission_explanation:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    sget v2, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v3, Ljlc;

    invoke-direct {v3, p0, p1}, Ljlc;-><init>(Lcom/transsion/sniffer_load/WhatsappPermissionActivity;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->permission_go:I

    new-instance v2, Lklc;

    invoke-direct {v2, p0}, Lklc;-><init>(Lcom/transsion/sniffer_load/WhatsappPermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Lllc;

    invoke-direct {v1, p0}, Lllc;-><init>(Lcom/transsion/sniffer_load/WhatsappPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->N:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    if-eqz p1, :cond_1

    const-string p0, "popup_mediafile2"

    goto :goto_0

    :cond_1
    const-string p0, "popup_mediafile1"

    :goto_0
    const-wide/16 v0, 0x246c

    invoke-static {v4, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    return-void
.end method
