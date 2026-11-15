.class final Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomDetailFragment;

.field final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomDetailFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;->b:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_6

    .line 8
    .line 9
    iget-object p2, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_6

    .line 16
    .line 17
    iget-object p2, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    iget-object p2, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lfp/n;

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    .line 38
    .line 39
    iget-object v1, p2, Lfp/n;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    .line 41
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {v2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p2, Lfp/n;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v1, p2, Lfp/n;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    .line 69
    :cond_1
    iget-object p2, p2, Lfp/n;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object p2, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;->b:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    const/high16 v0, 0x42600000    # 56.0f

    .line 81
    .line 82
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ge p2, v0, :cond_4

    .line 87
    .line 88
    iget-object p2, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lfp/n;

    .line 95
    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    iget-object p2, p2, Lfp/n;->i:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 99
    .line 100
    if-eqz p2, :cond_3

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lfp/n;

    .line 112
    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    iget-object p1, p1, Lfp/n;->i:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 116
    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lfp/n;

    .line 130
    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    iget-object p1, p1, Lfp/n;->i:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 134
    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    return-object p1

    .line 143
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$a;->a(Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
