.class public LOppOOO/OppO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OppO00p:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V
    .locals 0

    iput-object p1, p0, LOppOOO/OppO;->OppO00p:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LOppOOO/OppO;->OppO00p:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object v1, v0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->x:Lep7;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->v:Landroid/widget/RelativeLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    iget-object v0, p0, LOppOOO/OppO;->OppO00p:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->w:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/xuanniao/account/R$drawable;->up_arrow_drawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, LOppOOO/OppO;->OppO00p:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->u:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    return-void
.end method
