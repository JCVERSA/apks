.class Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/video/dynview/moffer/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->setMoreOfferLayoutCallBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$600(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const-string v1, "117361"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move v0, v2

    .line 14
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 15
    .line 16
    invoke-static {v4}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$600(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v0, v4, :cond_1

    .line 25
    .line 26
    iget-object v4, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 27
    .line 28
    invoke-static {v4}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$100(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    iget-object v4, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 35
    .line 36
    invoke-static {v4}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$200(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 41
    .line 42
    invoke-static {v5}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$1800(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "more offer show"

    .line 47
    .line 48
    iget-object v7, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 49
    .line 50
    invoke-static {v7}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$300(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    iget-object v8, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 55
    .line 56
    invoke-static {v8}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$400(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-static {v4, v5, v6, v7, v8}, Lcom/mbridge/msdk/video/dynview/request/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 64
    .line 65
    invoke-static {v4, v3}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$102(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Z)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto :goto_3

    .line 71
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 72
    .line 73
    invoke-static {v4}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$500(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iget-object v5, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 78
    .line 79
    invoke-static {v5}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$600(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-static {v4, v5, v2, v1}, Lcom/mbridge/msdk/video/dynview/request/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;IILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$700(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$800(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$800(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-ge v2, v0, :cond_2

    .line 126
    .line 127
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$500(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v4, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 134
    .line 135
    invoke-static {v4}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$800(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-static {v0, v4, v3, v1}, Lcom/mbridge/msdk/video/dynview/request/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;IILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel$d;->a:Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->access$1900(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "MOfferModel"

    .line 166
    .line 167
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :goto_4
    return-void
.end method
