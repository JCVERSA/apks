.class public Lcom/transsion/xuanniao/account/comm/widget/EmailInput$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/EmailInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/EmailInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    sget v0, Lcom/transsion/xuanniao/account/R$color;->xn_line_s:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/xuanniao/account/R$color;->xn_line:I

    :goto_0
    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_2

    sget p2, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color_s:I

    goto :goto_1

    :cond_2
    sget p2, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color:I

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
