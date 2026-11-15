.class public Lcom/transsion/tools/activities/LockScreenPlayerPreviewActivity;
.super Lcom/transsion/playercommon/activities/BasePermissionActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/tools/R$layout;->activity_lock_screen_preview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    new-instance p1, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;

    invoke-direct {p1}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;-><init>()V

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;

    const-string p1, "playpage"

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->U(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method
