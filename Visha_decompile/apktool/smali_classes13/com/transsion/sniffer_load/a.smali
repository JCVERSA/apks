.class public Lcom/transsion/sniffer_load/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/transsion/widgetslib/dialog/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/a;->a:Lcom/transsion/widgetslib/dialog/d;

    return-object p0
.end method

.method public b(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$layout;->dialog_for_download_lead:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->image_pic:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    instance-of v2, p1, Lcom/transsion/playercommon/activities/BaseFoldActivity;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/transsion/playercommon/activities/BaseFoldActivity;

    iget-object v3, v2, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object v3, v3, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/transsion/sniffer_load/a$a;

    invoke-direct {v4, p0, v1}, Lcom/transsion/sniffer_load/a$a;-><init>(Lcom/transsion/sniffer_load/a;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v1, p1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/transsion/sniffer_load/R$string;->download_guide_dialog_title:I

    invoke-virtual {v1, p1}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v1, Lcom/transsion/sniffer_load/R$string;->details:I

    new-instance v2, Lcom/transsion/sniffer_load/a$d;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/a$d;-><init>(Lcom/transsion/sniffer_load/a;)V

    invoke-virtual {p1, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v1, Lcom/transsion/sniffer_load/R$string;->cancel:I

    new-instance v2, Lcom/transsion/sniffer_load/a$c;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/a$c;-><init>(Lcom/transsion/sniffer_load/a;)V

    invoke-virtual {p1, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    new-instance v1, Lcom/transsion/sniffer_load/a$b;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/a$b;-><init>(Lcom/transsion/sniffer_load/a;)V

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/dialog/d$a;->s(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/a;->a:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method
