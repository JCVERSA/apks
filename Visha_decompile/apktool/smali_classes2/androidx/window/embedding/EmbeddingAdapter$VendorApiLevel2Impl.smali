.class final Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VendorApiLevel2Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;",
        "",
        "(Landroidx/window/embedding/EmbeddingAdapter;)V",
        "translateCompat",
        "Landroidx/window/embedding/SplitInfo;",
        "splitInfo",
        "Landroidx/window/extensions/embedding/SplitInfo;",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/window/embedding/EmbeddingAdapter;


# direct methods
.method public constructor <init>(Landroidx/window/embedding/EmbeddingAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;->this$0:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final translateCompat(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitInfo;
    .locals 5

    const-string/jumbo v0, "splitInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getPrimaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v0

    const-string/jumbo v1, "splitInfo.primaryActivityStack"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/window/embedding/ActivityStack;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/ActivityStack;->getActivities()Ljava/util/List;

    move-result-object v2

    const-string v3, "primaryActivityStack.activities"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/ActivityStack;->isEmpty()Z

    move-result v0

    invoke-direct {v1, v2, v0}, Landroidx/window/embedding/ActivityStack;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getSecondaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v0

    const-string/jumbo v2, "splitInfo.secondaryActivityStack"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/window/embedding/ActivityStack;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/ActivityStack;->getActivities()Ljava/util/List;

    move-result-object v3

    const-string v4, "secondaryActivityStack.activities"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/ActivityStack;->isEmpty()Z

    move-result v0

    invoke-direct {v2, v3, v0}, Landroidx/window/embedding/ActivityStack;-><init>(Ljava/util/List;Z)V

    new-instance v0, Landroidx/window/embedding/SplitInfo;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel2Impl;->this$0:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getSplitAttributes()Landroidx/window/extensions/embedding/SplitAttributes;

    move-result-object p1

    const-string/jumbo v3, "splitInfo.splitAttributes"

    invoke-static {p1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->translate$window_release(Landroidx/window/extensions/embedding/SplitAttributes;)Landroidx/window/embedding/SplitAttributes;

    move-result-object p0

    sget-object p1, Landroidx/window/embedding/EmbeddingAdapter;->Companion:Landroidx/window/embedding/EmbeddingAdapter$Companion;

    invoke-virtual {p1}, Landroidx/window/embedding/EmbeddingAdapter$Companion;->getINVALID_SPLIT_INFO_TOKEN()Landroid/os/Binder;

    move-result-object p1

    invoke-direct {v0, v1, v2, p0, p1}, Landroidx/window/embedding/SplitInfo;-><init>(Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/SplitAttributes;Landroid/os/IBinder;)V

    return-object v0
.end method
