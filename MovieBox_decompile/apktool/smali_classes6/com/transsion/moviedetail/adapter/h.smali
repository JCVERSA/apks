.class public final synthetic Lcom/transsion/moviedetail/adapter/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/adapter/i$a;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/h;->a:Lcom/transsion/moviedetail/adapter/i$a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/moviedetail/adapter/h;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/moviedetail/adapter/h;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/h;->a:Lcom/transsion/moviedetail/adapter/i$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/moviedetail/adapter/h;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/moviedetail/adapter/h;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/moviedetail/adapter/i$a;->C1(Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
