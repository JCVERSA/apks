.class public final Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->B(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "e"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super/range {p0 .. p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getScreenWidth$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    div-int/lit8 v1, v1, 0x3

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    float-to-int v2, v2

    .line 26
    iget-object v3, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-static {v3, v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$setLongPressTriggered$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Z)V

    .line 30
    .line 31
    .line 32
    const-string v3, ", cut="

    .line 33
    .line 34
    if-ltz v2, :cond_0

    .line 35
    .line 36
    if-gt v2, v1, :cond_0

    .line 37
    .line 38
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 39
    .line 40
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 41
    .line 42
    invoke-static {v5}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getTAG$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v7, "\u5de6\u8fb9\u957f\u6309\uff0cclickX="

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    const/4 v8, 0x4

    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    mul-int/lit8 v4, v1, 0x2

    .line 77
    .line 78
    if-le v2, v4, :cond_1

    .line 79
    .line 80
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 81
    .line 82
    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 83
    .line 84
    invoke-static {v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getTAG$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v7, "\u53f3\u8fb9\u957f\u6309\uff0cclickX="

    .line 94
    .line 95
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    const/4 v9, 0x4

    .line 112
    const/4 v10, 0x0

    .line 113
    const/4 v8, 0x0

    .line 114
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 119
    .line 120
    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 121
    .line 122
    invoke-static {v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getTAG$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v5, "\u4e2d\u95f4\u957f\u6309\uff0cclickX="

    .line 132
    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    const/4 v15, 0x4

    .line 150
    const/16 v16, 0x0

    .line 151
    .line 152
    const/4 v14, 0x0

    .line 153
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :goto_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$onSingleClick(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method
