.class public abstract Lcom/transsion/moviedetailapi/h;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Ljava/lang/Integer;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->AUDIO:Lcom/transsion/moviedetailapi/SubjectType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ne v1, v0, :cond_1

    .line 15
    .line 16
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_audio:I

    .line 17
    .line 18
    goto/16 :goto_8

    .line 19
    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne v1, v0, :cond_3

    .line 34
    .line 35
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_music:I

    .line 36
    .line 37
    goto/16 :goto_8

    .line 38
    .line 39
    :cond_3
    :goto_1
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez p0, :cond_4

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-ne v1, v0, :cond_5

    .line 53
    .line 54
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_tv:I

    .line 55
    .line 56
    goto :goto_8

    .line 57
    :cond_5
    :goto_2
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez p0, :cond_6

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-ne v1, v0, :cond_7

    .line 71
    .line 72
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_short_tv:I

    .line 73
    .line 74
    goto :goto_8

    .line 75
    :cond_7
    :goto_3
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez p0, :cond_8

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-ne v1, v0, :cond_9

    .line 89
    .line 90
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_edu:I

    .line 91
    .line 92
    goto :goto_8

    .line 93
    :cond_9
    :goto_4
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SPORT:Lcom/transsion/moviedetailapi/SubjectType;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez p0, :cond_a

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-ne v1, v0, :cond_b

    .line 107
    .line 108
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_sport:I

    .line 109
    .line 110
    goto :goto_8

    .line 111
    :cond_b
    :goto_5
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez p0, :cond_c

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-ne v1, v0, :cond_d

    .line 125
    .line 126
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_movie:I

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_d
    :goto_6
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->OUTSIDE_FILE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez p0, :cond_e

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-ne p0, v0, :cond_f

    .line 143
    .line 144
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_local_file:I

    .line 145
    .line 146
    goto :goto_8

    .line 147
    :cond_f
    :goto_7
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_video_def:I

    .line 148
    .line 149
    :goto_8
    return p0
.end method
