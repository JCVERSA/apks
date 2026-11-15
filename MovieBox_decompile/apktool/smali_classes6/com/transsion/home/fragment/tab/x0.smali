.class public final synthetic Lcom/transsion/home/fragment/tab/x0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/home/fragment/tab/TrendingFragment;

.field public final synthetic d:Lcom/transsion/home/bean/OperateItem;


# direct methods
.method public synthetic constructor <init>(IILcom/transsion/home/fragment/tab/TrendingFragment;Lcom/transsion/home/bean/OperateItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/home/fragment/tab/x0;->a:I

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/home/fragment/tab/x0;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/fragment/tab/x0;->c:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/home/fragment/tab/x0;->d:Lcom/transsion/home/bean/OperateItem;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/transsion/home/fragment/tab/x0;->a:I

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/home/fragment/tab/x0;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/fragment/tab/x0;->c:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/fragment/tab/x0;->d:Lcom/transsion/home/bean/OperateItem;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/home/fragment/tab/TrendingFragment;->M0(IILcom/transsion/home/fragment/tab/TrendingFragment;Lcom/transsion/home/bean/OperateItem;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
