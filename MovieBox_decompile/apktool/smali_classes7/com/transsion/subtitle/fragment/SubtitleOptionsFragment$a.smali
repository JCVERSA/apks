.class public final Lcom/transsion/subtitle/fragment/SubtitleOptionsFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/subtitle/fragment/SubtitleOptionsFragment;
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
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleOptionsFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/subtitle/helper/LocalVideoUiType;Ljava/lang/Integer;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Landroid/view/ViewGroup;Lcom/transsion/subtitle/helper/d;Ljava/lang/String;)Lcom/transsion/subtitle/fragment/SubtitleOptionsFragment;
    .locals 8

    .line 1
    new-instance v7, Lcom/transsion/subtitle/fragment/SubtitleOptionsFragment;

    .line 2
    .line 3
    invoke-direct {v7}, Lcom/transsion/subtitle/fragment/SubtitleOptionsFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v0, v7

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v4, p4

    .line 11
    move-object v5, p5

    .line 12
    move-object v6, p6

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/transsion/subtitle/fragment/SubtitleOptionsFragment;->g0(Lcom/transsion/subtitle/fragment/SubtitleOptionsFragment;Lcom/transsion/subtitle/helper/LocalVideoUiType;Ljava/lang/Integer;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Landroid/view/ViewGroup;Lcom/transsion/subtitle/helper/d;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "KEY_PAGE_NAME"

    .line 17
    .line 18
    invoke-static {p1, p7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x1

    .line 23
    new-array p2, p2, [Lkotlin/Pair;

    .line 24
    .line 25
    const/4 p3, 0x0

    .line 26
    aput-object p1, p2, p3

    .line 27
    .line 28
    invoke-static {p2}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v7, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    return-object v7
.end method
