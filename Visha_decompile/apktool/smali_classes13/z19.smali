.class public abstract Lz19;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getFileType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;->W(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Lcom/transsion/sniffer_load/whatsappscan/ScanImageFragment;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getFileType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->c0(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->S(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;

    move-result-object p0

    return-object p0
.end method
