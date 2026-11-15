.class public Lcom/transsion/search/activity/SearchManagerActivity__TheRouter__Autowired;
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
    .locals 13

    .line 1
    instance-of v0, p0, Lcom/transsion/search/activity/SearchManagerActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    check-cast p0, Lcom/transsion/search/activity/SearchManagerActivity;

    .line 6
    .line 7
    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lmf/a;

    .line 26
    .line 27
    :try_start_0
    const-string v2, "boolean"

    .line 28
    .line 29
    new-instance v12, Lcom/therouter/router/b;

    .line 30
    .line 31
    const-string v4, "boolean"

    .line 32
    .line 33
    const-string v5, "back_exit"

    .line 34
    .line 35
    const-string v7, ""

    .line 36
    .line 37
    const-string v8, "com.transsion.search.activity.SearchManagerActivity"

    .line 38
    .line 39
    const-string v9, "backExitSearch"

    .line 40
    .line 41
    const-string v11, "No desc."

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    move-object v3, v12

    .line 46
    invoke-direct/range {v3 .. v11}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v2, p0, v12}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Boolean;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iput-boolean v2, p0, Lcom/transsion/search/activity/SearchManagerActivity;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v2

    .line 65
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_1
    :try_start_1
    const-string v2, "int"

    .line 75
    .line 76
    new-instance v12, Lcom/therouter/router/b;

    .line 77
    .line 78
    const-string v4, "int"

    .line 79
    .line 80
    const-string v5, "type"

    .line 81
    .line 82
    const-string v7, ""

    .line 83
    .line 84
    const-string v8, "com.transsion.search.activity.SearchManagerActivity"

    .line 85
    .line 86
    const-string v9, "searchType"

    .line 87
    .line 88
    const-string v11, "No desc."

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v10, 0x0

    .line 92
    move-object v3, v12

    .line 93
    invoke-direct/range {v3 .. v11}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v2, p0, v12}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Ljava/lang/Integer;

    .line 101
    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    iput v2, p0, Lcom/transsion/search/activity/SearchManagerActivity;->k:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_1
    move-exception v2

    .line 112
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_2

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :cond_2
    :goto_2
    :try_start_2
    const-string v2, "java.lang.String"

    .line 122
    .line 123
    new-instance v12, Lcom/therouter/router/b;

    .line 124
    .line 125
    const-string v4, "java.lang.String"

    .line 126
    .line 127
    const-string v5, "keyword"

    .line 128
    .line 129
    const-string v7, ""

    .line 130
    .line 131
    const-string v8, "com.transsion.search.activity.SearchManagerActivity"

    .line 132
    .line 133
    const-string v9, "keyWord"

    .line 134
    .line 135
    const-string v11, "No desc."

    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    const/4 v10, 0x0

    .line 139
    move-object v3, v12

    .line 140
    invoke-direct/range {v3 .. v11}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v1, v2, p0, v12}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Ljava/lang/String;

    .line 148
    .line 149
    if-eqz v1, :cond_0

    .line 150
    .line 151
    iput-object v1, p0, Lcom/transsion/search/activity/SearchManagerActivity;->j:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :catch_2
    move-exception v1

    .line 156
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_0

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_3
    return-void
.end method
