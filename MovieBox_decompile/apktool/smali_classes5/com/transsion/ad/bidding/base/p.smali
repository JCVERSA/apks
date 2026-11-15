.class public final synthetic Lcom/transsion/ad/bidding/base/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/p;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/ad/bidding/base/p;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/ad/bidding/base/p;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/ad/bidding/base/p;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/p;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/p;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/ad/bidding/base/p;->c:I

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/ad/bidding/base/p;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;->a(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
