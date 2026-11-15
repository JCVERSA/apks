.class public final Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "Ljava/lang/String;",
        ">.NormalViewHolder;"
    }
.end annotation


# instance fields
.field private final checkBox$delegate:Lkotlin/Lazy;

.field private final photoView$delegate:Lkotlin/Lazy;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 2
    .line 3
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->item_image_preview:I

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder$photoView$2;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder$photoView$2;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->photoView$delegate:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder$checkBox$2;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder$checkBox$2;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->checkBox$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic f(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;Landroid/view/View;FF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->onBindView$lambda$1(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;Landroid/view/View;FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getCheckBox()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->checkBox$delegate:Lkotlin/Lazy;

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

.method private final getPhotoView()Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->photoView$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final onBindView$lambda$1(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;Landroid/view/View;FF)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    instance-of p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    check-cast p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 21
    .line 22
    .line 23
    sget p1, Lcom/cloud/tmc/miniapp/R$anim;->activity_fast_fade_in:I

    .line 24
    .line 25
    sget p2, Lcom/cloud/tmc/miniapp/R$anim;->activity_fast_fade_out:I

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method


# virtual methods
.method public final getSelectNum(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "imagePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->access$getMSelectImages$p(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    return p1
.end method

.method public onBindView(I)V
    .locals 8

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getPhotoView()Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 10
    .line 11
    new-instance v3, Lcom/cloud/tmc/miniapp/ui/adapter/a;

    .line 12
    .line 13
    invoke-direct {v3, v2}, Lcom/cloud/tmc/miniapp/ui/adapter/a;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->setOnViewTapListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz p1, :cond_11

    .line 28
    .line 29
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x0

    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getPhotoView()Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_5

    .line 38
    .line 39
    const-string v5, ".miniapp.transsion.com"

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-static {p1, v5, v3, v2, v6}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    move-object v6, p1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    sget-object v5, Lcom/cloud/tmc/integration/utils/FilePathUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/FilePathUtils;

    .line 51
    .line 52
    invoke-virtual {v5, p1}, Lcom/cloud/tmc/integration/utils/FilePathUtils;->getAppIdFormVurl(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    move-object v5, v0

    .line 59
    :cond_2
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->getBaseResourceManager()Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-interface {v7, p1, v5}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v4

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    :goto_0
    if-nez v6, :cond_4

    .line 77
    .line 78
    move-object v6, v0

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const-string v5, "baseResourceManager.get(\u2026ppId)?.absolutePath ?: \"\""

    .line 81
    .line 82
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->getImageLoder()Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-interface {v5, v7, v6, v4}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :goto_2
    const-string v5, "onBindView"

    .line 98
    .line 99
    invoke-static {v5, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_3
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->getSelectMode()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/16 v4, 0x8

    .line 107
    .line 108
    const/4 v5, 0x1

    .line 109
    if-eq v1, v5, :cond_f

    .line 110
    .line 111
    if-eq v1, v2, :cond_8

    .line 112
    .line 113
    const/4 p1, 0x3

    .line 114
    if-eq v1, p1, :cond_6

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-nez p1, :cond_7

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_7

    .line 128
    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-nez v1, :cond_9

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_9
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    :goto_4
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getSelectNum(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_c

    .line 143
    .line 144
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-nez v0, :cond_a

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_a
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 152
    .line 153
    .line 154
    :goto_5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-nez v0, :cond_b

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_c
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-nez p1, :cond_d

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_d
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 177
    .line 178
    .line 179
    :goto_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-nez p1, :cond_e

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_e
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_f
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-nez p1, :cond_10

    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_10
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    :cond_11
    :goto_7
    return-void
.end method
