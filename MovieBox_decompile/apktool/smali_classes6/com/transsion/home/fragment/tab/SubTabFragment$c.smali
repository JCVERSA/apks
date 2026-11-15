.class public final Lcom/transsion/home/fragment/tab/SubTabFragment$c;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/SubTabFragment;->f1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/home/fragment/tab/SubTabFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/SubTabFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$c;->e:Lcom/transsion/home/fragment/tab/SubTabFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$c;->f:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$c;->e:Lcom/transsion/home/fragment/tab/SubTabFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/home/fragment/tab/SubTabFragment;->N0(Lcom/transsion/home/fragment/tab/SubTabFragment;)Lcom/transsion/home/adapter/suboperate/SubTabAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, v0, :cond_2

    .line 33
    .line 34
    iget p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$c;->f:I

    .line 35
    .line 36
    goto :goto_6

    .line 37
    :cond_2
    :goto_1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->SUBJECT:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eq v1, v0, :cond_7

    .line 51
    .line 52
    :goto_2
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->SINGLE_SUBJECT:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eq v1, v0, :cond_7

    .line 66
    .line 67
    :goto_3
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-ne p1, v0, :cond_6

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_6
    :goto_4
    iget p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$c;->f:I

    .line 84
    .line 85
    goto :goto_6

    .line 86
    :cond_7
    :goto_5
    const/4 p1, 0x1

    .line 87
    :goto_6
    return p1
.end method
