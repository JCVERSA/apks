.class public final Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/SelectView$PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/util/List;

.field public final synthetic c:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/SelectView$PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;->c:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;->c:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;->a(Lcom/yandex/div/internal/widget/SelectView$PopupWindow;)Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const v2, 0x1010087

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const-string v3, "resources.displayMetrics"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Landroid/view/View;->setTextAlignment(I)V

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;->a()Landroid/widget/TextView;

    move-result-object p2

    :cond_0
    const-string p3, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p2, p3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public final d(Ljava/util/List;)V
    .locals 1

    const-string v0, "newItems"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;->b:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method
