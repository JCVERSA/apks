.class public Lcom/transsion/widgetslib/widget/FootOperationBar$l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/FootOperationBar$l$b;
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/FootOperationBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Li34;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar$l;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->m(Lcom/transsion/widgetslib/widget/FootOperationBar;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->m(Lcom/transsion/widgetslib/widget/FootOperationBar;)Ljava/util/List;

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
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$layout;->os_foot_opt_bar_popup_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/transsion/widgetslib/widget/FootOperationBar$l$b;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar$l$b;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar$l;Li34;)V

    sget v0, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_popup_item_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar$l$b;->b(Lcom/transsion/widgetslib/widget/FootOperationBar$l$b;Landroid/widget/TextView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/widgetslib/widget/FootOperationBar$l$b;

    :goto_0
    invoke-static {p3}, Lcom/transsion/widgetslib/widget/FootOperationBar$l$b;->a(Lcom/transsion/widgetslib/widget/FootOperationBar$l$b;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->m(Lcom/transsion/widgetslib/widget/FootOperationBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->i(Lcom/transsion/widgetslib/widget/FootOperationBar;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    invoke-static {p3, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->v(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Z)V

    iget-object p3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$l;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->q(Lcom/transsion/widgetslib/widget/FootOperationBar;)I

    move-result p3

    add-int/2addr p1, p3

    new-instance p3, Lcom/transsion/widgetslib/widget/FootOperationBar$l$a;

    invoke-direct {p3, p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar$l$a;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar$l;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
