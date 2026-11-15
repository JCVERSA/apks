.class public final synthetic Lkjc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1, p2}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->X1(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
