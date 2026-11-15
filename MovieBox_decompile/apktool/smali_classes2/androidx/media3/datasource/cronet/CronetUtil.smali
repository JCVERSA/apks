.class public abstract Landroidx/media3/datasource/cronet/CronetUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cronet/CronetUtil$CronetProviderComparator;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lorg/chromium/net/CronetEngine;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Landroidx/media3/datasource/cronet/CronetUtil;->b(Landroid/content/Context;Ljava/lang/String;Z)Lorg/chromium/net/CronetEngine;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Lorg/chromium/net/CronetEngine;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/chromium/net/CronetProvider;->getAllProviders(Landroid/content/Context;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    add-int/lit8 p0, p0, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz p0, :cond_2

    .line 17
    .line 18
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/chromium/net/CronetProvider;

    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/chromium/net/CronetProvider;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lorg/chromium/net/CronetProvider;

    .line 35
    .line 36
    invoke-virtual {v1}, Lorg/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "Fallback-Cronet-Provider"

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance p0, Landroidx/media3/datasource/cronet/CronetUtil$CronetProviderComparator;

    .line 55
    .line 56
    invoke-direct {p0, p2}, Landroidx/media3/datasource/cronet/CronetUtil$CronetProviderComparator;-><init>(Z)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    const-string v1, "CronetUtil"

    .line 68
    .line 69
    if-ge p0, p2, :cond_4

    .line 70
    .line 71
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lorg/chromium/net/CronetProvider;

    .line 76
    .line 77
    invoke-virtual {p2}, Lorg/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lorg/chromium/net/CronetProvider;

    .line 86
    .line 87
    invoke-virtual {v2}, Lorg/chromium/net/CronetProvider;->createBuilder()Lorg/chromium/net/CronetEngine$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    invoke-virtual {v2, p1}, Lorg/chromium/net/CronetEngine$Builder;->setUserAgent(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-virtual {v2}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v4, "CronetEngine built using "

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-static {v1, p2}, Landroidx/media3/common/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    return-object v2

    .line 121
    :catch_0
    const-string p2, "Failed to link Cronet binaries. Please check that native Cronet binaries arebundled into your app."

    .line 122
    .line 123
    invoke-static {v1, p2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_1
    const-string p2, "Failed to build CronetEngine. Please check that the process has android.permission.ACCESS_NETWORK_STATE."

    .line 128
    .line 129
    invoke-static {v1, p2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :goto_2
    add-int/lit8 p0, p0, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    const-string p0, "CronetEngine could not be built."

    .line 136
    .line 137
    invoke-static {v1, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/4 p0, 0x0

    .line 141
    return-object p0
.end method
