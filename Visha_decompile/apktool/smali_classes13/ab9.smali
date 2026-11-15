.class public Lab9;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lab9$b;
    }
.end annotation


# instance fields
.field public b:I

.field public c:Z

.field public d:Landroid/content/Context;

.field public e:Lab9$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/transsion/tools/R$layout;->video_direction_item_layout:I

    sget v1, Lcom/transsion/tools/R$id;->dialog_item_text:I

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object p1, p0, Lab9;->d:Landroid/content/Context;

    invoke-static {p1}, Lqqb;->c(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lab9;->c:Z

    iget-object p1, p0, Lab9;->d:Landroid/content/Context;

    invoke-static {p1}, Lqqb;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lab9;->b:I

    return-void
.end method

.method public static bridge synthetic a(Lab9;)I
    .locals 0

    iget p0, p0, Lab9;->b:I

    return p0
.end method

.method public static bridge synthetic b(Lab9;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lab9;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lab9;)Lab9$b;
    .locals 0

    iget-object p0, p0, Lab9;->e:Lab9$b;

    return-object p0
.end method

.method public static bridge synthetic d(Lab9;I)V
    .locals 0

    iput p1, p0, Lab9;->b:I

    return-void
.end method

.method public static bridge synthetic e(Lab9;Z)V
    .locals 0

    iput-boolean p1, p0, Lab9;->c:Z

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/transsion/tools/R$id;->dialog_item_radio_button:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    sget v0, Lcom/transsion/tools/R$id;->dialog_item_dot:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lab9;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-ne p1, v3, :cond_1

    iget-boolean p3, p0, Lab9;->c:Z

    if-nez p3, :cond_1

    invoke-static {}, Lydc;->e()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 p3, 0x4

    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    new-instance p3, Lab9$a;

    invoke-direct {p3, p0, p1}, Lab9$a;-><init>(Lab9;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lab9$b;)V
    .locals 0

    iput-object p1, p0, Lab9;->e:Lab9$b;

    return-void
.end method
