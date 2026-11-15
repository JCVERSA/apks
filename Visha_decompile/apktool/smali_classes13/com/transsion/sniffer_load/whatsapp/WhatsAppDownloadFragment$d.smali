.class public final Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$d;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$d;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->C2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$d;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->C2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$d;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->C2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)V

    return-void
.end method

.method public onChange(ZLjava/util/Collection;I)V
    .locals 0

    const-string p1, "uris"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$d;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->C2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)V

    return-void
.end method
