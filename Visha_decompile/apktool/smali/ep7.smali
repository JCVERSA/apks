.class public Lep7;
.super Lqk7;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public d:Llp7;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;II)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lqk7;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;II)V

    invoke-static {p1}, Lep7;->d(Landroid/content/Context;)[Ljava/lang/String;

    return-void
.end method

.method public static d(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_label_list_1:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_label_list_2:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_label_list_3:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_label_list_4:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lqk7;->b:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "getLayoutInflater mContext is null"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "LabelPopupWindow"

    invoke-static {v2, v0}, Lcom/transsion/core/log/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_0
    sget v2, Lcom/transsion/xuanniao/account/R$layout;->xn_label_layout:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lqk7;->c:Landroid/view/View;

    return-object v0
.end method

.method public c()V
    .locals 4

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lqk7;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/transsion/xuanniao/account/R$layout;->xn_popup_item_layout:I

    iget-object v3, p0, Lqk7;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lep7;->d(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v1, p0, Lqk7;->c:Landroid/view/View;

    const-class v2, Landroid/widget/ListView;

    invoke-static {v1, v2}, Lfp7;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-nez v1, :cond_0

    const-string p0, "initView listView is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "LabelPopupWindow"

    invoke-static {v0, p0}, Lcom/transsion/core/log/LogUtils;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lco7;

    invoke-direct {v0, p0}, Lco7;-><init>(Lep7;)V

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p0, p0, Lep7;->d:Llp7;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Llp7;->V()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lep7;->d:Llp7;

    invoke-interface {p1, p3}, Llp7;->k0(I)V

    invoke-virtual {p0}, Lep7;->dismiss()V

    return-void
.end method
