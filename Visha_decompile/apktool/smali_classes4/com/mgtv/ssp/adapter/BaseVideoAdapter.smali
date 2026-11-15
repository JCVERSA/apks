.class public abstract Lcom/mgtv/ssp/adapter/BaseVideoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;,
        Lcom/mgtv/ssp/adapter/BaseVideoAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mgtv/ssp/adapter/BaseHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static i:Ljava/lang/String; = "update_countDown"


# instance fields
.field a:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$b;

.field b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;

.field c:Landroidx/recyclerview/widget/RecyclerView;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoBean;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mgmi/ssp/NativeExpressADView;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgmi/ssp/NativeExpressAD;",
            ">;>;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public j:I

.field k:Lcom/mgmi/ssp/ADSize;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->h:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->m:Ljava/lang/String;

    new-instance v0, Lcom/mgmi/ssp/ADSize;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ssp/ADSize;-><init>(II)V

    iput-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->k:Lcom/mgmi/ssp/ADSize;

    iput-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->l(I)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->l:Z

    return p1
.end method

.method public static synthetic b(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->n:I

    return p1
.end method

.method private l(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/bean/VideoBean;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getAd()Lcom/mgtv/ssp/bean/AdBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/bean/VideoBean;

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/VideoBean;->getAd()Lcom/mgtv/ssp/bean/AdBean;

    move-result-object p0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/ssp/bean/AdBean;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/mgtv/ssp/adapter/BaseHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 9
    new-instance p1, Lcom/mgtv/ssp/adapter/AdHolder;

    invoke-direct {p1, p0}, Lcom/mgtv/ssp/adapter/AdHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b(Landroid/view/ViewGroup;I)Lcom/mgtv/ssp/adapter/BaseHolder;

    move-result-object p0

    return-object p0
.end method

.method public a(I)Lcom/mgtv/ssp/bean/VideoBean;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/bean/VideoBean;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public a(II)V
    .locals 3

    .line 54
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eeee updateRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-le p1, p2, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, p2, :cond_1

    .line 55
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 56
    new-instance p2, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$3;

    invoke-direct {p2, p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$3;-><init>(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 57
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :goto_0
    return-void

    .line 58
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(IZ)V
    .locals 3

    .line 70
    :try_start_0
    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    .line 71
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eeee noticeScreenChanged@ postion ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isLand = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ssp/NativeExpressAD;

    invoke-virtual {p0}, Lcom/mgmi/ssp/NativeExpressAD;->noticeFullScreen()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ssp/NativeExpressAD;

    invoke-virtual {p0}, Lcom/mgmi/ssp/NativeExpressAD;->noticeHarlfScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 75
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract a(Lcom/mgtv/ssp/adapter/BaseHolder;I)V
.end method

.method public a(Lcom/mgtv/ssp/adapter/BaseHolder;ILjava/util/List;)V
    .locals 4
    .param p1    # Lcom/mgtv/ssp/adapter/BaseHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/ssp/adapter/BaseHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/bean/VideoBean;

    .line 12
    instance-of v1, p1, Lcom/mgtv/ssp/adapter/AdHolder;

    if-eqz v1, :cond_6

    .line 13
    check-cast p1, Lcom/mgtv/ssp/adapter/AdHolder;

    .line 14
    iput p2, p1, Lcom/mgtv/ssp/adapter/BaseHolder;->e:I

    .line 15
    iget-object v1, p1, Lcom/mgtv/ssp/adapter/AdHolder;->c:Lcom/hunantv/imgo/adview/AdTopBar;

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 16
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->i:Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v1, :cond_7

    .line 18
    iget p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->n:I

    if-ltz p0, :cond_7

    .line 19
    invoke-virtual {v1, p0}, Lcom/hunantv/imgo/adview/AdTopBar;->setTvAdCountDownText(I)V

    .line 20
    const-string p0, "\u5e7f\u544a\u5269\u4f59"

    invoke-virtual {v1, p0}, Lcom/hunantv/imgo/adview/AdTopBar;->setTvAdSkipText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 21
    :cond_1
    :goto_0
    iget-object p3, p1, Lcom/mgtv/ssp/adapter/AdHolder;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    iget-object p3, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 23
    iget-object p3, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 24
    iget-object p3, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mgmi/ssp/NativeExpressADView;

    if-eqz p3, :cond_3

    .line 25
    iget-object v0, p1, Lcom/mgtv/ssp/adapter/AdHolder;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 26
    invoke-virtual {p3}, Lcom/mgmi/ssp/NativeExpressADView;->getView()Landroid/view/View;

    move-result-object p3

    .line 27
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p3}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;

    if-eqz v0, :cond_2

    .line 29
    invoke-interface {v0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;->a()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(IZ)V

    .line 30
    :cond_2
    invoke-virtual {p1, v2}, Lcom/mgtv/ssp/adapter/AdHolder;->a(Z)V

    .line 31
    iget-object p1, p1, Lcom/mgtv/ssp/adapter/AdHolder;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->c(I)V

    goto :goto_1

    .line 33
    :cond_3
    invoke-virtual {p0, v0, p2, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/bean/VideoBean;ILcom/mgtv/ssp/adapter/BaseHolder;)V

    goto :goto_1

    .line 34
    :cond_4
    invoke-virtual {p0, v0, p2, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/bean/VideoBean;ILcom/mgtv/ssp/adapter/BaseHolder;)V

    goto :goto_1

    .line 35
    :cond_5
    invoke-virtual {p0, v0, p2, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/bean/VideoBean;ILcom/mgtv/ssp/adapter/BaseHolder;)V

    goto :goto_1

    .line 36
    :cond_6
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eeee onBindViewHolder position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/adapter/BaseHolder;I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public a(Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$a;

    return-void
.end method

.method public a(Lcom/mgtv/ssp/adapter/BaseVideoAdapter$b;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$b;

    return-void
.end method

.method public a(Lcom/mgtv/ssp/bean/VideoBean;ILcom/mgtv/ssp/adapter/BaseHolder;)V
    .locals 10

    if-eqz p3, :cond_2

    .line 38
    iget-object v0, p3, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 39
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eeee loadAd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    new-instance v9, Lcom/mgmi/ssp/TParams;

    invoke-direct {v9}, Lcom/mgmi/ssp/TParams;-><init>()V

    .line 41
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/mgmi/ssp/TParams;->setNid(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v9, p2}, Lcom/mgmi/ssp/TParams;->setPosition(I)V

    .line 43
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->m:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/mgmi/ssp/TParams;->setFrom(Ljava/lang/String;)V

    .line 44
    sget-object v5, Lcom/hunantv/imgo/data/MgtvPlayerConstants;->MGSDK_PPID:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoBean;->getAd()Lcom/mgtv/ssp/bean/AdBean;

    move-result-object v0

    iget-object v6, v0, Lcom/mgtv/ssp/bean/AdBean;->aid:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoBean;->getAd()Lcom/mgtv/ssp/bean/AdBean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/mgtv/ssp/bean/AdBean;->isClosed:Z

    if-eqz p1, :cond_1

    return-void

    .line 47
    :cond_1
    iget-object p1, p3, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    .line 48
    new-instance p1, Lcom/mgmi/ssp/NativeExpressAD;

    iget-object v4, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->k:Lcom/mgmi/ssp/ADSize;

    new-instance v7, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;

    invoke-direct {v7, p0, p2, p3}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$1;-><init>(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;ILcom/mgtv/ssp/adapter/BaseHolder;)V

    const/4 v8, 0x5

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/mgmi/ssp/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/mgmi/ssp/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/NativeExpressADListener;ILcom/mgmi/ssp/TParams;)V

    const/4 p3, -0x1

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0, v0, p3}, Lcom/mgmi/ssp/NativeExpressAD;->loadAd(ZII)V

    .line 50
    new-instance p3, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;

    invoke-direct {p3, p0, p2}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$2;-><init>(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;I)V

    invoke-virtual {p1, p3}, Lcom/mgmi/ssp/NativeExpressAD;->setADListenerPro(Lcom/mgmi/ssp/NativeInnerListener;)V

    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeAd:position "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "@@nativeAd"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "lyzzzz"

    invoke-static {v1, p3, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 52
    iget-object p3, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->f:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 61
    iget-object v2, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->j:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    goto :goto_1

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/ssp/NativeExpressADView;

    if-eqz v3, :cond_3

    .line 64
    invoke-virtual {v3}, Lcom/mgmi/ssp/NativeExpressADView;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 65
    invoke-virtual {v3}, Lcom/mgmi/ssp/NativeExpressADView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->i(I)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->h(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 2
    return-void
.end method

.method public abstract b(Landroid/view/ViewGroup;I)Lcom/mgtv/ssp/adapter/BaseHolder;
.end method

.method public b()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->j:I

    return-void
.end method

.method public b(IZ)V
    .locals 3

    .line 10
    iget-boolean v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->l:Z

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eeee noticeScreenChanged@ i ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isLand = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ssp/NativeExpressAD;

    invoke-virtual {p0}, Lcom/mgmi/ssp/NativeExpressAD;->noticeFullScreen()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ssp/NativeExpressAD;

    invoke-virtual {p0}, Lcom/mgmi/ssp/NativeExpressAD;->noticeHarlfScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 17
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public b(Lcom/mgtv/ssp/adapter/BaseHolder;I)V
    .locals 1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/adapter/BaseHolder;ILjava/util/List;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 7
    const-string v0, "immersion"

    iget-object v1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    iget p1, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->j:I

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->i(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->f:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ssp/NativeExpressAD;

    invoke-virtual {v0}, Lcom/mgmi/ssp/NativeExpressAD;->paused()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume@ postion ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ssp/NativeExpressAD;

    invoke-virtual {p0}, Lcom/mgmi/ssp/NativeExpressAD;->preLoadView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 4

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 14
    iget-object v2, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    iget-object v3, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/ssp/NativeExpressAD;

    invoke-virtual {v2}, Lcom/mgmi/ssp/NativeExpressAD;->noticeFullScreen()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/ssp/NativeExpressAD;

    invoke-virtual {v2}, Lcom/mgmi/ssp/NativeExpressAD;->noticeHarlfScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public d()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mgmi/ssp/NativeExpressADView;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method public d(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$4;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$4;-><init>(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;I)V

    const-wide/16 p0, 0xa

    invoke-static {v0, p0, p1}, Lcom/mgtv/thirdsdk/playcore/utils/e;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public e(I)V
    .locals 1

    new-instance v0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$5;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$5;-><init>(Lcom/mgtv/ssp/adapter/BaseVideoAdapter;I)V

    const-wide/16 p0, 0xa

    invoke-static {v0, p0, p1}, Lcom/mgtv/thirdsdk/playcore/utils/e;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$b;->a(I)V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a:Lcom/mgtv/ssp/adapter/BaseVideoAdapter$b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter$b;->b(I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/bean/VideoBean;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public h(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause@ postion ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ssp/NativeExpressAD;

    invoke-virtual {p0}, Lcom/mgmi/ssp/NativeExpressAD;->paused()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public i(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eeee  startPlay resume  @ postion ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume@ postion ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ssp/NativeExpressAD;

    invoke-virtual {p0}, Lcom/mgmi/ssp/NativeExpressAD;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public j(I)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/bean/VideoBean;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getAd()Lcom/mgtv/ssp/bean/AdBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/bean/VideoBean;

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/VideoBean;->getAd()Lcom/mgtv/ssp/bean/AdBean;

    move-result-object p0

    iget-boolean p0, p0, Lcom/mgtv/ssp/bean/AdBean;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public k(I)Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ssp/NativeExpressADView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ssp/NativeExpressADView;->isVideoType()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/ssp/adapter/BaseHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->b(Lcom/mgtv/ssp/adapter/BaseHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/mgtv/ssp/adapter/BaseHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Lcom/mgtv/ssp/adapter/BaseHolder;ILjava/util/List;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Landroid/view/ViewGroup;I)Lcom/mgtv/ssp/adapter/BaseHolder;

    move-result-object p0

    return-object p0
.end method
