.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;
.super Lcom/transsion/baseui/util/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;->c(Landroid/content/Context;I)Lxy/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;->e:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;->f:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/baseui/util/f;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;->e:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljt/f;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Ljt/f;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;->f:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
