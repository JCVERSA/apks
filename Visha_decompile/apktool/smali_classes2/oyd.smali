.class public final Loyd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public b:Ljava/lang/ref/WeakReference;

.field public c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Ly30;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measureListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loyd;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Loyd;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Loyd;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Ly30;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    invoke-static {p0, p1}, Loyd;->c(Ly30;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    return-void
.end method

.method public static final c(Ly30;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 2

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->d(Landroid/view/View;)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ly30;->a(D)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Loyd;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Loyd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    iget-object p0, p0, Loyd;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly30;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v1, Lnyd;

    invoke-direct {v1, p0, v0}, Lnyd;-><init>(Ly30;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Loyd;

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    instance-of v1, p1, Loyd;

    if-eqz v1, :cond_3

    iget-object p0, p0, Loyd;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    check-cast p1, Loyd;

    iget-object p1, p1, Loyd;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Loyd;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
