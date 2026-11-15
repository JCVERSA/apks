.class public Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->v1(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->f(D)V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1

    new-instance v0, Li8b;

    invoke-direct {v0, p0, p1, p2}, Li8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;D)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->V0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->r0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->r0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->I0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->r0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeleteResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_cloud_TransmitMainFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->J0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->K0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->L0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->a(Z)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->editMode(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    new-instance v1, Lcom/transsion/widgetslib/dialog/c;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->M0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->w0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Lcom/transsion/widgetslib/dialog/c;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->q0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->N0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->delete_progress:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/c;->j(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/c;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->q0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/c;->l()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->x0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Lcom/transsion/widgetslib/dialog/d;)V

    return-void
.end method

.method public final synthetic f(D)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->q0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->q0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/c;->h(I)Lcom/transsion/widgetslib/dialog/c;

    :cond_0
    return-void
.end method
