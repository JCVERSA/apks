.class public final Lcom/transsion/postdetail/util/l$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/util/l;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/util/l;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/util/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/postdetail/util/l;->b(Lcom/transsion/postdetail/util/l;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/postdetail/util/l;->b(Lcom/transsion/postdetail/util/l;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/transsion/postdetail/util/l;->b(Lcom/transsion/postdetail/util/l;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/transsion/postdetail/util/l;->c()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    iget-object v1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/util/l;->e(I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/transsion/postdetail/util/l;->c()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-ne v1, v0, :cond_2

    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/transsion/postdetail/util/l;->c()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    sub-int/2addr v1, v0

    .line 77
    const/16 v2, 0xc8

    .line 78
    .line 79
    if-le v1, v2, :cond_4

    .line 80
    .line 81
    iget-object v1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/transsion/postdetail/util/l;->a(Lcom/transsion/postdetail/util/l;)Lcom/transsion/postdetail/util/l$a;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    iget-object v1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/transsion/postdetail/util/l;->a(Lcom/transsion/postdetail/util/l;)Lcom/transsion/postdetail/util/l$a;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/transsion/postdetail/util/l;->c()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    sub-int/2addr v2, v0

    .line 105
    invoke-interface {v1, v2}, Lcom/transsion/postdetail/util/l$a;->b(I)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object v1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/util/l;->e(I)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/transsion/postdetail/util/l;->c()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    sub-int v1, v0, v1

    .line 121
    .line 122
    if-le v1, v2, :cond_6

    .line 123
    .line 124
    iget-object v1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 125
    .line 126
    invoke-static {v1}, Lcom/transsion/postdetail/util/l;->a(Lcom/transsion/postdetail/util/l;)Lcom/transsion/postdetail/util/l$a;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    iget-object v1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/transsion/postdetail/util/l;->a(Lcom/transsion/postdetail/util/l;)Lcom/transsion/postdetail/util/l$a;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object v2, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/transsion/postdetail/util/l;->c()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    sub-int v2, v0, v2

    .line 148
    .line 149
    invoke-interface {v1, v2}, Lcom/transsion/postdetail/util/l$a;->a(I)V

    .line 150
    .line 151
    .line 152
    :cond_5
    iget-object v1, p0, Lcom/transsion/postdetail/util/l$b;->a:Lcom/transsion/postdetail/util/l;

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/util/l;->e(I)V

    .line 155
    .line 156
    .line 157
    :cond_6
    return-void
.end method
