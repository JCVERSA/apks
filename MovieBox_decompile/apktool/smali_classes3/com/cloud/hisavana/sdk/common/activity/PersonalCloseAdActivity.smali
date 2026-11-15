.class public Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;
.super Lcom/cloud/hisavana/sdk/common/activity/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Li7/a;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setUrl(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "open"

    .line 39
    .line 40
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-static {}, Li7/a;->b()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "?gaid="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, "&oneid="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->j()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, "&ad_creative_id="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, "&industry_id="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getIndustryId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, "&app_id="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    sget-object v1, Lc7/b;->b:Ljava/lang/String;

    .line 110
    .line 111
    if-nez v1, :cond_1

    .line 112
    .line 113
    const-string v1, ""

    .line 114
    .line 115
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, "&code_seat_id="

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, "&trigger_id="

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerId()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, "&request_id="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRid()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, "&advertiser_id="

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdvertiserId()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v3, "ad close url == "

    .line 188
    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    const-string v3, "PersonalCloseAdActivity"

    .line 200
    .line 201
    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->q(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_2
    return-void
.end method

.method private x()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-static {}, Li7/a;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setUrl(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "open"

    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 39
    .line 40
    const-string v1, "error"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorType(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 46
    .line 47
    const/4 v1, -0x2

    .line 48
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setErrorCode(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getRedirectType()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    .line 76
    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    const-string v5, "fail"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const-string v5, "success"

    .line 83
    .line 84
    :goto_0
    if-eqz v0, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getErrorType()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_1
    move-object v6, v0

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    const-string v0, "succeed"

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :goto_2
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getErrorCode()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    :goto_3
    move v7, v0

    .line 108
    goto :goto_4

    .line 109
    :cond_2
    const/16 v0, 0x1f40

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :goto_4
    const-wide/16 v8, -0x1

    .line 113
    .line 114
    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    .line 115
    .line 116
    .line 117
    :cond_3
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->layout_title:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->c:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    sget v0, Lcom/cloud/hisavana/sdk/R$string;->toast_no_network:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->e:Landroid/widget/ImageView;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$b;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method private z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;-><init>(Landroid/app/Activity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->g:Landroid/webkit/WebView;

    .line 14
    .line 15
    const-string v2, "sspWebView"

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "close_hash_code"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->b(I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;->A()V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method protected h()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;->x()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->d:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->layout_no_net:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;->y()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;->z()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/common/activity/b;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b;->d:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/cloud/hisavana/sdk/s2;->p()Lcom/cloud/hisavana/sdk/s2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/s2;->d()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
