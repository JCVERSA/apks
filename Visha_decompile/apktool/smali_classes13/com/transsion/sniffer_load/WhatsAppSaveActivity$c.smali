.class public Lcom/transsion/sniffer_load/WhatsAppSaveActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$c;->a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 1

    const-string p0, "status"

    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getPosition()I

    move-result p1

    const-string v0, "dl_wa_tab_cl"

    invoke-static {v0, p0, p1}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onTabUnselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 0

    return-void
.end method
