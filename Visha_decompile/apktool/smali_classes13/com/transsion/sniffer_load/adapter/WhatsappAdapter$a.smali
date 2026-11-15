.class public Lcom/transsion/sniffer_load/adapter/WhatsappAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/chad/library/adapter/base/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter$a;->c:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    iput-object p2, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter$a;->c:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemLongClickListener()Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter$a;->c:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-interface {v0, v1, p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;->onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    const/4 p0, 0x1

    return p0
.end method
