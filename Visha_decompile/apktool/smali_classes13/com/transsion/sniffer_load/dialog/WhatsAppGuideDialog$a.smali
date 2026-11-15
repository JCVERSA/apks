.class public Lcom/transsion/sniffer_load/dialog/WhatsAppGuideDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/dialog/WhatsAppGuideDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/dialog/WhatsAppGuideDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/dialog/WhatsAppGuideDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/dialog/WhatsAppGuideDialog$a;->b:Lcom/transsion/sniffer_load/dialog/WhatsAppGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/dialog/WhatsAppGuideDialog$a;->b:Lcom/transsion/sniffer_load/dialog/WhatsAppGuideDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    const-string p0, "dl_wa_guide_go"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method
