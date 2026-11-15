.class public abstract Lcom/transsion/mbwidget/data/c;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Ljava/util/List;)Lcom/transsion/mbwidget/data/ServerMatchItem;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v3, v2

    .line 32
    check-cast v3, Lcom/transsion/mbwidget/data/ServerMatchItem;

    .line 33
    .line 34
    sget-object v4, Lcom/transsion/mbwidget/data/MatchStatus;->Companion:Lcom/transsion/mbwidget/data/MatchStatus$a;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getStatus()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v4, v3}, Lcom/transsion/mbwidget/data/MatchStatus$a;->a(Ljava/lang/String;)Lcom/transsion/mbwidget/data/MatchStatus;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    sget-object v4, Lcom/transsion/mbwidget/data/MatchStatus;->NOT_START:Lcom/transsion/mbwidget/data/MatchStatus;

    .line 45
    .line 46
    if-ne v3, v4, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move-object v2, v1

    .line 50
    :goto_0
    check-cast v2, Lcom/transsion/mbwidget/data/ServerMatchItem;

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    return-object v2

    .line 55
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    move-object v2, v0

    .line 70
    check-cast v2, Lcom/transsion/mbwidget/data/ServerMatchItem;

    .line 71
    .line 72
    sget-object v3, Lcom/transsion/mbwidget/data/MatchStatus;->Companion:Lcom/transsion/mbwidget/data/MatchStatus$a;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getStatus()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v3, v2}, Lcom/transsion/mbwidget/data/MatchStatus$a;->a(Ljava/lang/String;)Lcom/transsion/mbwidget/data/MatchStatus;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    sget-object v3, Lcom/transsion/mbwidget/data/MatchStatus;->ING:Lcom/transsion/mbwidget/data/MatchStatus;

    .line 83
    .line 84
    if-ne v2, v3, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_6
    move-object v0, v1

    .line 88
    :goto_1
    check-cast v0, Lcom/transsion/mbwidget/data/ServerMatchItem;

    .line 89
    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_7
    return-object v1
.end method

.method public static final b(Lcom/transsion/mbwidget/data/ServerMatchItem;)Lcom/transsion/mbwidget/data/SportMatch;
    .locals 13

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/mbwidget/data/SportType;->Companion:Lcom/transsion/mbwidget/data/SportType$a;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getType()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/mbwidget/data/SportType$a;->a(Ljava/lang/String;)Lcom/transsion/mbwidget/data/SportType;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v0, 0x0

    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getTeam1()Lcom/transsion/mbwidget/data/ServerTeam;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getTeam2()Lcom/transsion/mbwidget/data/ServerTeam;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_2
    invoke-virtual {v1}, Lcom/transsion/mbwidget/data/ServerTeam;->getAbbreviation()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_9

    .line 39
    .line 40
    invoke-static {v3}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_3

    .line 45
    .line 46
    move-object v5, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move-object v5, v0

    .line 49
    :goto_0
    if-nez v5, :cond_4

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_4
    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/ServerTeam;->getAbbreviation()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_9

    .line 57
    .line 58
    invoke-static {v3}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_5

    .line 63
    .line 64
    move-object v7, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_5
    move-object v7, v0

    .line 67
    :goto_1
    if-nez v7, :cond_6

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-nez v3, :cond_7

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_7
    new-instance v0, Lcom/transsion/mbwidget/data/SportMatch;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/transsion/mbwidget/data/ServerTeam;->getAvatar()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/ServerTeam;->getAvatar()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getStartTime()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_8

    .line 92
    .line 93
    invoke-static {v1}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    move-result-wide v1

    .line 103
    :goto_2
    move-wide v9, v1

    .line 104
    goto :goto_3

    .line 105
    :cond_8
    const-wide/16 v1, 0x0

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getDeeplink()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    sget-object v1, Lcom/transsion/mbwidget/data/MatchStatus;->Companion:Lcom/transsion/mbwidget/data/MatchStatus$a;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getStatus()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v1, p0}, Lcom/transsion/mbwidget/data/MatchStatus$a;->a(Ljava/lang/String;)Lcom/transsion/mbwidget/data/MatchStatus;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    move-object v2, v0

    .line 123
    invoke-direct/range {v2 .. v12}, Lcom/transsion/mbwidget/data/SportMatch;-><init>(Ljava/lang/String;Lcom/transsion/mbwidget/data/SportType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/transsion/mbwidget/data/MatchStatus;)V

    .line 124
    .line 125
    .line 126
    :cond_9
    :goto_4
    return-object v0
.end method
