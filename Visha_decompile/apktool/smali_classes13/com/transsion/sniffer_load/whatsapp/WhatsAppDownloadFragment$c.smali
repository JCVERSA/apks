.class public final Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c;
.super Lif7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->Y2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c$a;
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c;->b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-direct {p0}, Lif7;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    const-string v0, "adapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view1"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c;->b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lif7;->OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c;->b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {v1}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->A2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c;->b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, p3, v2}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->E2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c;->b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->v2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c;->b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {p0, v0, p2}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->B2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/view/View;)V

    goto :goto_2

    :cond_0
    iput p3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    iget-object p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    :goto_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    const-string p1, "dl_manager_downloaded_image_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c;->b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-static {p1, p2}, Lraa;->k(Landroid/content/Context;Landroid/net/Uri;)Z

    :cond_2
    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object p1

    iget p2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->k(I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object p1

    iget v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p1, v1, p2}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->i(IZ)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c;->b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->z2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)I

    move-result p1

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->e(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lp06;->y(IZ)Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c;->b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {p1, v0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->G2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :goto_1
    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c;->b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->w2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    :goto_2
    return-void
.end method
