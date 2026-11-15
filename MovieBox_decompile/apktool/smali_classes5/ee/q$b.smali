.class public Lee/q$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/hisavana/common/interfacz/QueryPriceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lee/q;->d(Lcom/hisavana/common/interfacz/QueryPriceListener;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/common/bean/Network;

.field public final synthetic b:Lee/q;


# direct methods
.method public constructor <init>(Lee/q;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee/q$b;->b:Lee/q;

    .line 2
    .line 3
    iput-object p2, p0, Lee/q$b;->a:Lcom/hisavana/common/bean/Network;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onQueryPriceFailed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lee/q$b;->b:Lee/q;

    .line 2
    .line 3
    invoke-static {v0}, Lee/q;->e(Lee/q;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lee/q$b;->a:Lcom/hisavana/common/bean/Network;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " query price failed; "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget v1, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE9:I

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lee/q$b;->b:Lee/q;

    .line 51
    .line 52
    invoke-static {v0}, Lee/q;->m(Lee/q;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lee/q$b;->b:Lee/q;

    .line 60
    .line 61
    invoke-static {v0, v1}, Lee/q;->g(Lee/q;Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lee/q$b;->b:Lee/q;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-static {v0, v1, v2}, Lee/q;->h(Lee/q;ZLjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public onQueryPriceSuccess(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lee/q$b;->b:Lee/q;

    .line 2
    .line 3
    invoke-static {v0}, Lee/q;->e(Lee/q;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_5

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/hisavana/common/bean/Network;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v4, "receive query price result: "

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v3, "QueryPriceCenter"

    .line 62
    .line 63
    invoke-virtual {v2, v3, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-boolean p1, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {v2}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, " price"

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, ";"

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    sget v2, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE9:I

    .line 112
    .line 113
    invoke-static {p1, v2}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    :cond_2
    invoke-static {}, Lee/q;->c()Lee/b;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {p1, v2, v1}, Lee/b;->b(Ljava/lang/String;Lcom/hisavana/common/bean/Network;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string v2, "add price to price pool failed"

    .line 135
    .line 136
    invoke-virtual {p1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lee/q$b;->b:Lee/q;

    .line 140
    .line 141
    invoke-virtual {p1, v1, v0}, Lee/q;->f(Lcom/hisavana/common/bean/Network;Z)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_3
    iget-object p1, p0, Lee/q$b;->b:Lee/q;

    .line 146
    .line 147
    invoke-static {p1}, Lee/q;->m(Lee/q;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_4

    .line 152
    .line 153
    iget-object p1, p0, Lee/q$b;->b:Lee/q;

    .line 154
    .line 155
    invoke-static {p1, v0}, Lee/q;->g(Lee/q;Z)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_4
    iget-object p1, p0, Lee/q$b;->b:Lee/q;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {p1, v0, v1}, Lee/q;->h(Lee/q;ZLjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_5
    :goto_0
    return-void
.end method
