.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Lcom/transsnet/downloader/widget/DownloadView;

.field private final c:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/transsion/home/R$id;->home_sub_pager_item_image:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "findViewById(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->a:Landroid/widget/ImageView;

    .line 23
    .line 24
    sget v0, Lcom/transsion/home/R$id;->sub_operation_banner_download:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Lcom/transsnet/downloader/widget/DownloadView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->b:Lcom/transsnet/downloader/widget/DownloadView;

    .line 36
    .line 37
    sget v0, Lcom/transsion/home/R$id;->sub_operation_banner_title:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast p1, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->c:Landroid/widget/TextView;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final f()Lcom/transsnet/downloader/widget/DownloadView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->b:Lcom/transsnet/downloader/widget/DownloadView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->a:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method
