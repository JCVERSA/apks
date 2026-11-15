.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$f;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->x0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$f;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$f;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic g(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$f;->h(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final h(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->n0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->r:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$f;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->i0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$f;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$f;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 18
    .line 19
    invoke-static {v3}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->k0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$f;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->getPageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$a;->a(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$f;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->j0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->m0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)Lkotlin/jvm/functions/Function1;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->U0(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Lcom/transsion/subtitle/fragment/h;

    .line 54
    .line 55
    invoke-direct {p1, v1}, Lcom/transsion/subtitle/fragment/h;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->T0(Lkotlin/jvm/functions/Function0;)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$f;->b:Ljava/util/List;

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
