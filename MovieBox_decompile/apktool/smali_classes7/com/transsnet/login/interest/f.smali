.class public final Lcom/transsnet/login/interest/f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/login/interest/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lkotlin/jvm/functions/Function1;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 12

    .line 1
    const-string v0, "dataList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsnet/login/interest/f;->a:Ljava/util/List;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsnet/login/interest/f;->b:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsnet/login/interest/f;->c:Ljava/util/ArrayList;

    .line 24
    .line 25
    sget p1, Lcom/transsnet/login/R$mipmap;->login_interest_animal_plant:I

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget p2, Lcom/transsnet/login/R$mipmap;->login_interest_sport:I

    .line 32
    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    sget v0, Lcom/transsnet/login/R$mipmap;->login_interest_food:I

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget v1, Lcom/transsnet/login/R$mipmap;->login_interest_game:I

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget v2, Lcom/transsnet/login/R$mipmap;->login_interest_transportation:I

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sget v3, Lcom/transsnet/login/R$mipmap;->login_interest_fitness:I

    .line 56
    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    sget v4, Lcom/transsnet/login/R$mipmap;->login_interest_music:I

    .line 62
    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    sget v5, Lcom/transsnet/login/R$mipmap;->login_interest_animation:I

    .line 68
    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    sget v6, Lcom/transsnet/login/R$mipmap;->login_interest_art:I

    .line 74
    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    sget v7, Lcom/transsnet/login/R$mipmap;->login_interest_travel:I

    .line 80
    .line 81
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    sget v8, Lcom/transsnet/login/R$mipmap;->login_interest_comedy:I

    .line 86
    .line 87
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    sget v9, Lcom/transsnet/login/R$mipmap;->login_interest_fashion:I

    .line 92
    .line 93
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    const/16 v10, 0xc

    .line 98
    .line 99
    new-array v10, v10, [Ljava/lang/Integer;

    .line 100
    .line 101
    const/4 v11, 0x0

    .line 102
    aput-object p1, v10, v11

    .line 103
    .line 104
    const/4 p1, 0x1

    .line 105
    aput-object p2, v10, p1

    .line 106
    .line 107
    const/4 p1, 0x2

    .line 108
    aput-object v0, v10, p1

    .line 109
    .line 110
    const/4 p1, 0x3

    .line 111
    aput-object v1, v10, p1

    .line 112
    .line 113
    const/4 p1, 0x4

    .line 114
    aput-object v2, v10, p1

    .line 115
    .line 116
    const/4 p1, 0x5

    .line 117
    aput-object v3, v10, p1

    .line 118
    .line 119
    const/4 p1, 0x6

    .line 120
    aput-object v4, v10, p1

    .line 121
    .line 122
    const/4 p1, 0x7

    .line 123
    aput-object v5, v10, p1

    .line 124
    .line 125
    const/16 p1, 0x8

    .line 126
    .line 127
    aput-object v6, v10, p1

    .line 128
    .line 129
    const/16 p1, 0x9

    .line 130
    .line 131
    aput-object v7, v10, p1

    .line 132
    .line 133
    const/16 p1, 0xa

    .line 134
    .line 135
    aput-object v8, v10, p1

    .line 136
    .line 137
    const/16 p1, 0xb

    .line 138
    .line 139
    aput-object v9, v10, p1

    .line 140
    .line 141
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p0, Lcom/transsnet/login/interest/f;->d:Ljava/util/ArrayList;

    .line 146
    .line 147
    return-void
.end method

.method public static synthetic g(Lcom/transsnet/login/interest/f;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/login/interest/f;->j(Lcom/transsnet/login/interest/f;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j(Lcom/transsnet/login/interest/f;ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsnet/login/interest/f;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/interest/f;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsnet/login/interest/f;->b:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/transsnet/login/interest/f;->c:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/interest/f;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/interest/f;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Lcom/transsnet/login/interest/f$a;I)V
    .locals 3

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/login/interest/f;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsnet/login/interest/f$a;->g()Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsnet/login/interest/f$a;->f()Landroidx/appcompat/widget/AppCompatImageView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/transsnet/login/interest/f;->d:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "get(...)"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v1, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/transsnet/login/interest/f;->c:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 61
    .line 62
    new-instance v0, Lcom/transsnet/login/interest/e;

    .line 63
    .line 64
    invoke-direct {v0, p0, p2}, Lcom/transsnet/login/interest/e;-><init>(Lcom/transsnet/login/interest/f;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/transsnet/login/interest/f$a;
    .locals 3

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/transsnet/login/interest/f$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget v1, Lcom/transsnet/login/R$layout;->login_item_interest:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "inflate(...)"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p1}, Lcom/transsnet/login/interest/f$a;-><init>(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsnet/login/interest/f$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/login/interest/f;->i(Lcom/transsnet/login/interest/f$a;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/login/interest/f;->k(Landroid/view/ViewGroup;I)Lcom/transsnet/login/interest/f$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
