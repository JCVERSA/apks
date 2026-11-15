.class public final Lcom/transsion/publish/view/operation/OperationBarView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lso/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/operation/OperationBarView;->init(ILcom/transsion/publish/api/GroupBean;Lcom/transsion/moviedetailapi/bean/Subject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/operation/OperationBarView;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/operation/OperationBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/publish/view/operation/OperationBean;I)V
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBean;->getStatus()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBean;->getStatus()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 v0, 0x1

    .line 19
    if-nez p2, :cond_2

    .line 20
    .line 21
    iget-object p2, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/transsion/publish/view/operation/OperationBarView;->getSelectItem()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-ne p2, v0, :cond_2

    .line 39
    .line 40
    :cond_1
    return-void

    .line 41
    :cond_2
    iget-object p2, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/transsion/publish/view/operation/OperationBarView;->getRv()Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    invoke-static {p2}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBean;->getType()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const-string p2, "getContext(...)"

    .line 57
    .line 58
    if-eqz p1, :cond_a

    .line 59
    .line 60
    if-eq p1, v0, :cond_9

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    if-eq p1, v0, :cond_8

    .line 64
    .line 65
    const/4 v0, 0x3

    .line 66
    if-eq p1, v0, :cond_7

    .line 67
    .line 68
    const/4 v0, 0x4

    .line 69
    if-eq p1, v0, :cond_6

    .line 70
    .line 71
    const/4 v0, 0x6

    .line 72
    if-eq p1, v0, :cond_5

    .line 73
    .line 74
    const/16 v0, 0x8

    .line 75
    .line 76
    if-eq p1, v0, :cond_4

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_4
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_b

    .line 87
    .line 88
    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startLocation(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :cond_5
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_b

    .line 109
    .line 110
    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startGroup(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_6
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_b

    .line 130
    .line 131
    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startLink(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_7
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_b

    .line 151
    .line 152
    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startWork(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_8
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 166
    .line 167
    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_b

    .line 172
    .line 173
    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 174
    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startAudio(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_9
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 187
    .line 188
    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    if-eqz p1, :cond_b

    .line 193
    .line 194
    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 195
    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startVideo(Landroid/content/Context;)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_a
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 208
    .line 209
    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    if-eqz p1, :cond_b

    .line 214
    .line 215
    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startPhoto(Landroid/content/Context;)V

    .line 225
    .line 226
    .line 227
    :cond_b
    :goto_0
    return-void
.end method
