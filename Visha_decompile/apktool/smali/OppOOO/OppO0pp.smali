.class public LOppOOO/OppO0pp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V
    .locals 0

    iput-object p1, p0, LOppOOO/OppO0pp;->b:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, LOppOOO/OppO0pp;->b:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->blankL:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOppOOO/OppO0pp;->b:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->u:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    new-instance v1, LOppOOO/OppO0pp$OppO00p;

    invoke-direct {v1, p0}, LOppOOO/OppO0pp$OppO00p;-><init>(LOppOOO/OppO0pp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
