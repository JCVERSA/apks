.class public Li07;
.super Lh07;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lh07;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const-string v0, "vd_hide_popup_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lh07;->b:Landroid/view/LayoutInflater;

    if-eqz p0, :cond_1

    sget v1, Lcom/transsion/tools/R$layout;->layout_new_feature_privite_room:I

    invoke-virtual {p0, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/transsion/tools/R$id;->tv_text_2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-boolean v1, Lpp3;->c:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/tools/R$string;->new_feature_private_room_text_2_pre:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/tools/R$string;->new_feature_private_room_text_2:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0

    :cond_1
    return-object v0
.end method
