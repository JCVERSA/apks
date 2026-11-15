.class public Lcom/transsion/xuanniao/account/comm/widget/ContactInput$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/ContactInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/ContactInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ContactInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ContactInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    sget v0, Lcom/transsion/xuanniao/account/R$color;->xn_line_s:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/xuanniao/account/R$color;->xn_line:I

    :goto_0
    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ContactInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ContactInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->startLogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ContactInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_1

    sget v1, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color_s:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color:I

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/ContactInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->OppO0OO:Lcom/transsion/xuanniao/account/comm/widget/ContactInput$c;

    if-eqz p0, :cond_2

    check-cast p0, Lkp7;

    iget-object p0, p0, Lkp7;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    invoke-static {p0, p2}, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->C0(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;Z)Z

    :cond_2
    return-void
.end method
