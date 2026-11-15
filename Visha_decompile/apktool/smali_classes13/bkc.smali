.class public final synthetic Lbkc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

.field public final synthetic c:Lcom/transsion/playercommon/activities/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkc;->b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    iput-object p2, p0, Lbkc;->c:Lcom/transsion/playercommon/activities/BaseActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbkc;->b:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    iget-object p0, p0, Lbkc;->c:Lcom/transsion/playercommon/activities/BaseActivity;

    check-cast p1, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->c2(Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
