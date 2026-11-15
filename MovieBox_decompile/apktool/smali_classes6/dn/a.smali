.class public abstract Ldn/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 65

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    move-object v9, v0

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleNameAppendResolution()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    new-instance v10, Lcom/transsion/moviedetailapi/bean/Cover;

    .line 29
    .line 30
    move-object v6, v10

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v14

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v16

    .line 39
    const/16 v20, 0x1d7

    .line 40
    .line 41
    const/16 v21, 0x0

    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    const/4 v12, 0x0

    .line 45
    const/4 v13, 0x0

    .line 46
    const/4 v15, 0x0

    .line 47
    const/16 v17, 0x0

    .line 48
    .line 49
    const/16 v18, 0x0

    .line 50
    .line 51
    const/16 v19, 0x0

    .line 52
    .line 53
    invoke-direct/range {v10 .. v21}, Lcom/transsion/moviedetailapi/bean/Cover;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/GifBean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v21

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getRestrictLevel()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v55

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getReleaseDate()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCountryName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeNum()Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v49

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitles()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v52

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getImdbRate()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    new-instance v0, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 89
    .line 90
    move-object v1, v0

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 96
    .line 97
    const v63, 0x3f6dfff    # 1.45100075E-36f

    .line 98
    .line 99
    .line 100
    const/16 v64, 0x0

    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v10, 0x0

    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    const/16 v22, 0x0

    .line 107
    .line 108
    const/16 v23, 0x0

    .line 109
    .line 110
    const/16 v24, 0x0

    .line 111
    .line 112
    const/16 v25, 0x0

    .line 113
    .line 114
    const/16 v26, 0x0

    .line 115
    .line 116
    const/16 v27, 0x0

    .line 117
    .line 118
    const/16 v28, 0x0

    .line 119
    .line 120
    const/16 v29, 0x0

    .line 121
    .line 122
    const/16 v30, 0x0

    .line 123
    .line 124
    const/16 v31, 0x0

    .line 125
    .line 126
    const/16 v32, 0x0

    .line 127
    .line 128
    const/16 v33, 0x0

    .line 129
    .line 130
    const/16 v34, 0x0

    .line 131
    .line 132
    const/16 v35, 0x0

    .line 133
    .line 134
    const/16 v36, 0x0

    .line 135
    .line 136
    const/16 v37, 0x0

    .line 137
    .line 138
    const/16 v38, 0x0

    .line 139
    .line 140
    const/16 v39, 0x0

    .line 141
    .line 142
    const-wide/16 v40, 0x0

    .line 143
    .line 144
    const/16 v42, 0x0

    .line 145
    .line 146
    const/16 v43, 0x0

    .line 147
    .line 148
    const-wide/16 v44, 0x0

    .line 149
    .line 150
    const/16 v46, 0x0

    .line 151
    .line 152
    const/16 v47, 0x0

    .line 153
    .line 154
    const/16 v48, 0x0

    .line 155
    .line 156
    const/16 v50, 0x0

    .line 157
    .line 158
    const/16 v51, 0x0

    .line 159
    .line 160
    const/16 v53, 0x0

    .line 161
    .line 162
    const/16 v54, 0x0

    .line 163
    .line 164
    const/16 v56, 0x0

    .line 165
    .line 166
    const/16 v57, 0x0

    .line 167
    .line 168
    const/16 v58, 0x0

    .line 169
    .line 170
    const/16 v59, 0x0

    .line 171
    .line 172
    const/16 v60, 0x0

    .line 173
    .line 174
    const/16 v61, 0x0

    .line 175
    .line 176
    const v62, -0xc12c0

    .line 177
    .line 178
    .line 179
    invoke-direct/range {v1 .. v64}, Lcom/transsion/moviedetailapi/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 180
    .line 181
    .line 182
    return-object v0
.end method
