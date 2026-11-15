.class Lcom/cloud/hisavana/sdk/g1$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/g1;->g(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener<",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lcom/cloud/hisavana/sdk/g1;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/g1;JILjava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/g1$b;->f:Lcom/cloud/hisavana/sdk/g1;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/cloud/hisavana/sdk/g1$b;->b:J

    .line 4
    .line 5
    iput p4, p0, Lcom/cloud/hisavana/sdk/g1$b;->c:I

    .line 6
    .line 7
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/g1$b;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p6, p0, Lcom/cloud/hisavana/sdk/g1$b;->e:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/g1$b;->b:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget v2, p0, Lcom/cloud/hisavana/sdk/g1$b;->c:I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/g1$b;->d:Ljava/lang/String;

    .line 11
    .line 12
    long-to-int v4, v0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, "request error"

    .line 16
    .line 17
    :goto_0
    move-object v6, p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    const-string v7, ""

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-static/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->J(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/g1$b;->f:Lcom/cloud/hisavana/sdk/g1;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/g1;->d(Lcom/cloud/hisavana/sdk/g1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method protected bridge synthetic g(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/g1$b;->k(ILcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic h(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/g1$b;->l(ILcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected k(ILcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;)V
    .locals 0

    .line 1
    return-void
.end method

.method public l(ILcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/g1$b;->b:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/g1$b;->f:Lcom/cloud/hisavana/sdk/g1;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/g1;->d(Lcom/cloud/hisavana/sdk/g1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "onRequestSuccess statusCode "

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v3, "ConfigManager"

    .line 40
    .line 41
    invoke-virtual {v2, v3, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/g1$b;->f:Lcom/cloud/hisavana/sdk/g1;

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-static {p1, v2, v3}, Lcom/cloud/hisavana/sdk/g1;->b(Lcom/cloud/hisavana/sdk/g1;J)J

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/g1$b;->f:Lcom/cloud/hisavana/sdk/g1;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/g1;->l(Lcom/cloud/hisavana/sdk/g1;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    const-string v4, "requestConfigTime"

    .line 64
    .line 65
    invoke-virtual {p1, v4, v2, v3}, Ll7/a;->q(Ljava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    if-eqz p2, :cond_0

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getCode()Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_0

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget v2, p0, Lcom/cloud/hisavana/sdk/g1$b;->c:I

    .line 85
    .line 86
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/g1$b;->d:Ljava/lang/String;

    .line 87
    .line 88
    long-to-int v4, v0

    .line 89
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/g1$b;->f:Lcom/cloud/hisavana/sdk/g1;

    .line 90
    .line 91
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/g1;->p(Lcom/cloud/hisavana/sdk/g1;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    const/4 v5, 0x0

    .line 96
    const-string v6, ""

    .line 97
    .line 98
    invoke-static/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->J(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/g1$b;->f:Lcom/cloud/hisavana/sdk/g1;

    .line 104
    .line 105
    iget v0, p0, Lcom/cloud/hisavana/sdk/g1$b;->c:I

    .line 106
    .line 107
    const/4 v1, 0x1

    .line 108
    invoke-static {p2, p1, v0, v1}, Lcom/cloud/hisavana/sdk/g1;->h(Lcom/cloud/hisavana/sdk/g1;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V

    .line 109
    .line 110
    .line 111
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_1

    .line 116
    .line 117
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/g1$b;->e:Z

    .line 118
    .line 119
    if-eqz p1, :cond_1

    .line 120
    .line 121
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string p2, "ssp_cloud_config_raw_response"

    .line 126
    .line 127
    invoke-virtual {p1, p2, p3}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    iget p1, p0, Lcom/cloud/hisavana/sdk/g1$b;->c:I

    .line 132
    .line 133
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/g1$b;->d:Ljava/lang/String;

    .line 134
    .line 135
    long-to-int v2, v0

    .line 136
    const-string v4, "response is null or responseCode is wrong"

    .line 137
    .line 138
    const-string v5, ""

    .line 139
    .line 140
    const/4 v3, 0x1

    .line 141
    move v0, p1

    .line 142
    move-object v1, p2

    .line 143
    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->J(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_1
    :goto_0
    return-void
.end method
