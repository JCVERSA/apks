.class public Lcom/transsion/onlinevideo/promotion/PromotionDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# instance fields
.field public l:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/ImageView;

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic D(Lcom/transsion/onlinevideo/promotion/PromotionDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->F(Landroid/view/View;)V

    return-void
.end method

.method public static H(ILcom/transsion/dbdata/beans/onlinevideo/PromotionBean;)Lcom/transsion/onlinevideo/promotion/PromotionDialog;
    .locals 2

    new-instance v0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/promotion/PromotionDialog;-><init>()V

    iput p0, v0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->p:I

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "promotion"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic u(Lcom/transsion/onlinevideo/promotion/PromotionDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->I(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Lcom/transsion/onlinevideo/promotion/PromotionDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->E(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/transsion/onlinevideo/promotion/PromotionDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->G(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final synthetic E(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->setHaveDone(Z)V

    invoke-static {}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->c()Lcom/transsion/onlinevideo/promotion/PromotionManager;

    iget-object p1, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    invoke-static {p1}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->g(Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getVipId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p1, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getVipCardId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v3, "VIP"

    const-string v4, "ott_promotion"

    invoke-static/range {v1 .. v6}, Lcom/transsion/onlinevideo/web/VipWebActivity;->K0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "VIP"

    const-string v2, "ott_promotion"

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/onlinevideo/web/VipWebActivity;->I0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getActionTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzz5;->d(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final synthetic F(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final synthetic G(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final I(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    const/16 p2, 0x462

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    sget p0, Lcom/transsion/onlinevideo/R$layout;->dialog_promotion:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget v0, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x462

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x439e0000    # 316.0f

    invoke-static {v2, v3}, Loc2;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Loc2;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/transsion/playercommon/R$color;->transparent:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/onlinevideo/R$id;->go:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->m:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->n:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->o:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "promotion"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    iput-object v0, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    iget-object v2, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getButtonName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_feed_stream_placeholder:I

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object v0, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->l:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getActionTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lzz5;->d(Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lki8;

    invoke-direct {v0, p0}, Lki8;-><init>(Lcom/transsion/onlinevideo/promotion/PromotionDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/onlinevideo/R$id;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lli8;

    invoke-direct {v0, p0}, Lli8;-><init>(Lcom/transsion/onlinevideo/promotion/PromotionDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/onlinevideo/R$id;->close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lmi8;

    invoke-direct {p2, p0}, Lmi8;-><init>(Lcom/transsion/onlinevideo/promotion/PromotionDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    new-instance p2, Lni8;

    invoke-direct {p2, p0}, Lni8;-><init>(Lcom/transsion/onlinevideo/promotion/PromotionDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    iget p1, p0, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->p:I

    if-ne p1, v1, :cond_2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x462

    invoke-virtual {p1, p0, p2}, Lh27;->b(Lh27$b;I)V

    :cond_2
    return-void
.end method

.method public showListDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method
