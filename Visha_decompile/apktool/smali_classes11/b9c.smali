.class public final synthetic Lb9c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;

.field public final synthetic c:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb9c;->b:Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;

    iput-object p2, p0, Lb9c;->c:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lb9c;->b:Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;

    iget-object p0, p0, Lb9c;->c:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->j(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
