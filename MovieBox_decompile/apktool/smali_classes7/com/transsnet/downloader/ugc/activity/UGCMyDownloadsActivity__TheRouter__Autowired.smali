.class public Lcom/transsnet/downloader/ugc/activity/UGCMyDownloadsActivity__TheRouter__Autowired;
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
    instance-of v0, p0, Lcom/transsnet/downloader/ugc/activity/UGCMyDownloadsActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p0, Lcom/transsnet/downloader/ugc/activity/UGCMyDownloadsActivity;

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
    if-eqz v1, :cond_2

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
    const-string v2, "int"

    .line 28
    .line 29
    new-instance v12, Lcom/therouter/router/b;

    .line 30
    .line 31
    const-string v4, "int"

    .line 32
    .line 33
    const-string v5, "main_tab_index"

    .line 34
    .line 35
    const-string v7, ""

    .line 36
    .line 37
    const-string v8, "com.transsnet.downloader.ugc.activity.UGCMyDownloadsActivity"

    .line 38
    .line 39
    const-string v9, "mainTabIndex"

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
    check-cast v2, Ljava/lang/Integer;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iput v2, p0, Lcom/transsnet/downloader/ugc/activity/UGCMyDownloadsActivity;->i:I
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
    const-string v2, "java.lang.String"

    .line 75
    .line 76
    new-instance v12, Lcom/therouter/router/b;

    .line 77
    .line 78
    const-string v4, "java.lang.String"

    .line 79
    .line 80
    const-string v5, "sub_tab_title"

    .line 81
    .line 82
    const-string v7, ""

    .line 83
    .line 84
    const-string v8, "com.transsnet.downloader.ugc.activity.UGCMyDownloadsActivity"

    .line 85
    .line 86
    const-string v9, "subTabTitle"

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
    move-result-object v1

    .line 100
    check-cast v1, Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v1, :cond_0

    .line 103
    .line 104
    iput-object v1, p0, Lcom/transsnet/downloader/ugc/activity/UGCMyDownloadsActivity;->j:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_1
    move-exception v1

    .line 108
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_0

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    return-void
.end method
