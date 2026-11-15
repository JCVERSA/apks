.class public final synthetic Lcom/transsion/home/fragment/tab/p1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/p1;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/transsion/home/fragment/tab/p1;->b:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/home/fragment/tab/p1;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/p1;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/home/fragment/tab/p1;->b:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/home/fragment/tab/p1;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsion/home/fragment/tab/TrendingFragment;->C0(Lcom/transsion/home/fragment/tab/TrendingFragment;ZI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
