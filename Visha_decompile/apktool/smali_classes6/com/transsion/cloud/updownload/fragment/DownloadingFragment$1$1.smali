.class Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1;->onConnect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1$1;->this$1:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1$1;->this$1:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1;

    iget-object v0, v0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->U0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1$1;->this$1:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->U0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
