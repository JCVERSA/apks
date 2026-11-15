.class public Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->S(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {v1}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->V(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->S(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {v0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->W(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->X(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {v2}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->V(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lr06;->a(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;I)V

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->R(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcom/transsion/sniffer_load/R$string;->go_download:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->T(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/transsion/sniffer_load/R$string;->download_guide_hint_4:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->R(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcom/transsion/sniffer_load/R$string;->go_download:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->T(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/transsion/sniffer_load/R$string;->download_guide_hint_3:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->R(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcom/transsion/sniffer_load/R$string;->download_guide_button_1:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->T(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/transsion/sniffer_load/R$string;->download_guide_hint_2_a:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {p1}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->R(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcom/transsion/sniffer_load/R$string;->download_guide_button_1:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;->d:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->T(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/transsion/sniffer_load/R$string;->download_search_hint:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
