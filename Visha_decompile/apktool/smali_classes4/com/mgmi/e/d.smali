.class public Lcom/mgmi/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgmi/e/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mgmi/e/d;
    .locals 2

    .line 2
    sget-object v0, Lcom/mgmi/e/d;->a:Lcom/mgmi/e/d;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mgmi/e/d;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mgmi/e/d;->a:Lcom/mgmi/e/d;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mgmi/e/d;

    invoke-direct {v1}, Lcom/mgmi/e/d;-><init>()V

    sput-object v1, Lcom/mgmi/e/d;->a:Lcom/mgmi/e/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/e/d;->a:Lcom/mgmi/e/d;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "0"

    if-eqz p0, :cond_0

    return-object v0

    .line 96
    :cond_0
    :try_start_0
    invoke-static {p1}, Lg4d;->k(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_d

    .line 97
    array-length v1, p0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 98
    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_6

    .line 99
    aget-object v7, p0, v1

    .line 100
    invoke-static {v7}, Lg4d;->n(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v2, v7

    goto :goto_1

    .line 101
    :cond_1
    invoke-static {v7}, Lg4d;->m(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v4, v7

    goto :goto_1

    .line 102
    :cond_2
    invoke-static {v7}, Lg4d;->t(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 103
    invoke-static {}, Lg4d;->f()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v6, v7

    goto :goto_1

    .line 104
    :cond_3
    invoke-static {v7}, Lg4d;->r(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v3, v7

    goto :goto_1

    :cond_4
    move-object v5, v7

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_8

    .line 105
    const-string p0, "MiniProgram://"

    const-string v1, "?username"

    invoke-static {v2, p0, v1}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    :goto_2
    move-object v2, p1

    goto :goto_3

    .line 106
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    if-eqz v3, :cond_c

    .line 108
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_9

    .line 109
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 110
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v6}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    move-object p1, v6

    goto :goto_4

    :cond_9
    move-object p1, v3

    :cond_a
    :goto_4
    move-object v3, p1

    :cond_b
    move-object p1, v2

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_b

    .line 111
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v6}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_b

    move-object p1, v2

    move-object v3, v6

    goto :goto_5

    :cond_d
    move-object v3, p1

    move-object v4, v3

    move-object v5, v4

    .line 112
    :goto_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e

    .line 113
    const-string p0, "4"

    return-object p0

    .line 114
    :cond_e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    .line 115
    const-string p0, "1"

    return-object p0

    .line 116
    :cond_f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "2"

    if-nez p0, :cond_10

    return-object p1

    .line 117
    :cond_10
    :try_start_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_11

    return-object p1

    .line 118
    :cond_11
    const-string p0, "3"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 91
    const-string v0, "[STATUS]"

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 92
    const-string v0, "[CLICK_STATUS]"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 93
    sget v0, Ljed;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CLICK_ASSIS]"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 94
    const-string v0, "[DPLINK]"

    invoke-direct {p0, p2}, Lcom/mgmi/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(Lcom/mgmi/model/m;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgmi/model/m;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->ad_list:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v2, :cond_0

    .line 23
    const-string v3, "boot"

    iget-object v4, v2, Lcom/mgmi/net/bean/BootDataItem;->ad_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "3"

    iget-object v4, v2, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->click:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 24
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/net/bean/BootDataItem;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->click:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/mgmi/net/bean/BootDataItem;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mgmi/net/bean/BootDataItem;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    const-string p0, "landClick"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 54
    iget-object p0, p2, Lcom/mgmi/net/bean/BootDataItem;->landClick:Ljava/util/List;

    return-object p0

    .line 55
    :cond_0
    const-string p0, "landClose"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 56
    iget-object p0, p2, Lcom/mgmi/net/bean/BootDataItem;->landClose:Ljava/util/List;

    return-object p0

    .line 57
    :cond_1
    const-string p0, "firstQuartile"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 58
    iget-object p0, p2, Lcom/mgmi/net/bean/BootDataItem;->firstQuartile:Ljava/util/List;

    return-object p0

    .line 59
    :cond_2
    const-string p0, "midpoint"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 60
    iget-object p0, p2, Lcom/mgmi/net/bean/BootDataItem;->midpoint:Ljava/util/List;

    return-object p0

    .line 61
    :cond_3
    const-string p0, "thirdQuartile"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 62
    iget-object p0, p2, Lcom/mgmi/net/bean/BootDataItem;->thirdQuartile:Ljava/util/List;

    return-object p0

    .line 63
    :cond_4
    const-string p0, "complete"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 64
    iget-object p0, p2, Lcom/mgmi/net/bean/BootDataItem;->complete:Ljava/util/List;

    return-object p0

    .line 65
    :cond_5
    const-string p0, "dlSt"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 66
    iget-object p0, p2, Lcom/mgmi/net/bean/BootDataItem;->dlSt:Ljava/util/List;

    return-object p0

    .line 67
    :cond_6
    const-string p0, "dlFin"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 68
    iget-object p0, p2, Lcom/mgmi/net/bean/BootDataItem;->dlFin:Ljava/util/List;

    return-object p0

    .line 69
    :cond_7
    const-string p0, "insSt"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 70
    iget-object p0, p2, Lcom/mgmi/net/bean/BootDataItem;->insSt:Ljava/util/List;

    return-object p0

    .line 71
    :cond_8
    const-string p0, "insFin"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 72
    iget-object p0, p2, Lcom/mgmi/net/bean/BootDataItem;->insFin:Ljava/util/List;

    return-object p0

    .line 73
    :cond_9
    const-string p0, "close"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 74
    iget-object p0, p2, Lcom/mgmi/net/bean/BootDataItem;->close:Ljava/util/List;

    return-object p0

    .line 75
    :cond_a
    const-string p0, "creativeTrack"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 76
    iget-object p0, p2, Lcom/mgmi/net/bean/BootDataItem;->creativeTrack:Ljava/util/List;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/VASTAd;)V
    .locals 5

    .line 77
    iget-object p0, p1, Lcom/mgmi/model/ADEventBean;->params:Ljava/util/Map;

    if-eqz p0, :cond_3

    .line 78
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 79
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    iget-object v2, p1, Lcom/mgmi/model/ADEventBean;->type:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 81
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 82
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-boolean v3, p1, Lcom/mgmi/model/ADEventBean;->isFullScreen:Z

    const-string v4, "[STATUS]"

    if-eqz v3, :cond_1

    .line 87
    const-string v3, "1"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 88
    :cond_1
    const-string v3, "2"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 89
    :cond_2
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    .line 90
    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/net/bean/BootDataItem;)V
    .locals 5

    .line 38
    iget-object v0, p1, Lcom/mgmi/model/ADEventBean;->params:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 39
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 40
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 41
    iget-object v2, p1, Lcom/mgmi/model/ADEventBean;->type:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/mgmi/e/d;->a(Ljava/lang/String;Lcom/mgmi/net/bean/BootDataItem;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 42
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 44
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 47
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 48
    iget-boolean v3, p1, Lcom/mgmi/model/ADEventBean;->isFullScreen:Z

    const-string v4, "[STATUS]"

    if-eqz v3, :cond_1

    .line 49
    const-string v3, "1"

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 50
    :cond_1
    const-string v3, "2"

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 51
    :cond_2
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    .line 52
    invoke-virtual {v2, p2}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lcom/mgmi/model/m;Lcom/mgmi/model/ADEventBean;)V
    .locals 0

    .line 1
    return-void
.end method

.method private a(Lcom/mgmi/net/bean/BootDataItem;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 25
    iget v0, p1, Lcom/mgmi/net/bean/BootDataItem;->interact_tpid:I

    if-lez v0, :cond_1

    const-string v0, "4"

    iget-object v1, p1, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p1, Lcom/mgmi/net/bean/BootDataItem;->interact_online:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private b(Lcom/mgmi/model/m;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgmi/model/m;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->ad_list:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 24
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v3, :cond_0

    .line 25
    const-string v4, "boot"

    iget-object v5, v3, Lcom/mgmi/net/bean/BootDataItem;->ad_type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/mgmi/e/d;->a(Lcom/mgmi/net/bean/BootDataItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/mgmi/net/bean/BootDataItem;->trace:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 26
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/net/bean/BootDataItem;

    iget-object v3, v3, Lcom/mgmi/net/bean/BootDataItem;->trace:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private c(Lcom/mgmi/model/m;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgmi/model/m;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->ad_list:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v3, :cond_0

    .line 24
    const-string v4, "boot"

    iget-object v5, v3, Lcom/mgmi/net/bean/BootDataItem;->ad_type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/mgmi/e/d;->a(Lcom/mgmi/net/bean/BootDataItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/mgmi/net/bean/BootDataItem;->interactTrace:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 25
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/net/bean/BootDataItem;

    iget-object v3, v3, Lcom/mgmi/net/bean/BootDataItem;->interactTrace:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V
    .locals 2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 8
    :try_start_0
    const-string v0, "trace_inner"

    iget-object v1, p1, Lcom/mgmi/model/ADEventBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/e/d;->d(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V

    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "error"

    iget-object v1, p1, Lcom/mgmi/model/ADEventBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/e/d;->b(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V

    goto :goto_0

    .line 12
    :cond_1
    const-string v0, "click"

    iget-object v1, p1, Lcom/mgmi/model/ADEventBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/e/d;->c(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V

    goto :goto_0

    .line 14
    :cond_2
    const-string v0, "trace"

    iget-object v1, p1, Lcom/mgmi/model/ADEventBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/e/d;->e(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/e/d;->f(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/model/m;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/mgmi/model/m;->d()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/mgmi/model/m;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 28
    invoke-virtual {p1}, Lcom/mgmi/model/m;->d()Ljava/util/List;

    move-result-object p0

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    const-string v1, "mgmi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportErrors url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "[ERRORCODE]"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "[ERRORMSG]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "null"

    if-nez p4, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {p4}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "[ERRORURL]"

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p3}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_3
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p0

    .line 37
    invoke-virtual {p0, p1}, Lcom/mgmi/e/a/d;->a(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method

.method public b(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p0

    if-eqz p2, :cond_8

    if-eqz p0, :cond_8

    .line 2
    invoke-virtual {p2}, Lcom/mgmi/model/m;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/mgmi/model/m;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/mgmi/model/m;->g()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p2}, Lcom/mgmi/model/m;->d()Ljava/util/List;

    move-result-object v0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    return-void

    .line 10
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 11
    :cond_5
    iget-object p1, p1, Lcom/mgmi/model/ADEventBean;->params:Ljava/util/Map;

    if-eqz p1, :cond_8

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 13
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    if-lez p2, :cond_8

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 17
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 18
    :cond_7
    invoke-virtual {p0, v0}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public c(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p2}, Lcom/mgmi/model/m;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 3
    iget-object v1, p1, Lcom/mgmi/model/ADEventBean;->params:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 6
    invoke-virtual {p2}, Lcom/mgmi/model/m;->k()Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-direct {p0, p2}, Lcom/mgmi/e/d;->a(Lcom/mgmi/model/m;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 9
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v3, :cond_4

    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 11
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 13
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 14
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p2}, Lcom/mgmi/model/m;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mgmi/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v0, v4}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/mgmi/e/d;->a(Lcom/mgmi/model/m;Lcom/mgmi/model/ADEventBean;)V

    :cond_4
    return-void
.end method

.method public d(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V
    .locals 5

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/mgmi/model/ADEventBean;->params:Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mgmi/model/m;->f()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/mgmi/e/d;->b(Lcom/mgmi/model/m;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string v2, "[EV_KEY]"

    const-string v3, "interact_ad"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public e(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V
    .locals 5

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/mgmi/model/ADEventBean;->params:Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mgmi/model/m;->i()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/mgmi/e/d;->c(Lcom/mgmi/model/m;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string v2, "[EV_KEY]"

    const-string v3, "interact_ad"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public f(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/mgmi/net/bean/BootDataItem;

    invoke-direct {p0, p1, p2}, Lcom/mgmi/e/d;->a(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/net/bean/BootDataItem;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/mgmi/model/VASTAd;

    invoke-direct {p0, p1, p2}, Lcom/mgmi/e/d;->a(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/VASTAd;)V

    :cond_1
    :goto_0
    return-void
.end method
