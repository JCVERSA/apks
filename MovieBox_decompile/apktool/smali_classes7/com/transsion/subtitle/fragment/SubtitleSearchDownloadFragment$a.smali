.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;
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
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p2}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->o0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 7
    .line 8
    .line 9
    const-string p2, "EXTRA_NAME"

    .line 10
    .line 11
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "KEY_PAGE_NAME"

    .line 16
    .line 17
    invoke-static {p2, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 p3, 0x2

    .line 22
    new-array p3, p3, [Lkotlin/Pair;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    aput-object p1, p3, v1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    aput-object p2, p3, p1

    .line 29
    .line 30
    invoke-static {p3}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method
