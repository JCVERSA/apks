.class Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/video/dynview/listener/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "mute"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;I)I

    .line 25
    .line 26
    .line 27
    :cond_1
    const-string v0, "position"

    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-lez v0, :cond_3

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    if-lt p1, v0, :cond_3

    .line 67
    .line 68
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 79
    .line 80
    invoke-static {v1, v2}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->m(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)I

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sub-int/2addr p1, v0

    .line 95
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-static {v1, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;I)I

    .line 118
    .line 119
    .line 120
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCompleteTime()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 131
    .line 132
    invoke-static {v2}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-static {p1, v1, v2}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;II)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 141
    .line 142
    invoke-static {v1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoCompleteTime(I)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 156
    .line 157
    invoke-static {v1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setShowIndex(I)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 165
    .line 166
    invoke-static {p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setShowType(I)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;->a:Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    .line 174
    .line 175
    invoke-static {p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {p1, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 180
    .line 181
    .line 182
    :cond_3
    return-void
.end method
