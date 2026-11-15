.class public final Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field final synthetic b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->a:Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->a:Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerBean;->getAutoPlay()Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->B(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->E(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Ljava/lang/Runnable;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->B(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Landroid/os/Handler;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->E(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Ljava/lang/Runnable;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->z(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    .line 64
    .line 65
    invoke-static {v0, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->G(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->a:Lcom/transsion/home/bean/OperateItem;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 v0, 0x1

    .line 88
    :goto_1
    rem-int/2addr p1, v0

    .line 89
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->a:Lcom/transsion/home/bean/OperateItem;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/transsion/home/bean/BannerData;

    .line 108
    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getAverageHueLight()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    iget-object v7, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    .line 124
    .line 125
    const/4 v5, 0x4

    .line 126
    const/4 v6, 0x0

    .line 127
    const-string v2, "#"

    .line 128
    .line 129
    const-string v3, "#ff"

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    move-object v1, v0

    .line 133
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    const-string v2, "#"

    .line 138
    .line 139
    const-string v3, "#00"

    .line 140
    .line 141
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/4 v1, 0x4

    .line 146
    const/4 v2, 0x0

    .line 147
    invoke-static {v8, v0, v2, v1, v2}, Lsk/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable$Orientation;ILjava/lang/Object;)Landroid/graphics/drawable/GradientDrawable;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v7}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->A(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    if-nez v1, :cond_4

    .line 156
    .line 157
    const-string v1, "bgColorView"

    .line 158
    .line 159
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    move-object v2, v1

    .line 164
    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    .line 166
    .line 167
    :cond_5
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    .line 168
    .line 169
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->a:Lcom/transsion/home/bean/OperateItem;

    .line 170
    .line 171
    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->F(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;Lcom/transsion/home/bean/OperateItem;I)V

    .line 172
    .line 173
    .line 174
    return-void
.end method
