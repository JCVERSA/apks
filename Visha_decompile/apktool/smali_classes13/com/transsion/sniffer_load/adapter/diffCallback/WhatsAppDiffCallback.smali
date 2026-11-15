.class public Lcom/transsion/sniffer_load/adapter/diffCallback/WhatsAppDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/diffCallback/WhatsAppDiffCallback;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/sniffer_load/adapter/diffCallback/WhatsAppDiffCallback;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/diffCallback/WhatsAppDiffCallback;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/diffCallback/WhatsAppDiffCallback;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/diffCallback/WhatsAppDiffCallback;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/diffCallback/WhatsAppDiffCallback;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getNewListSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/diffCallback/WhatsAppDiffCallback;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOldListSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/diffCallback/WhatsAppDiffCallback;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
