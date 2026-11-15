.class public final Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;
.super Lcom/transsion/baseui/fragment/BaseListFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseListFragment<",
        "Lp6/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 22\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00013B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J%\u0010\u000b\u001a\u00020\u00052\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u0019\u0010\u0010\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u001b\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00160\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0004J\u000f\u0010!\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008!\u0010\"R\u001b\u0010(\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u0018\u0010+\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0018\u0010-\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010*R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100\u00a8\u00064"
    }
    d2 = {
        "Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;",
        "Lcom/transsion/baseui/fragment/BaseListFragment;",
        "Lp6/a;",
        "<init>",
        "()V",
        "",
        "W0",
        "Lkotlin/Pair;",
        "",
        "Lcom/transsion/share/bean/PostType;",
        "data",
        "T0",
        "(Lkotlin/Pair;)V",
        "a1",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "initViewData",
        "initViewModel",
        "initListener",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "m0",
        "()Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "G0",
        "s0",
        "()Ljava/lang/String;",
        "loadMore",
        "getPageStateLayoutTitle",
        "retryLoadData",
        "lazyLoadData",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "Lcom/transsion/usercenter/profile/see/h;",
        "b",
        "Lkotlin/Lazy;",
        "U0",
        "()Lcom/transsion/usercenter/profile/see/h;",
        "mProfileSeeViewModel",
        "c",
        "Ljava/lang/String;",
        "mUserId",
        "d",
        "mTitleTxt",
        "",
        "e",
        "I",
        "mType",
        "f",
        "a",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final f:Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$a;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->f:Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 7
    .line 8
    .line 9
    const-class v1, Lcom/transsion/usercenter/profile/see/h;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$special$$inlined$viewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$special$$inlined$viewModels$default$3;

    .line 21
    .line 22
    invoke-direct {v3, v0, p0}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->b:Lkotlin/Lazy;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->e:I

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic O0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->Z0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Ljava/lang/Integer;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->Y0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Lcom/transsion/publish/bean/SubjectCollection;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->V0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Lcom/transsion/publish/bean/SubjectCollection;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->X0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->b1(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final T0(Lkotlin/Pair;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_9

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lp6/a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    sget-object v6, Lcom/transsion/share/bean/PostType;->STAFF_TYPE:Lcom/transsion/share/bean/PostType;

    .line 36
    .line 37
    if-ne v5, v6, :cond_0

    .line 38
    .line 39
    instance-of v5, v4, Lcom/transsion/moviedetailapi/bean/Staff;

    .line 40
    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    move-object v5, v4

    .line 44
    check-cast v5, Lcom/transsion/moviedetailapi/bean/Staff;

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Staff;->getStaffId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_3

    .line 59
    .line 60
    :cond_0
    instance-of v5, v4, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;

    .line 61
    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    check-cast v4, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 v3, -0x1

    .line 85
    :cond_3
    :goto_1
    if-lez v3, :cond_9

    .line 86
    .line 87
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sget-object v4, Lcom/transsion/share/bean/PostType;->STAFF_TYPE:Lcom/transsion/share/bean/PostType;

    .line 92
    .line 93
    if-eq v1, v4, :cond_4

    .line 94
    .line 95
    sget-object v1, Lgx/b;->a:Lgx/b$a;

    .line 96
    .line 97
    invoke-virtual {v1}, Lgx/b$a;->a()Lgx/b;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v1, v2, p1}, Lgx/b;->i(ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G0(I)V

    .line 117
    .line 118
    .line 119
    :cond_5
    add-int/lit8 p1, v3, -0x1

    .line 120
    .line 121
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    instance-of v1, v1, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;

    .line 126
    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-ge v3, v1, :cond_6

    .line 134
    .line 135
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    instance-of v0, v0, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;

    .line 140
    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G0(I)V

    .line 150
    .line 151
    .line 152
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_8

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    :cond_8
    if-gtz v2, :cond_9

    .line 163
    .line 164
    const/4 p1, 0x0

    .line 165
    const/4 v0, 0x1

    .line 166
    invoke-static {p0, p1, v0, p1}, Lcom/transsion/baseui/fragment/BaseListFragment;->K0(Lcom/transsion/baseui/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_9
    return-void
.end method

.method private final U0()Lcom/transsion/usercenter/profile/see/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/usercenter/profile/see/h;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final V0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Lcom/transsion/publish/bean/SubjectCollection;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/Pair;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/publish/bean/SubjectCollection;->getSubjectId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->T0(Lkotlin/Pair;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method private final W0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->U0()Lcom/transsion/usercenter/profile/see/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/see/h;->n()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/transsion/usercenter/profile/see/f;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/profile/see/f;-><init>(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$b;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final X0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;)Lkotlin/Unit;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->B0()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p0, v1, v0, v2}, Lcom/transsion/baseui/fragment/BaseListFragment;->D0(Lcom/transsion/baseui/fragment/BaseListFragment;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;->getItems()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->A0()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/transsion/baseui/fragment/BaseListFragment;->I0(Z)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-static {p0, v2, v0, v2}, Lcom/transsion/baseui/fragment/BaseListFragment;->K0(Lcom/transsion/baseui/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-eqz p0, :cond_5

    .line 63
    .line 64
    check-cast p1, Ljava/util/Collection;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-eqz p0, :cond_5

    .line 75
    .line 76
    check-cast p1, Ljava/util/Collection;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->N0()V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p0
.end method

.method private static final Y0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->T0(Lkotlin/Pair;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final Z0(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "requireActivity(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    instance-of v1, v0, Lcom/transsion/usercenter/profile/see/ProfileSeeActivity;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget p0, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->e:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne p0, v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/transsion/usercenter/profile/see/ProfileSeeActivity;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {v0, p0}, Lcom/transsion/usercenter/profile/see/ProfileSeeActivity;->H0(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method private final a1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/transsion/usercenter/profile/see/e;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsion/usercenter/profile/see/e;-><init>(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 7
    .line 8
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 15
    .line 16
    const-class v1, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v1, "getName(...)"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    .line 29
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v1, p0

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static final b1(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move v3, v0

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lp6/a;

    .line 36
    .line 37
    instance-of v5, v4, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    check-cast v4, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;->getSubjectId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    move v2, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catch_0
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 75
    .line 76
    const/4 p1, 0x2

    .line 77
    const/4 v1, 0x0

    .line 78
    const-string v2, " callback change data fail"

    .line 79
    .line 80
    invoke-static {p0, v2, v0, p1, v1}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0
.end method


# virtual methods
.method public G0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->U0()Lcom/transsion/usercenter/profile/see/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->c:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    :cond_0
    iget v2, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->e:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/transsion/usercenter/profile/see/h;->q(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public initListener()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->initListener()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lcom/transsion/usercenter/profile/see/d;

    .line 5
    .line 6
    invoke-direct {v6, p0}, Lcom/transsion/usercenter/profile/see/d;-><init>(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 10
    .line 11
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 18
    .line 19
    const-class v1, Lcom/transsion/publish/bean/SubjectCollection;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v1, "getName(...)"

    .line 26
    .line 27
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 31
    .line 32
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x0

    .line 41
    move-object v1, p0

    .line 42
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public initViewData()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->initViewData()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->I0(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-virtual {v0, v1}, Lt6/f;->E(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public initViewModel()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->W0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->U0()Lcom/transsion/usercenter/profile/see/h;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/see/h;->l()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/transsion/usercenter/profile/see/b;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/profile/see/b;-><init>(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$b;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->U0()Lcom/transsion/usercenter/profile/see/h;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/see/h;->k()Landroidx/lifecycle/LiveData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/transsion/usercenter/profile/see/c;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/profile/see/c;-><init>(Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$b;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->a1()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public lazyLoadData()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->U0()Lcom/transsion/usercenter/profile/see/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->c:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    :cond_0
    iget v2, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->e:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/transsion/usercenter/profile/see/h;->o(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public loadMore()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->lazyLoadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public m0()Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/usercenter/profile/see/adapter/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/usercenter/profile/see/adapter/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "movie_audio_archies"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v1, "load_user_id"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string v0, "load_title_txt"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    iput-object v0, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const-string v0, "load_type"

    .line 42
    .line 43
    iget v1, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->e:I

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget p1, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->e:I

    .line 51
    .line 52
    :goto_1
    iput p1, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->e:I

    .line 53
    .line 54
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->F0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public s0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method
