.class public Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$b;
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;->b:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;Llb7;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;->b:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->c(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;->b:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->c(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$b;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;Llb7;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;->b:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_tab_overflow_popup_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/transsion/widgetslib/R$id;->os_tab_overflow_popup_item_text:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$b;->b(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$b;Landroid/widget/TextView;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$b;

    :goto_0
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_press_primary_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$b;->a(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$b;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;->b:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->c(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;->b:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->b(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    invoke-static {p3, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->f(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;Landroid/view/View;Z)V

    new-instance p3, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$a;

    invoke-direct {p3, p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$a;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
