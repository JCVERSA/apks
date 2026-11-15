.class public final Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;
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
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;
    .locals 1

    .line 1
    const-string v0, "subtitleList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1, p2, p3}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->m0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Ljava/util/List;ZLcom/transsion/baselib/db/download/DownloadBean;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "KEY_PAGE_NAME"

    .line 15
    .line 16
    invoke-static {p1, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x1

    .line 21
    new-array p2, p2, [Lkotlin/Pair;

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    aput-object p1, p2, p3

    .line 25
    .line 26
    invoke-static {p2}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
