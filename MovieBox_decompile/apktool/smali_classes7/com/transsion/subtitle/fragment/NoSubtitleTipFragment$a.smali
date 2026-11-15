.class public final Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;
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
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;
    .locals 3

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/subtitle/fragment/NoSubtitleTipFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "EXTRA_NAME"

    .line 12
    .line 13
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "KEY_VIDEO_START_CHECK"

    .line 22
    .line 23
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "KEY_PAGE_NAME"

    .line 28
    .line 29
    invoke-static {v1, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const/4 v1, 0x3

    .line 34
    new-array v1, v1, [Lkotlin/Pair;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object p2, v1, v2

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    aput-object p1, v1, p2

    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    aput-object p3, v1, p1

    .line 44
    .line 45
    invoke-static {v1}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method
