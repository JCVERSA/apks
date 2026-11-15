.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;
.super Lxy/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->r0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;->b:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;->c:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Lxy/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b(Landroid/content/Context;)Lxy/c;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    new-array v2, v2, [Ljava/lang/Integer;

    .line 18
    .line 19
    aput-object v1, v2, p1

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public c(Landroid/content/Context;I)Lxy/d;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/subtitle/view/SubtitleSearchTabTitleView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/subtitle/view/SubtitleSearchTabTitleView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;->b:Ljava/util/List;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;->c:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 14
    .line 15
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/view/SubtitleSearchTabTitleView;->setTextWithString(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;

    .line 29
    .line 30
    invoke-direct {p1, v1, p2}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method
