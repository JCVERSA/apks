.class public final Lcom/cloud/tmc/miniapp/base/ShowPageStore;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final showPages:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/miniapp/base/ShowPageData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Stack;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->showPages:Ljava/util/Stack;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final findShowPages()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/miniapp/base/ShowPageData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->showPages:Ljava/util/Stack;

    .line 2
    .line 3
    return-object v0
.end method

.method public final putShowPage(Lcom/cloud/tmc/miniapp/base/ShowPageData;)V
    .locals 1

    .line 1
    const-string v0, "showPageData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->showPages:Ljava/util/Stack;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
