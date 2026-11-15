.class public Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lye7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

.field public b:Lye7;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Lye7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$e;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$e;->b:Lye7;

    return-void
.end method


# virtual methods
.method public a(Lq7a;I)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$e;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    sub-int/2addr p2, v0

    if-ltz p2, :cond_0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$e;->b:Lye7;

    invoke-interface {p0, p1, p2}, Lye7;->a(Lq7a;I)V

    :cond_0
    return-void
.end method
