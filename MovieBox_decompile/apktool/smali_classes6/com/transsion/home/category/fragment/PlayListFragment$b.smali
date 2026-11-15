.class public final Lcom/transsion/home/category/fragment/PlayListFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lrk/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/category/fragment/PlayListFragment;->initViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/category/fragment/PlayListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/category/fragment/PlayListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 10

    .line 1
    iget-object p2, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/transsion/home/category/fragment/PlayListFragment;->C0(Lcom/transsion/home/category/fragment/PlayListFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 p3, 0x0

    .line 8
    const/4 p4, 0x0

    .line 9
    if-eqz p2, :cond_5

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/transsion/home/category/fragment/PlayListFragment;->w0(Lcom/transsion/home/category/fragment/PlayListFragment;)Lcom/transsion/home/category/adapter/b;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    :cond_0
    if-lt p1, p3, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/transsion/home/category/fragment/PlayListFragment;->w0(Lcom/transsion/home/category/fragment/PlayListFragment;)Lcom/transsion/home/category/adapter/b;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Staff;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object p2, p4

    .line 48
    :goto_0
    iget-object p3, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 49
    .line 50
    invoke-static {p3}, Lcom/transsion/home/category/fragment/PlayListFragment;->z0(Lcom/transsion/home/category/fragment/PlayListFragment;)Lzk/i;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Staff;->getStaffId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    move-object v2, p3

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move-object v2, p4

    .line 63
    :goto_1
    if-eqz p2, :cond_4

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Staff;->getOps()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    :cond_4
    move-object v3, p4

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object p1, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/transsion/home/category/fragment/PlayListFragment;->x0(Lcom/transsion/home/category/fragment/PlayListFragment;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iget-object p1, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/transsion/home/category/fragment/PlayListFragment;->A0(Lcom/transsion/home/category/fragment/PlayListFragment;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    iget-object p1, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/transsion/home/category/fragment/PlayListFragment;->y0(Lcom/transsion/home/category/fragment/PlayListFragment;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    const-string v1, "playlist"

    .line 93
    .line 94
    invoke-virtual/range {v0 .. v7}, Lzk/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :cond_5
    iget-object p2, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 100
    .line 101
    invoke-static {p2}, Lcom/transsion/home/category/fragment/PlayListFragment;->B0(Lcom/transsion/home/category/fragment/PlayListFragment;)Lcom/transsion/home/category/adapter/j;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    if-eqz p2, :cond_6

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    if-eqz p2, :cond_6

    .line 112
    .line 113
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    goto :goto_2

    .line 118
    :cond_6
    move p2, p3

    .line 119
    :goto_2
    if-lt p1, p2, :cond_7

    .line 120
    .line 121
    return-void

    .line 122
    :cond_7
    iget-object p2, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 123
    .line 124
    invoke-static {p2}, Lcom/transsion/home/category/fragment/PlayListFragment;->B0(Lcom/transsion/home/category/fragment/PlayListFragment;)Lcom/transsion/home/category/adapter/j;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    if-eqz p2, :cond_8

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_8
    move-object p2, p4

    .line 138
    :goto_3
    iget-object v0, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/transsion/home/category/fragment/PlayListFragment;->z0(Lcom/transsion/home/category/fragment/PlayListFragment;)Lzk/i;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz p2, :cond_9

    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    move-object v3, v0

    .line 151
    goto :goto_4

    .line 152
    :cond_9
    move-object v3, p4

    .line 153
    :goto_4
    if-eqz p2, :cond_a

    .line 154
    .line 155
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p4

    .line 159
    :cond_a
    move-object v4, p4

    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    if-eqz p2, :cond_b

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_b

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    :cond_b
    move v6, p3

    .line 177
    iget-object p1, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 178
    .line 179
    invoke-static {p1}, Lcom/transsion/home/category/fragment/PlayListFragment;->x0(Lcom/transsion/home/category/fragment/PlayListFragment;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    iget-object p1, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/transsion/home/category/fragment/PlayListFragment;->A0(Lcom/transsion/home/category/fragment/PlayListFragment;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    iget-object p1, p0, Lcom/transsion/home/category/fragment/PlayListFragment$b;->a:Lcom/transsion/home/category/fragment/PlayListFragment;

    .line 190
    .line 191
    invoke-static {p1}, Lcom/transsion/home/category/fragment/PlayListFragment;->y0(Lcom/transsion/home/category/fragment/PlayListFragment;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    const-string v2, "playlist"

    .line 196
    .line 197
    invoke-virtual/range {v1 .. v9}, Lzk/i;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :goto_5
    return-void
.end method
