.class public final synthetic Lcom/transsion/home/fragment/rank/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/rank/RankListFragment;

.field public final synthetic b:Lcom/transsion/home/bean/RankAllData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/fragment/rank/l;->a:Lcom/transsion/home/fragment/rank/RankListFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/fragment/rank/l;->b:Lcom/transsion/home/bean/RankAllData;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/l;->a:Lcom/transsion/home/fragment/rank/RankListFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/fragment/rank/l;->b:Lcom/transsion/home/bean/RankAllData;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/home/fragment/rank/RankListFragment;->d0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
