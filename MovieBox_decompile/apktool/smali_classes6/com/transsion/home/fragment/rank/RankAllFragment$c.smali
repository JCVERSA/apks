.class final Lcom/transsion/home/fragment/rank/RankAllFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/rank/RankAllFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/rank/RankAllFragment;

.field final synthetic b:Lcom/transsion/home/bean/RankAllData;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/rank/RankAllFragment;Lcom/transsion/home/bean/RankAllData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->b:Lcom/transsion/home/bean/RankAllData;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/i;I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p2, 0x3

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    invoke-interface {p1}, Landroidx/compose/runtime/i;->h()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/i;->G()V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    const-string v1, "com.transsion.home.fragment.rank.RankAllFragment.initView.<anonymous>.<anonymous> (RankAllFragment.kt:134)"

    .line 26
    .line 27
    const v2, 0x2b102aa

    .line 28
    .line 29
    .line 30
    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object p2, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    .line 34
    .line 35
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    const-string v1, "defaultCategory"

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move-object p2, v0

    .line 50
    :goto_1
    if-eqz p2, :cond_5

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_4

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move-object v1, p2

    .line 60
    goto :goto_3

    .line 61
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->b:Lcom/transsion/home/bean/RankAllData;

    .line 62
    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/transsion/home/bean/RankAllData;->getCurrentCategoryType()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_3

    .line 70
    :cond_6
    move-object v1, v0

    .line 71
    :goto_3
    if-eqz p2, :cond_c

    .line 72
    .line 73
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_7

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_7
    iget-object p2, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->b:Lcom/transsion/home/bean/RankAllData;

    .line 81
    .line 82
    if-eqz p2, :cond_a

    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/transsion/home/bean/RankAllData;->getCategoryList()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-eqz p2, :cond_a

    .line 89
    .line 90
    check-cast p2, Ljava/lang/Iterable;

    .line 91
    .line 92
    instance-of v2, p2, Ljava/util/Collection;

    .line 93
    .line 94
    if-eqz v2, :cond_8

    .line 95
    .line 96
    move-object v2, p2

    .line 97
    check-cast v2, Ljava/util/Collection;

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_8

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_a

    .line 115
    .line 116
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lcom/transsion/home/bean/CategoryType;

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/transsion/home/bean/CategoryType;->getType()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_9

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_a
    :goto_4
    iget-object p2, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->b:Lcom/transsion/home/bean/RankAllData;

    .line 134
    .line 135
    if-eqz p2, :cond_b

    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/transsion/home/bean/RankAllData;->getCurrentCategoryType()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :cond_b
    move-object v1, v0

    .line 142
    :cond_c
    :goto_5
    iget-object p2, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    .line 143
    .line 144
    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->b:Lcom/transsion/home/bean/RankAllData;

    .line 145
    .line 146
    if-eqz v0, :cond_d

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/transsion/home/bean/RankAllData;->getCategoryList()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-nez v0, :cond_e

    .line 153
    .line 154
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    :cond_e
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/transsion/home/fragment/rank/RankAllFragment;->i0(Ljava/util/List;Ljava/lang/String;Landroidx/compose/runtime/i;I)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_f

    .line 168
    .line 169
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 170
    .line 171
    .line 172
    :cond_f
    :goto_6
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/i;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->a(Landroidx/compose/runtime/i;I)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p1
.end method
