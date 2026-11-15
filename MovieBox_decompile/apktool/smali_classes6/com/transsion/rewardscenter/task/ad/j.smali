.class public final synthetic Lcom/transsion/rewardscenter/task/ad/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/ad/m;

.field public final synthetic b:Lcom/transsion/rewardscenter/task/ad/v$a;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/m;Lcom/transsion/rewardscenter/task/ad/v$a;ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/j;->a:Lcom/transsion/rewardscenter/task/ad/m;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/j;->b:Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/transsion/rewardscenter/task/ad/j;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/rewardscenter/task/ad/j;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/j;->a:Lcom/transsion/rewardscenter/task/ad/m;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/j;->b:Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsion/rewardscenter/task/ad/j;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/rewardscenter/task/ad/j;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 8
    .line 9
    check-cast p1, Landroid/view/View;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/rewardscenter/task/ad/m;->z(Lcom/transsion/rewardscenter/task/ad/m;Lcom/transsion/rewardscenter/task/ad/v$a;ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
