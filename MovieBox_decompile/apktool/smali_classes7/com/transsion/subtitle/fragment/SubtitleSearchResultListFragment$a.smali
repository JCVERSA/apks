.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1, p2, p3}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->v0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "KEY_PAGE_NAME"

    .line 10
    .line 11
    invoke-static {p1, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x1

    .line 16
    new-array p2, p2, [Lkotlin/Pair;

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    aput-object p1, p2, p3

    .line 20
    .line 21
    invoke-static {p2}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
