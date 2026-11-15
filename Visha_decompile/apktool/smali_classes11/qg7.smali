.class public final synthetic Lqg7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

.field public final synthetic e:Lcom/chad/library/adapter/base/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Ljava/util/List;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqg7;->b:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    iput-object p2, p0, Lqg7;->c:Ljava/util/List;

    iput-object p3, p0, Lqg7;->d:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

    iput-object p4, p0, Lqg7;->e:Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    iget-object v0, p0, Lqg7;->b:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    iget-object v1, p0, Lqg7;->c:Ljava/util/List;

    iget-object v2, p0, Lqg7;->d:Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

    iget-object v3, p0, Lqg7;->e:Lcom/chad/library/adapter/base/BaseViewHolder;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->c(Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;Ljava/util/List;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
