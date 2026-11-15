.class public Lcom/bumptech/glide/util/ViewPreloadSizeProvider;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<",
        "TT;>;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;"
    }
.end annotation


# instance fields
.field private size:[I

.field private viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    .line 4
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    return-void
.end method


# virtual methods
.method public getPreloadSize(Ljava/lang/Object;II)[I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    array-length p2, p1

    .line 8
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public onSizeReady(II)V
    .locals 0

    .line 1
    filled-new-array {p1, p2}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    .line 9
    .line 10
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method
