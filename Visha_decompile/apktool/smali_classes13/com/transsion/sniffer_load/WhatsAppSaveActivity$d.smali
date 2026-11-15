.class public Lcom/transsion/sniffer_load/WhatsAppSaveActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


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

    iput-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$d;->a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$d;->a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->x0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Lcom/transsion/widgets/CustomViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$d;->a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->y0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    move-result-object v0

    iget v0, v0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i:I

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$d;->a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->y0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    move-result-object v0

    iget v0, v0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->k:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$d;->a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-static {v0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->y0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    move-result-object v0

    iget v0, v0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j:I

    :goto_0
    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->b(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$d;->a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-static {p0}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->y0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->F()Z

    move-result v2

    iget p1, p1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->a:I

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v2, p1, v1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->O0(ZIZ)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$d;->a(Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;)V

    return-void
.end method
