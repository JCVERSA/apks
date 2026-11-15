.class public final Lcom/transsnet/downloader/popup/q;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsnet/downloader/popup/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/popup/q;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/popup/q;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsnet/downloader/popup/q;->a:Lcom/transsnet/downloader/popup/q;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;)[I
    .locals 7

    .line 1
    const-string v0, "anchorView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "contentView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {p2, v4, v4}, Landroid/view/View;->measure(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    const/4 v6, 0x1

    .line 44
    aget v0, v0, v6

    .line 45
    .line 46
    sub-int/2addr v2, v0

    .line 47
    sub-int/2addr v2, p1

    .line 48
    if-ge v2, v5, :cond_0

    .line 49
    .line 50
    sub-int/2addr v3, p2

    .line 51
    aput v3, v1, v4

    .line 52
    .line 53
    sub-int/2addr v0, v5

    .line 54
    aput v0, v1, v6

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    sub-int/2addr v3, p2

    .line 58
    aput v3, v1, v4

    .line 59
    .line 60
    add-int/2addr v0, p1

    .line 61
    aput v0, v1, v6

    .line 62
    .line 63
    :goto_0
    return-object v1
.end method
