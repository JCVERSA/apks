.class public final synthetic Lakc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lakc;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lakc;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->k2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;Z)V

    return-void
.end method
