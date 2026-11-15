.class public Lcom/bytedance/sdk/openadsdk/uA/TKC;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/uvD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/HiB/uvD<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final Sj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private TKC:Lcom/bytedance/sdk/component/HiB/uvD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/HiB/uvD<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final sP:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "ImageLoaderToViewWrapper"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/uA/TKC;->sP:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/uA/TKC;->Sj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/widget/ImageView;Lcom/bytedance/sdk/component/HiB/uvD;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lcom/bytedance/sdk/component/HiB/uvD<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "ImageLoaderToViewWrapper"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/uA/TKC;->sP:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/uA/TKC;->Sj:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/uA/TKC;->TKC:Lcom/bytedance/sdk/component/HiB/uvD;

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/HiB/uvD;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/uA/TKC;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/uA/TKC;-><init>(Landroid/widget/ImageView;)V

    .line 2
    new-instance p2, Lcom/bytedance/sdk/openadsdk/uA/sP;

    invoke-direct {p2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    return-object p2
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uvD;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            "Lcom/bytedance/sdk/component/HiB/uvD<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bytedance/sdk/component/HiB/uvD;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/uA/TKC;

    invoke-direct {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/uA/TKC;-><init>(Landroid/widget/ImageView;Lcom/bytedance/sdk/component/HiB/uvD;)V

    .line 4
    new-instance p2, Lcom/bytedance/sdk/openadsdk/uA/sP;

    invoke-direct {p2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    return-object p2
.end method


# virtual methods
.method public Sj(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/uA/TKC;->TKC:Lcom/bytedance/sdk/component/HiB/uvD;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/HiB/Ym<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/uA/TKC;->Sj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->sP()Ljava/lang/Object;

    move-result-object v1

    .line 7
    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->sP()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/uA/TKC$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/uA/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/uA/TKC;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/uA/TKC;->TKC:Lcom/bytedance/sdk/component/HiB/uvD;

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V

    :cond_1
    return-void
.end method
