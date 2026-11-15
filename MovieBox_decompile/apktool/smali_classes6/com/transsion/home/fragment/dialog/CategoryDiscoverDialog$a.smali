.class public final Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0012B\u001d\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/home/bean/HomeTabItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "data",
        "",
        "currentTabIndex",
        "<init>",
        "(Ljava/util/List;I)V",
        "holder",
        "item",
        "",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomeTabItem;)V",
        "F",
        "I",
        "G",
        "a",
        "Home_psRelease"
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
.field private static final G:Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a$a;

.field public static final H:I

.field public static final I:F = 22.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final J:F = 120.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final F:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;->G:Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;->H:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/home/bean/HomeTabItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsion/home/R$layout;->item_category_discover_layout:I

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 9
    .line 10
    .line 11
    iput p2, p0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;->F:I

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic B1(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Landroid/view/View;ZZJ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;->D1(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Landroid/view/View;ZZJ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final D1(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Landroid/view/View;ZZJ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p3, :cond_1

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomeTabItem;)V
    .locals 9

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/transsion/home/R$id;->tvCategoryName:I

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomeTabItem;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 18
    .line 19
    .line 20
    sget v0, Lcom/transsion/home/R$id;->tvCategoryName:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget v1, Lcom/transsion/home/R$id;->ivCategoryNameImage:I

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    const/16 v3, 0x8

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomeTabItem;->getNameImage()Lcom/transsion/home/bean/NameImage;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/transsion/home/bean/NameImage;->getUrl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v5, v4

    .line 59
    :goto_0
    if-eqz v5, :cond_6

    .line 60
    .line 61
    invoke-static {v5}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/high16 v6, 0x42f00000    # 120.0f

    .line 76
    .line 77
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    const/high16 v7, 0x41b00000    # 22.0f

    .line 82
    .line 83
    invoke-static {v7}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomeTabItem;->getNameImage()Lcom/transsion/home/bean/NameImage;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    if-eqz p2, :cond_2

    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/transsion/home/bean/NameImage;->getWidth()Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    if-eqz p2, :cond_2

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    int-to-float p2, p2

    .line 104
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move-object p2, v4

    .line 114
    :goto_1
    if-eqz p2, :cond_3

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-static {p2, v6}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    const/4 p2, -0x2

    .line 126
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    instance-of v8, v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 131
    .line 132
    if-eqz v8, :cond_4

    .line 133
    .line 134
    move-object v4, v6

    .line 135
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 136
    .line 137
    :cond_4
    if-eqz v4, :cond_5

    .line 138
    .line 139
    iput p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 140
    .line 141
    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 142
    .line 143
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    sget-object p2, Lni/f;->a:Lni/f$a;

    .line 156
    .line 157
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, p1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    sget p2, Lcom/tn/lib/widget/R$color;->transparent:I

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Lni/f$b;->i(I)Lni/f$b;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    new-instance p2, Lcom/transsion/home/fragment/dialog/c;

    .line 175
    .line 176
    invoke-direct {p2, v1, v5, v0}, Lcom/transsion/home/fragment/dialog/c;-><init>(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Landroid/view/View;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2}, Lni/f$b;->b(Lkotlin/jvm/functions/Function3;)Lni/f$b;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 184
    .line 185
    .line 186
    :cond_6
    :goto_3
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/HomeTabItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomeTabItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
