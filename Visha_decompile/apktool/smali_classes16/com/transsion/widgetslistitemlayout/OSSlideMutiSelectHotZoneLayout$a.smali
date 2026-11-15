.class public Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->l(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 5

    new-instance v0, Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v3}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v3}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v4}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-lt v3, p1, :cond_0

    add-int/2addr v3, p2

    :cond_0
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->j(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->g(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 6

    new-instance v0, Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v3}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v3}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v4}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-ge v3, p1, :cond_0

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    :cond_0
    add-int v5, p1, p2

    if-lt v3, v5, :cond_1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    :goto_2
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->j(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;->a:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->g(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    return-void
.end method
