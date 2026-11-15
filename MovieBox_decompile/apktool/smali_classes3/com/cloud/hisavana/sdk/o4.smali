.class public final Lcom/cloud/hisavana/sdk/o4;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lcom/cloud/hisavana/sdk/s4;)V
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "measureListener"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o4;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 20
    .line 21
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o4;->b:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o4;->c:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/s4;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/o4;->c(Lcom/cloud/hisavana/sdk/s4;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/cloud/hisavana/sdk/s4;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->d(Landroid/view/View;)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-interface {p0, v0, v1}, Lcom/cloud/hisavana/sdk/s4;->a(D)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o4;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o4;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o4;->c:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/cloud/hisavana/sdk/s4;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v2, Lcom/cloud/hisavana/sdk/n4;

    .line 22
    .line 23
    invoke-direct {v2, v1, v0}, Lcom/cloud/hisavana/sdk/n4;-><init>(Lcom/cloud/hisavana/sdk/s4;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    const-class v2, Lcom/cloud/hisavana/sdk/o4;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    instance-of v1, p1, Lcom/cloud/hisavana/sdk/o4;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o4;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 28
    .line 29
    check-cast p1, Lcom/cloud/hisavana/sdk/o4;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/o4;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 32
    .line 33
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move v0, v2

    .line 41
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o4;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
