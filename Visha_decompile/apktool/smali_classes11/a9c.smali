.class public final synthetic La9c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La9c;->a:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    return-void
.end method


# virtual methods
.method public final onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, La9c;->a:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->l(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
