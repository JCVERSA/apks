.class public final Lcom/transsion/usercenter/setting/labelsfeedback/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/setting/labelsfeedback/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

.field private b:Lcom/transsion/usercenter/setting/labelsfeedback/d;

.field private c:Lnv/a;


# direct methods
.method public constructor <init>(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;)V
    .locals 1

    .line 1
    const-string v0, "model"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic g(ILcom/transsion/usercenter/setting/labelsfeedback/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/c;->i(ILcom/transsion/usercenter/setting/labelsfeedback/c;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final i(ILcom/transsion/usercenter/setting/labelsfeedback/c;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/Integer;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p2, v0, v1

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/SetsKt;->h([Ljava/lang/Object;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget-object v0, p1, Lcom/transsion/usercenter/setting/labelsfeedback/c;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getSelectedIndex()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p1, Lcom/transsion/usercenter/setting/labelsfeedback/c;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getSelectedIndex()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ne v1, p0, :cond_2

    .line 49
    .line 50
    move-object p0, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :goto_1
    invoke-virtual {v0, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->setSelectedIndex(Ljava/lang/Integer;)V

    .line 57
    .line 58
    .line 59
    check-cast p2, Ljava/lang/Iterable;

    .line 60
    .line 61
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    iget-object p0, p1, Lcom/transsion/usercenter/setting/labelsfeedback/c;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 86
    .line 87
    invoke-virtual {p0, v2}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->setSelectedId(Ljava/lang/Integer;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p1, Lcom/transsion/usercenter/setting/labelsfeedback/c;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getSelectedIndex()Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    if-eqz p0, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    iget-object p2, p1, Lcom/transsion/usercenter/setting/labelsfeedback/c;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getOptions()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->getId()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p2, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->setSelectedId(Ljava/lang/Integer;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-object p0, p1, Lcom/transsion/usercenter/setting/labelsfeedback/c;->b:Lcom/transsion/usercenter/setting/labelsfeedback/d;

    .line 126
    .line 127
    if-eqz p0, :cond_5

    .line 128
    .line 129
    invoke-interface {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/d;->k(Lcom/transsion/usercenter/setting/labelsfeedback/c;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getOptions()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public h(Lcom/transsion/usercenter/setting/labelsfeedback/c$a;I)V
    .locals 4

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getOptions()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getSelectedIndex()Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, p2, :cond_1

    .line 33
    .line 34
    move v1, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 37
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->i()Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->h()Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->f()Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez p2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->g()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    sget v1, Lcom/transsion/baseui/R$drawable;->bg_radius_top_6_color_white_6p:I

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getOptions()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    sub-int/2addr v1, v2

    .line 82
    if-ne p2, v1, :cond_3

    .line 83
    .line 84
    sget v1, Lcom/transsion/baseui/R$drawable;->bg_radius_bottom_6_color_white_6p:I

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    sget v1, Lcom/tn/lib/widget/R$color;->white_6:I

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->i()Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/b;

    .line 97
    .line 98
    invoke-direct {v0, p2, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/b;-><init>(ILcom/transsion/usercenter/setting/labelsfeedback/c;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Lcom/transsion/usercenter/setting/labelsfeedback/c$a;
    .locals 1

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p2, p1, v0}, Lxu/d0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lxu/d0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "inflate(...)"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;

    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/c;Lxu/d0;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final k(Lnv/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c;->c:Lnv/a;

    .line 2
    .line 3
    return-void
.end method

.method public final l(Lcom/transsion/usercenter/setting/labelsfeedback/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c;->b:Lcom/transsion/usercenter/setting/labelsfeedback/d;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/c;->h(Lcom/transsion/usercenter/setting/labelsfeedback/c$a;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/c;->j(Landroid/view/ViewGroup;I)Lcom/transsion/usercenter/setting/labelsfeedback/c$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
