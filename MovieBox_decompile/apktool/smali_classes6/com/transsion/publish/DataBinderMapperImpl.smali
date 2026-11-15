.class public Lcom/transsion/publish/DataBinderMapperImpl;
.super Landroidx/databinding/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/DataBinderMapperImpl$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/publish/DataBinderMapperImpl;->a:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/databinding/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;

    .line 9
    .line 10
    invoke-direct {v1}, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/permissionx/guolindev/DataBinderMapperImpl;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/permissionx/guolindev/DataBinderMapperImpl;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/tn/lib/net/DataBinderMapperImpl;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/tn/lib/net/DataBinderMapperImpl;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/tn/lib/thread/DataBinderMapperImpl;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/tn/lib/thread/DataBinderMapperImpl;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/tn/lib/widget/DataBinderMapperImpl;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/tn/lib/widget/DataBinderMapperImpl;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/transsion/ad/DataBinderMapperImpl;

    .line 49
    .line 50
    invoke-direct {v1}, Lcom/transsion/ad/DataBinderMapperImpl;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/transsion/base/dialog/DataBinderMapperImpl;

    .line 57
    .line 58
    invoke-direct {v1}, Lcom/transsion/base/dialog/DataBinderMapperImpl;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/transsion/base/image/DataBinderMapperImpl;

    .line 65
    .line 66
    invoke-direct {v1}, Lcom/transsion/base/image/DataBinderMapperImpl;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/transsion/base/report/DataBinderMapperImpl;

    .line 73
    .line 74
    invoke-direct {v1}, Lcom/transsion/base/report/DataBinderMapperImpl;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/transsion/baselib/DataBinderMapperImpl;

    .line 81
    .line 82
    invoke-direct {v1}, Lcom/transsion/baselib/DataBinderMapperImpl;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    new-instance v1, Lcom/transsion/baseui/DataBinderMapperImpl;

    .line 89
    .line 90
    invoke-direct {v1}, Lcom/transsion/baseui/DataBinderMapperImpl;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/transsion/baseui/utils/DataBinderMapperImpl;

    .line 97
    .line 98
    invoke-direct {v1}, Lcom/transsion/baseui/utils/DataBinderMapperImpl;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance v1, Lcom/transsion/mb/config/DataBinderMapperImpl;

    .line 105
    .line 106
    invoke-direct {v1}, Lcom/transsion/mb/config/DataBinderMapperImpl;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    new-instance v1, Lcom/transsion/player/DataBinderMapperImpl;

    .line 113
    .line 114
    invoke-direct {v1}, Lcom/transsion/player/DataBinderMapperImpl;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/transsion/postdetailapi/DataBinderMapperImpl;

    .line 121
    .line 122
    invoke-direct {v1}, Lcom/transsion/postdetailapi/DataBinderMapperImpl;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    new-instance v1, Lcom/transsion/upload/DataBinderMapperImpl;

    .line 129
    .line 130
    invoke-direct {v1}, Lcom/transsion/upload/DataBinderMapperImpl;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance v1, Lcom/transsnet/flow/event/DataBinderMapperImpl;

    .line 137
    .line 138
    invoke-direct {v1}, Lcom/transsnet/flow/event/DataBinderMapperImpl;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    return-object v0
.end method

.method public b(Landroidx/databinding/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    sget-object p1, Lcom/transsion/publish/DataBinderMapperImpl;->a:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-lez p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string p2, "view must have a tag"

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public c(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/transsion/publish/DataBinderMapperImpl$a;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    return v0
.end method
