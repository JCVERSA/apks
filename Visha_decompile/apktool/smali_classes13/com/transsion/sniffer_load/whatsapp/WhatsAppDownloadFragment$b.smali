.class public final Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$b;
.super Lhf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->inflateOperationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$b;->e:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    const-string p1, "visha_WhatsAppDownloadFragment"

    invoke-direct {p0, p1}, Lhf7;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$b;->e:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->y2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)Lcom/transsion/playercommon/widgets/AppFootActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$b;->e:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->checkItemIndex(I)I

    move-result p1

    if-nez p1, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    invoke-virtual {p0, v0}, Lhf7;->b(I)V

    invoke-static {v1, p1}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->u2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;I)V

    :cond_1
    return-void
.end method
