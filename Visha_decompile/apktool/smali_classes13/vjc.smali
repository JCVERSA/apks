.class public final synthetic Lvjc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvjc;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lvjc;->a:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->n2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
