.class public Lcom/transsion/playercommon/widgets/SortGroup$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/SortGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public final synthetic c:Lcom/transsion/playercommon/widgets/SortGroup;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/SortGroup;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup$c;->c:Lcom/transsion/playercommon/widgets/SortGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/SortGroup;Lgs9;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/SortGroup$c;-><init>(Lcom/transsion/playercommon/widgets/SortGroup;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/widgets/SortGroup$c;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup$c;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SortGroup$c;->c:Lcom/transsion/playercommon/widgets/SortGroup;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Lcom/transsion/playercommon/widgets/SortItem;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/transsion/playercommon/widgets/SortItem;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SortGroup$c;->c:Lcom/transsion/playercommon/widgets/SortGroup;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/SortGroup;->a(Lcom/transsion/playercommon/widgets/SortGroup;)Lcom/transsion/playercommon/widgets/SortItem$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/SortItem;->setOnSelectedChangeListener(Lcom/transsion/playercommon/widgets/SortItem$a;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SortGroup$c;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SortGroup$c;->c:Lcom/transsion/playercommon/widgets/SortGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/transsion/playercommon/widgets/SortItem;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/playercommon/widgets/SortItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/SortItem;->setOnSelectedChangeListener(Lcom/transsion/playercommon/widgets/SortItem$a;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SortGroup$c;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method
