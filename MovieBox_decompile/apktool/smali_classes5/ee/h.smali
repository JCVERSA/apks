.class public abstract Lee/h;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lee/h;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper;->g()Lcom/hisavana/mediation/config/ConfigContentHelper;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, p0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->e(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_3

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/hisavana/common/bean/Network;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/hisavana/common/bean/Network;->setAdt(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, 0x1

    .line 61
    if-eq v2, v3, :cond_2

    .line 62
    .line 63
    invoke-static {v1}, Lcom/hisavana/common/utils/AdUtil;->isQueryPriceNetwork(Lcom/hisavana/common/bean/Network;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getTempPrice()D

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Lcom/hisavana/common/bean/Network;->setPrice(Ljava/lang/Double;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    :goto_1
    if-eqz p2, :cond_1

    .line 84
    .line 85
    invoke-static {v1, p1}, Lcom/hisavana/common/utils/AdUtil;->overwriteAdmobNetworkPrice(Lcom/hisavana/common/bean/Network;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v1, "getConfigByAdUnit "

    .line 99
    .line 100
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string p2, "ConfigUtil"

    .line 115
    .line 116
    invoke-virtual {p1, p2, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    return-object v0
.end method
