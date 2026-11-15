.class public Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;
.super Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$c;
    }
.end annotation


# instance fields
.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public s:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$c;

.field public t:Ljava/lang/String;

.field public u:Lcom/transsion/onlinevideo/widgets/VishaShimmerFrameLayout;

.field public v:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->v:J

    sget v0, Lcom/transsion/onlinevideo/R$id;->label_recycleView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->label_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/widgets/VishaShimmerFrameLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->u:Lcom/transsion/onlinevideo/widgets/VishaShimmerFrameLayout;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$c;-><init>(Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->s:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$c;

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$a;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$a;-><init>(Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->t:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;)Lcom/transsion/onlinevideo/widgets/VishaShimmerFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->u:Lcom/transsion/onlinevideo/widgets/VishaShimmerFrameLayout;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->v:J

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lr16;->b(Landroid/view/View;JLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTypeList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->s:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$c;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->s:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$c;

    new-instance v1, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$b;

    invoke-direct {v1, p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$b;-><init>(Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x43c

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->v:J

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->u:Lcom/transsion/onlinevideo/widgets/VishaShimmerFrameLayout;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$3;

    invoke-direct {p2, p0}, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$3;-><init>(Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->t:Ljava/lang/String;

    return-void
.end method
