.class public final Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;
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

.field private final imageView$delegate:Lkotlin/Lazy;

.field private final ivQrPreview$delegate:Lkotlin/Lazy;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

.field private final viewMask$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 2
    .line 3
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->item_image_select:I

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$imageView$2;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$imageView$2;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->imageView$delegate:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$checkBox$2;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$checkBox$2;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->checkBox$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$viewMask$2;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$viewMask$2;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->viewMask$delegate:Lkotlin/Lazy;

    .line 40
    .line 41
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$ivQrPreview$2;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder$ivQrPreview$2;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->ivQrPreview$delegate:Lkotlin/Lazy;

    .line 51
    .line 52
    return-void
.end method

.method private final getCheckBox()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->checkBox$delegate:Lkotlin/Lazy;

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

.method private final getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->imageView$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getIvQrPreview()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->ivQrPreview$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getViewMask()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->viewMask$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public onBindView(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->getImageLoder()Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v2, v3, p1, v1}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->getSelectMode()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    if-ne v1, v2, :cond_3

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 v0, 0x8

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getIvQrPreview()Landroidx/appcompat/widget/AppCompatImageView;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    goto :goto_6

    .line 55
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_6

    .line 59
    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->getSelectNum(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_7

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-nez v1, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 83
    .line 84
    .line 85
    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-nez v1, :cond_6

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    :goto_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getViewMask()Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_a

    .line 104
    .line 105
    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_black50:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getColor(I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-nez p1, :cond_8

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_8
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 123
    .line 124
    .line 125
    :goto_4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-nez p1, :cond_9

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_9
    const-string v1, ""

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    :goto_5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;->getViewMask()Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_a

    .line 142
    .line 143
    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_black6:I

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getColor(I)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 150
    .line 151
    .line 152
    :cond_a
    :goto_6
    return-void
.end method
