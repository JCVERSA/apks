.class public Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->ccLine:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    sget v1, Lcom/transsion/xuanniao/account/R$color;->xn_line_s:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/xuanniao/account/R$color;->xn_line:I

    :goto_0
    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0Op:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$b;

    if-eqz p1, :cond_1

    check-cast p1, Lbp7;

    iget-object p1, p1, Lbp7;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    invoke-static {p1, p2}, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->B0(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;Z)Z

    :cond_1
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO0O0:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    sget p1, Lcom/transsion/xuanniao/account/R$style;->font_black_14:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/transsion/xuanniao/account/R$style;->font_black_14_t40:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method
