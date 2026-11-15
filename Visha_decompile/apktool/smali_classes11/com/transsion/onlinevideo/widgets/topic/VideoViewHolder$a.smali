.class public Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->C(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

.field public final synthetic d:Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder$a;->d:Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;

    iput-object p2, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder$a;->c:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder$a;->c:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder$a;->c:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder$a;->c:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, v0, v1, p0}, Ld06;->f(JJLjava/lang/String;)V

    :cond_0
    return-void
.end method
