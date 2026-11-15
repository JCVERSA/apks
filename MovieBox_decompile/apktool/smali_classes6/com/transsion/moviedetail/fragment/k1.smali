.class public final synthetic Lcom/transsion/moviedetail/fragment/k1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/Cover;

.field public final synthetic b:Lcom/transsion/moviedetail/fragment/StillsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetail/fragment/StillsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/k1;->a:Lcom/transsion/moviedetailapi/bean/Cover;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/k1;->b:Lcom/transsion/moviedetail/fragment/StillsFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/k1;->a:Lcom/transsion/moviedetailapi/bean/Cover;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/k1;->b:Lcom/transsion/moviedetail/fragment/StillsFragment;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/moviedetail/fragment/StillsFragment;->b0(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetail/fragment/StillsFragment;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
