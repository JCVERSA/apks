.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/adapter/r;

.field public final synthetic c:Lcom/transsion/home/bean/RankingListItem;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/adapter/r;Lcom/transsion/home/bean/RankingListItem;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/p;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/p;->b:Lcom/transsion/home/adapter/suboperate/adapter/r;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/p;->c:Lcom/transsion/home/bean/RankingListItem;

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/p;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/p;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/p;->b:Lcom/transsion/home/adapter/suboperate/adapter/r;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/p;->c:Lcom/transsion/home/bean/RankingListItem;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/p;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/adapter/suboperate/adapter/r;->B1(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/adapter/r;Lcom/transsion/home/bean/RankingListItem;ILandroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
