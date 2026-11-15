.class public final Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->n3(Lcom/transsion/dbdata/beans/media/MediaItem;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

.field public final synthetic b:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;Lcom/transsion/dbdata/beans/media/MediaItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$f;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    iput-object p2, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$f;->b:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput p3, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$f;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$f;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->x2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$f;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$f;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->w2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$f;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->F2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "path"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$f;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->D2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$f;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$f;->b:Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->r1(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;Z)V

    return-void
.end method
