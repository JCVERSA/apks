.class public Lcom/transsnet/downloader/activity/DownloadSeriesListActivity__TheRouter__Autowired;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static autowiredInject(Ljava/lang/Object;)V
    .locals 14

    .line 1
    const-string v0, "java.lang.String"

    .line 2
    .line 3
    instance-of v1, p0, Lcom/transsnet/downloader/activity/DownloadSeriesListActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    check-cast p0, Lcom/transsnet/downloader/activity/DownloadSeriesListActivity;

    .line 8
    .line 9
    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lmf/a;

    .line 28
    .line 29
    :try_start_0
    const-string v3, "int"

    .line 30
    .line 31
    new-instance v13, Lcom/therouter/router/b;

    .line 32
    .line 33
    const-string v5, "int"

    .line 34
    .line 35
    const-string v6, "extra_parent_position"

    .line 36
    .line 37
    const-string v8, ""

    .line 38
    .line 39
    const-string v9, "com.transsnet.downloader.activity.DownloadSeriesListActivity"

    .line 40
    .line 41
    const-string v10, "parentPosition"

    .line 42
    .line 43
    const-string v12, "No desc."

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    move-object v4, v13

    .line 48
    invoke-direct/range {v4 .. v12}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, v3, p0, v13}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/Integer;

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iput v3, p0, Lcom/transsnet/downloader/activity/DownloadSeriesListActivity;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v3

    .line 67
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_1
    :try_start_1
    new-instance v3, Lcom/therouter/router/b;

    .line 77
    .line 78
    const-string v6, "java.lang.String"

    .line 79
    .line 80
    const-string v7, "extra_name"

    .line 81
    .line 82
    const-string v9, ""

    .line 83
    .line 84
    const-string v10, "com.transsnet.downloader.activity.DownloadSeriesListActivity"

    .line 85
    .line 86
    const-string v11, "name"

    .line 87
    .line 88
    const-string v13, "No desc."

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    const/4 v12, 0x0

    .line 92
    move-object v5, v3

    .line 93
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v3, :cond_2

    .line 103
    .line 104
    iput-object v3, p0, Lcom/transsnet/downloader/activity/DownloadSeriesListActivity;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_1
    move-exception v3

    .line 108
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_2
    :try_start_2
    new-instance v3, Lcom/therouter/router/b;

    .line 118
    .line 119
    const-string v6, "java.lang.String"

    .line 120
    .line 121
    const-string v7, "extra_subject_id"

    .line 122
    .line 123
    const-string v9, ""

    .line 124
    .line 125
    const-string v10, "com.transsnet.downloader.activity.DownloadSeriesListActivity"

    .line 126
    .line 127
    const-string v11, "subjectId"

    .line 128
    .line 129
    const-string v13, "No desc."

    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    const/4 v12, 0x0

    .line 133
    move-object v5, v3

    .line 134
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Ljava/lang/String;

    .line 142
    .line 143
    if-eqz v2, :cond_0

    .line 144
    .line 145
    iput-object v2, p0, Lcom/transsnet/downloader/activity/DownloadSeriesListActivity;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :catch_2
    move-exception v2

    .line 150
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_0

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_3
    return-void
.end method
