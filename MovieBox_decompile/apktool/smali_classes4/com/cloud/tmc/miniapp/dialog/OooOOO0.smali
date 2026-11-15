.class public final Lcom/cloud/tmc/miniapp/dialog/OooOOO0;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/OooOOO0;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

.field public final OooO0o0:Lkotlin/Lazy;

.field public OooO0oO:Ljava/lang/String;

.field public OooO0oo:Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOO0;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO00o:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOOO;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0O0:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOOO0;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0OO:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0Oo:Lkotlin/Lazy;

    .line 52
    .line 53
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOO0O;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o0:Lkotlin/Lazy;

    .line 63
    .line 64
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    .line 65
    .line 66
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    .line 70
    .line 71
    const-string v1, ""

    .line 72
    .line 73
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0oO:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0o;

    .line 76
    .line 77
    invoke-direct {v1, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0o;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 81
    .line 82
    .line 83
    new-instance v1, Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO:Landroid/util/ArrayMap;

    .line 89
    .line 90
    sget v1, Lcom/cloud/tmc/miniapp/R$layout;->mini_layout_bottom_dialog:I

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 93
    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 97
    .line 98
    .line 99
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->fl_container:I

    .line 100
    .line 101
    new-instance v2, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO00o;

    .line 102
    .line 103
    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnChildClickListener(ILcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0O0()Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-nez v1, :cond_0

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO00o()Landroidx/appcompat/widget/AppCompatImageView;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-nez v0, :cond_1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_2

    .line 131
    .line 132
    const/high16 v1, 0x43340000    # 180.0f

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    const/4 v1, 0x0

    .line 136
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 137
    .line 138
    .line 139
    :goto_2
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0O0;

    .line 140
    .line 141
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnCancelListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 145
    .line 146
    .line 147
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0OO;

    .line 148
    .line 149
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 153
    .line 154
    .line 155
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method public final OooO00o(Ljava/lang/String;)V
    .locals 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v2, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 4
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    if-eq v1, v3, :cond_3

    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final OooO0O0()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    return-object v0
.end method

.method public final OooO0OO()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0OO:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method
