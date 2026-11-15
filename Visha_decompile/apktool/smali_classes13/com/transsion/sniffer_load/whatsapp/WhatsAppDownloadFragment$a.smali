.class public final Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;
    .locals 2

    new-instance p0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-direct {p0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "support_theme_background"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method
