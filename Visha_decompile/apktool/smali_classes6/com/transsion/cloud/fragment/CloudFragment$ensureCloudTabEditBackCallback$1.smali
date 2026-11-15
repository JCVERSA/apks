.class public final Lcom/transsion/cloud/fragment/CloudFragment$ensureCloudTabEditBackCallback$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudFragment;->ensureCloudTabEditBackCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/transsion/cloud/fragment/CloudFragment$ensureCloudTabEditBackCallback$1",
        "Landroidx/activity/OnBackPressedCallback;",
        "Lzfb;",
        "handleOnBackPressed",
        "()V",
        "clouddrive_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$ensureCloudTabEditBackCallback$1;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudFragment$ensureCloudTabEditBackCallback$1;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {v0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$isInEditMode$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$ensureCloudTabEditBackCallback$1;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$backToPage(Lcom/transsion/cloud/fragment/CloudFragment;)V

    :cond_0
    return-void
.end method
