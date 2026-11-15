.class public Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->U0(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;)Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->U0(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;)Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConnect(I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->W0(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->X0(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p1

    new-instance v0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1$1;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1$1;-><init>(Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->V0(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    new-instance v1, Lrib;

    invoke-direct {v1, p0}, Lrib;-><init>(Lcom/transsion/cloud/updownload/fragment/UploadingFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
