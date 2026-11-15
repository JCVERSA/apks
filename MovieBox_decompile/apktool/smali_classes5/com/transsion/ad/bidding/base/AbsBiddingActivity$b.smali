.class public final Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

.field final synthetic b:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;->c(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;II)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->t0(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 1
    const-string p3, "resource"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "model"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "dataSource"

    .line 12
    .line 13
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    instance-of p2, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    move-object p2, p1

    .line 21
    check-cast p2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->start()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->S(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 p3, 0x1

    .line 33
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-lez p2, :cond_1

    .line 45
    .line 46
    if-lez p1, :cond_1

    .line 47
    .line 48
    iget-object p3, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 49
    .line 50
    iget-object p4, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    .line 51
    .line 52
    new-instance p5, Lcom/transsion/ad/bidding/base/p;

    .line 53
    .line 54
    invoke-direct {p5, p4, p3, p2, p1}, Lcom/transsion/ad/bidding/base/p;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    return p1
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    .line 1
    const-string p2, "target"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/GlideException;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string p4, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25 --> "

    .line 22
    .line 23
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p2, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->U(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$b;->b(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
