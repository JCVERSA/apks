.class public Lcom/transsion/sniffer_load/WhatsAppSaveActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$b;->b:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$b;->b:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-static {p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->w0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$b;->b:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->y0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->E()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$b;->b:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-static {p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->y0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$b;->b:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->y0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->E()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$b;->b:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-static {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->x0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Lcom/transsion/widgets/CustomViewPager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->D(ZI)V

    return-void
.end method
