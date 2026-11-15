.class Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;
.super Lcom/mbridge/msdk/widget/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/mbridge/msdk/widget/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 4

    .line 1
    const-string v0, "omsdk"

    .line 2
    .line 3
    const-string v1, "BaseMBMediaView"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->I(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-nez v2, :cond_4

    .line 76
    .line 77
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->halfLoadingViewisVisible()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a()V

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_3
    :goto_1
    const-string p1, "is loading or no playing return;"

    .line 109
    .line 110
    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_4
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 115
    .line 116
    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    const-string p1, "fullScreenShowUI"

    .line 123
    .line 124
    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->S(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_5
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 134
    .line 135
    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_6

    .line 140
    .line 141
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 142
    .line 143
    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {p1, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v2, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 163
    .line 164
    .line 165
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz p1, :cond_7

    .line 167
    .line 168
    :try_start_1
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 169
    .line 170
    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    sget-object v2, Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;

    .line 175
    .line 176
    invoke-virtual {p1, v2}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a(Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;)V

    .line 177
    .line 178
    .line 179
    const-string p1, "mnv adUserInteraction click"

    .line 180
    .line 181
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :catch_0
    move-exception p1

    .line 186
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    :goto_4
    return-void
.end method
