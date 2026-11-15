.class public Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;,
        Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$a;,
        Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;,
        Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;
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
.field public static a:I = 0x0

.field public static b:I = 0x1

.field public static c:I = 0x2

.field public static d:I = 0x3


# instance fields
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/f;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field g:Z

.field private h:Landroid/view/LayoutInflater;

.field private i:Landroid/widget/FrameLayout;

.field private j:Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;

.field private k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->f:Z

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->h:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->k:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->h:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private a(Lcom/mgtv/ssp/adapter/BaseHolder;Lcom/mgtv/ssp/f;)V
    .locals 5

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "bindVideoInfo "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 35
    iget-object v0, p2, Lcom/mgtv/ssp/f;->d:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 36
    check-cast p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;

    if-eqz v0, :cond_7

    .line 37
    iget-boolean p2, p2, Lcom/mgtv/ssp/f;->e:Z

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 38
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->a:Landroid/widget/LinearLayout;

    invoke-static {p0, v1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    goto/16 :goto_3

    .line 39
    :cond_0
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->getIntroList()Ljava/util/List;

    move-result-object p2

    .line 40
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 41
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->c:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    move p0, v4

    goto :goto_0

    .line 42
    :cond_1
    iget-object v2, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->c:Landroid/widget/TextView;

    invoke-static {v2, v4}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    .line 43
    iget-boolean p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->f:Z

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->c:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 44
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    move p0, v3

    :goto_0
    if-eqz p2, :cond_7

    .line 45
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-nez v3, :cond_4

    if-nez p0, :cond_4

    .line 46
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->a:Landroid/widget/LinearLayout;

    invoke-static {p0, v1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    .line 47
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->i:Landroid/view/View;

    invoke-static {p0, v1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    goto :goto_2

    .line 48
    :cond_4
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->a:Landroid/widget/LinearLayout;

    invoke-static {p0, v4}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    .line 49
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->i:Landroid/view/View;

    invoke-static {p0, v4}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    .line 50
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->a:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_5

    .line 51
    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    :cond_5
    if-eqz v3, :cond_6

    .line 52
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->b:Landroid/widget/LinearLayout;

    invoke-static {p0, v4}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    goto :goto_2

    .line 53
    :cond_6
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->b:Landroid/widget/LinearLayout;

    invoke-static {p0, v1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    :goto_2
    if-eqz v3, :cond_7

    .line 54
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;->g:Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;

    invoke-virtual {p0, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailDesAdapter;->a(Ljava/util/List;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private b(I)I
    .locals 0

    .line 2
    sget p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    if-ne p1, p0, :cond_0

    .line 3
    sget p0, Lcom/mgtv/ssp/R$layout;->layout_video_desc:I

    return p0

    .line 4
    :cond_0
    sget p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->d:I

    if-ne p1, p0, :cond_1

    .line 5
    sget p0, Lcom/mgtv/ssp/R$layout;->item_detail_recommend:I

    return p0

    .line 6
    :cond_1
    sget p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a:I

    if-ne p1, p0, :cond_2

    .line 7
    sget p0, Lcom/mgtv/ssp/R$layout;->item_empty:I

    return p0

    .line 8
    :cond_2
    sget p0, Lcom/mgtv/ssp/R$layout;->item_detail_ad:I

    return p0
.end method

.method public static synthetic b(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->k:Landroid/content/Context;

    return-object p0
.end method

.method private b(Lcom/mgtv/ssp/adapter/BaseHolder;Lcom/mgtv/ssp/f;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 9
    iget-boolean p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->g:Z

    if-eqz p0, :cond_0

    .line 10
    check-cast p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;

    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;->c:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    .line 11
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;->b:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    .line 12
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;->a:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p2, Lcom/mgtv/ssp/f;->f:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 13
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;->a:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/mgtv/ssp/f;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;)Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->j:Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;

    return-object p0
.end method

.method private c(Lcom/mgtv/ssp/adapter/BaseHolder;Lcom/mgtv/ssp/f;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 2
    iget-object v3, p2, Lcom/mgtv/ssp/f;->c:Lcom/mgtv/ssp/bean/VideoBean;

    if-eqz v3, :cond_6

    instance-of v3, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/mgtv/ssp/adapter/BaseHolder;->f:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 3
    check-cast p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;

    .line 4
    invoke-virtual {p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->a(Lcom/mgtv/ssp/f;)V

    .line 5
    iget-object v3, p2, Lcom/mgtv/ssp/f;->c:Lcom/mgtv/ssp/bean/VideoBean;

    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 6
    iget-object v4, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getSubTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getReleaseTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    iget-object v4, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->k:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/mgtv/ssp/R$string;->publish_time:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getReleaseTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    iget-boolean p2, p2, Lcom/mgtv/ssp/f;->a:Z

    const/16 v4, 0x8

    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->d:Landroid/widget/TextView;

    invoke-static {p2, v2}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->d:Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    .line 12
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_2

    const/high16 v5, 0x40c00000    # 6.0f

    .line 13
    invoke-static {p2, v5}, Lcom/hunantv/imgo/util/t;->a(Landroid/content/Context;F)I

    move-result p2

    goto :goto_1

    :cond_2
    const/16 p2, 0xc

    .line 14
    :goto_1
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getImgX()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x106000b

    if-nez v5, :cond_3

    .line 15
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->k:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 16
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getImgX()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v5}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v7, p2}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    new-array p2, v0, [Lcom/bumptech/glide/load/Transformation;

    aput-object v6, p2, v2

    aput-object v7, p2, v1

    .line 17
    invoke-virtual {v5, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    .line 18
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    iget-object p2, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->a:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getImgY()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 21
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->k:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 22
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getImgY()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v5}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v7, p2}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    new-array p2, v0, [Lcom/bumptech/glide/load/Transformation;

    aput-object v6, p2, v2

    aput-object v7, p2, v1

    .line 23
    invoke-virtual {v5, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    .line 24
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    iget-object p2, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->a:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 26
    :cond_4
    :goto_2
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->g:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getDuration()I

    move-result p2

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/utils/c;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v3}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIsPay()I

    move-result p0

    if-ne p0, v1, :cond_5

    .line 28
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->h:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    goto :goto_3

    .line 29
    :cond_5
    iget-object p0, p1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;->h:Landroid/widget/TextView;

    invoke-static {p0, v4}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/mgtv/ssp/adapter/BaseHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-direct {p0, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b(I)I

    move-result v0

    .line 5
    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 6
    iget-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->h:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$b;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_0
    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->d:I

    if-ne p2, v1, :cond_1

    .line 9
    iget-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->h:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;

    invoke-direct {p2, p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$d;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 11
    :cond_1
    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c:I

    if-ne p2, v1, :cond_3

    .line 12
    iget-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->h:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->i:Landroid/widget/FrameLayout;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->i:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->i:Landroid/widget/FrameLayout;

    .line 16
    new-instance p2, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$a;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 17
    :cond_3
    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a:I

    if-ne p2, v1, :cond_4

    .line 18
    iget-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->h:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 19
    new-instance p2, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;

    invoke-direct {p2, p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter$c;-><init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 20
    :cond_4
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->h:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 21
    new-instance p2, Lcom/mgtv/ssp/adapter/BaseHolder;

    invoke-direct {p2, p0}, Lcom/mgtv/ssp/adapter/BaseHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public a(I)Lcom/mgtv/ssp/f;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 32
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-object v1

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/f;

    return-object p0
.end method

.method public a(Lcom/mgtv/ssp/adapter/BaseHolder;I)V
    .locals 2
    .param p1    # Lcom/mgtv/ssp/adapter/BaseHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-virtual {p0, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a(I)Lcom/mgtv/ssp/f;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 23
    iget v0, p2, Lcom/mgtv/ssp/f;->b:I

    .line 24
    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    if-ne v0, v1, :cond_0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a(Lcom/mgtv/ssp/adapter/BaseHolder;Lcom/mgtv/ssp/f;)V

    goto :goto_0

    .line 26
    :cond_0
    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->d:I

    if-ne v0, v1, :cond_2

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c(Lcom/mgtv/ssp/adapter/BaseHolder;Lcom/mgtv/ssp/f;)V

    goto :goto_0

    .line 29
    :cond_2
    sget v1, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a:I

    if-ne v0, v1, :cond_3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b(Lcom/mgtv/ssp/adapter/BaseHolder;Lcom/mgtv/ssp/f;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->j:Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/f;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->e:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->g:Z

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->e:Ljava/util/List;

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
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/f;

    if-eqz v0, :cond_0

    iget p0, v0, Lcom/mgtv/ssp/f;->b:I

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/mgtv/ssp/adapter/BaseHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a(Lcom/mgtv/ssp/adapter/BaseHolder;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a(Landroid/view/ViewGroup;I)Lcom/mgtv/ssp/adapter/BaseHolder;

    move-result-object p0

    return-object p0
.end method
