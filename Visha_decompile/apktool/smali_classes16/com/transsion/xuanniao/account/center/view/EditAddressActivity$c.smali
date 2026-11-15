.class public Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->regionL:I

    if-ne v0, v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    const-class v1, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v0, v0, Ljn7;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v2, v1, Ljn7;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljn7;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getCode(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "countryCode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v0, v0, Ljn7;->f:Ljava/lang/String;

    const-string v1, "countryName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "notShowCode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->f:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->labelL:I

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    sget p1, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->C:I

    sget p1, Lcom/transsion/xuanniao/account/R$id;->blankL:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->u:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, LOppOOO/OppO0pp;

    invoke-direct {v1, p0}, LOppOOO/OppO0pp;-><init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->x:Lep7;

    if-nez p1, :cond_2

    new-instance p1, Lep7;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->label_popupWindow:I

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2, v0, v1}, Lep7;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->x:Lep7;

    iput-object p0, p1, Lep7;->d:Llp7;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->u:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    new-instance v0, LOppOOO/OppO;

    invoke-direct {v0, p0}, LOppOOO/OppO;-><init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V

    const-wide/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method
