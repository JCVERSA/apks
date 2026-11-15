.class public final Lcom/therouter/inject/RecyclerLruCache;
.super Landroid/util/LruCache;
.source "source.java"


# instance fields
.field private a:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/therouter/inject/RecyclerLruCache$mListener$1;->INSTANCE:Lcom/therouter/inject/RecyclerLruCache$mListener$1;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/therouter/inject/RecyclerLruCache;->a:Lkotlin/jvm/functions/Function3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function3;)V
    .locals 1

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/therouter/inject/RecyclerLruCache;->a:Lkotlin/jvm/functions/Function3;

    .line 7
    .line 8
    return-void
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/therouter/inject/RecyclerLruCache;->a:Lkotlin/jvm/functions/Function3;

    .line 5
    .line 6
    invoke-interface {p1, p2, p3, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method
