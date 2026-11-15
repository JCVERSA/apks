.class public Lcom/cloud/hisavana/sdk/p;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/p$d;,
        Lcom/cloud/hisavana/sdk/p$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Ljava/util/List;

.field private c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

.field private d:I

.field e:Landroidx/collection/b;

.field private final f:Lcom/cloud/hisavana/sdk/v$c;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p;->e:Landroidx/collection/b;

    .line 5
    new-instance v0, Lcom/cloud/hisavana/sdk/p$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/p$a;-><init>(Lcom/cloud/hisavana/sdk/p;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p;-><init>()V

    return-void
.end method

.method private B(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/common/util/g;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    .line 51
    .line 52
    invoke-interface {p2, p1}, Lcom/cloud/hisavana/sdk/v$c;->a(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "current code seat is "

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const-string v1, "OfflineAdManager"

    .line 82
    .line 83
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/cloud/hisavana/sdk/v;->b()Lcom/cloud/hisavana/sdk/v;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    .line 91
    .line 92
    invoke-virtual {p1, v0, p2}, Lcom/cloud/hisavana/sdk/v;->j(Ljava/util/List;Lcom/cloud/hisavana/sdk/v$c;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    .line 97
    .line 98
    const/4 p2, 0x0

    .line 99
    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/v$c;->a(Ljava/util/List;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private C(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getCodeSeatId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const-string v2, "OfflineAdManager"

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "response pmid is different with request\'s"

    .line 27
    .line 28
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    .line 32
    .line 33
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_OFFLINE_PLACEMENT_ID_MISMATCH:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 34
    .line 35
    invoke-interface {p1, p3, p4, p2}, Lcom/cloud/hisavana/sdk/v$c;->a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatType()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getCodeSeatType()Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, "response adt is different with request\'s"

    .line 62
    .line 63
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    .line 67
    .line 68
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_OFFLINE_TYPE_MISMATCH:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 69
    .line 70
    invoke-interface {p1, p3, p4, p2}, Lcom/cloud/hisavana/sdk/v$c;->a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 71
    .line 72
    .line 73
    return v1

    .line 74
    :cond_1
    const/4 p1, 0x0

    .line 75
    return p1
.end method

.method private D(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isPriorityH5Ad()Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/o0;->f(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    sget-object v1, Lcom/cloud/hisavana/sdk/c0;->a:Lcom/cloud/hisavana/sdk/c0;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/c0;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/p;->v(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 v1, 0x3

    .line 54
    invoke-direct {p0, p1, v1}, Lcom/cloud/hisavana/sdk/p;->w(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    return v0

    .line 58
    :cond_2
    const/4 p1, 0x0

    .line 59
    return p1
.end method

.method private E(Ljava/util/List;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 5

    .line 1
    const-string v0, "OfflineAdManager"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p3, :cond_6

    .line 5
    .line 6
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/util/d0;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x2

    .line 35
    if-eq v2, v1, :cond_4

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatType()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 p2, 0x0

    .line 49
    if-ne p1, v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getUrl()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string p2, "Native ad\'s image is empty,remove from list"

    .line 116
    .line 117
    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return v1

    .line 121
    :cond_3
    return p2

    .line 122
    :cond_4
    :goto_0
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    if-ne v2, v1, :cond_5

    .line 130
    .line 131
    move v3, v1

    .line 132
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    return v1

    .line 140
    :cond_6
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string p2, "ad is null or ad is not offline,remove from list"

    .line 145
    .line 146
    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return v1
.end method

.method public static F()Lcom/cloud/hisavana/sdk/p;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/p$d;->a()Lcom/cloud/hisavana/sdk/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic G(Lcom/cloud/hisavana/sdk/p;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/p;->c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic H(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, v3, v2}, Lcom/cloud/hisavana/sdk/d;->i(Ljava/lang/String;ZLjava/util/List;Z)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/p;->t(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic I(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLastOfflineAdEnable()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/p;->B(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x4

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p;->w(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/p;->d:I

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/p;->B(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/p;->B(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 p2, 0x5

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p;->w(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isAdRequestFail()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getOfflineAdRequestTimeInterval()Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getOfflineAdRequestTimeIntervalNoAd()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    int-to-long v0, v0

    .line 70
    const-wide/16 v2, 0x0

    .line 71
    .line 72
    cmp-long v2, v0, v2

    .line 73
    .line 74
    if-lez v2, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    const-wide/16 v0, 0x3c

    .line 78
    .line 79
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLastRequestAdTime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    sub-long/2addr v2, v4

    .line 88
    const-wide/16 v4, 0x3e8

    .line 89
    .line 90
    mul-long/2addr v0, v4

    .line 91
    cmp-long v0, v2, v0

    .line 92
    .line 93
    if-gtz v0, :cond_5

    .line 94
    .line 95
    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/p;->B(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/4 p2, 0x6

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p;->w(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_5
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const/4 p2, 0x1

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p;->w(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p;->c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 116
    .line 117
    iget p2, p0, Lcom/cloud/hisavana/sdk/p;->d:I

    .line 118
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p;->s(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;I)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method private synthetic J(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p;->B(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic K(Lcom/cloud/hisavana/sdk/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic L(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, v3, v2}, Lcom/cloud/hisavana/sdk/d;->i(Ljava/lang/String;ZLjava/util/List;Z)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 14
    .line 15
    new-instance v2, Lcom/cloud/hisavana/sdk/m;

    .line 16
    .line 17
    invoke-direct {v2, p0, v0, p1}, Lcom/cloud/hisavana/sdk/m;-><init>(Lcom/cloud/hisavana/sdk/p;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method static synthetic M(Lcom/cloud/hisavana/sdk/p;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/p;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Lcom/cloud/hisavana/sdk/p;)Lcom/cloud/hisavana/sdk/v$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/p;->L(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p;->I(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/p;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p;->J(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/p;->H(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/p;->g(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p;->c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic g(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/x0;->c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/p;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/p;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/p;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method private j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p;->b:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p;->b:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 30
    .line 31
    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/p;->D(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/p;->c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 42
    .line 43
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 44
    .line 45
    new-instance v3, Lcom/cloud/hisavana/sdk/i;

    .line 46
    .line 47
    invoke-direct {v3, p0, v2}, Lcom/cloud/hisavana/sdk/i;-><init>(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p;->b:Ljava/util/List;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    .line 64
    .line 65
    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/v$c;->a(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void

    .line 69
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    .line 70
    .line 71
    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/v$c;->a(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/p;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p;->u(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 4

    .line 1
    const-string v0, "OfflineAdManager"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "offline loadAd error, response is :"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getCode()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, ", "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getCode()Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v1, "offline loadAd error, response is null"

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 73
    .line 74
    const/4 p1, -0x1

    .line 75
    const-string v1, "response is null"

    .line 76
    .line 77
    invoke-direct {v0, p1, v1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-interface {p1, p2, v1, v0}, Lcom/cloud/hisavana/sdk/v$c;->a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private o(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 7

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getScales()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAbTest()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getExtInfo()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAdSeatType()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getTestResponse()Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 59
    .line 60
    invoke-direct {p0, p4, p5, v4}, Lcom/cloud/hisavana/sdk/p;->E(Ljava/util/List;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_2

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v5}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setFilePath(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setFill_ts(Ljava/lang/Long;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAbTest(Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setExtInfo(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setTestResponse(Ljava/lang/Boolean;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdSeatType(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, p6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdRequestVer(I)V

    .line 118
    .line 119
    .line 120
    sget-object v5, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    .line 121
    .line 122
    const/4 v6, 0x0

    .line 123
    invoke-virtual {v5, v4, v6}, Lcom/cloud/hisavana/sdk/common/util/b;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setUuid(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setScales(Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v4, v5}, Lcom/cloud/hisavana/sdk/p;->r(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v4}, Lcom/cloud/hisavana/sdk/w2;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    const/4 v5, -0x1

    .line 141
    if-ne v4, v5, :cond_0

    .line 142
    .line 143
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    return-void
.end method

.method private p(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "OfflineAdManager"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAds()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAds()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getOfflineAd()Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAds()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/hisavana/sdk/p;->C(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v11, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdRequestVer()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    add-int/lit8 v9, v3, 0x1

    .line 82
    .line 83
    invoke-virtual {p2, v9}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setAdRequestVer(I)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/cloud/hisavana/sdk/O;->g()Lcom/cloud/hisavana/sdk/O;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/O;->j(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 91
    .line 92
    .line 93
    move-object v3, p0

    .line 94
    move-object v4, p1

    .line 95
    move-object v5, p3

    .line 96
    move-object v6, v0

    .line 97
    move-object v7, v10

    .line 98
    move-object v8, v11

    .line 99
    invoke-direct/range {v3 .. v9}, Lcom/cloud/hisavana/sdk/p;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_2

    .line 107
    .line 108
    if-eqz p3, :cond_2

    .line 109
    .line 110
    iget-object v4, p3, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v5, p3, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v6, p3, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    .line 115
    .line 116
    const/4 v9, 0x1

    .line 117
    const/4 p1, 0x2

    .line 118
    move-object v7, v10

    .line 119
    move-object v8, v11

    .line 120
    move v10, p1

    .line 121
    invoke-static/range {v4 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/p;->e:Landroidx/collection/b;

    .line 135
    .line 136
    invoke-static {v0, v2, p3, p1, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    new-instance p3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v2, "download ad before"

    .line 149
    .line 150
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-virtual {p1, v1, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setLocalOfflineAdCacheCount(I)V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/cloud/hisavana/sdk/p;->F()Lcom/cloud/hisavana/sdk/p;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p;->A(Ljava/util/List;)V

    .line 179
    .line 180
    .line 181
    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 182
    .line 183
    new-instance p3, Lcom/cloud/hisavana/sdk/l;

    .line 184
    .line 185
    invoke-direct {p3, p0, p2}, Lcom/cloud/hisavana/sdk/l;-><init>(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    .line 193
    .line 194
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADS_OFFLINE_ARE_FILTERED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 195
    .line 196
    invoke-interface {p1, p3, v2, p2}, Lcom/cloud/hisavana/sdk/v$c;->a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 197
    .line 198
    .line 199
    :goto_0
    return-void

    .line 200
    :cond_4
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    const-string p2, "ads list is empty"

    .line 205
    .line 206
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    .line 210
    .line 211
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_OFFLINE_AD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 212
    .line 213
    invoke-interface {p1, p3, v2, p2}, Lcom/cloud/hisavana/sdk/v$c;->a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method private r(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAppInfo()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAppInfo()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-class v1, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setGaid(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setShowId(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/transsion/core/utils/a;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setAppPackageName(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setOfflineAd(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getShowTrackingSecretKey()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setShowTrackingSecretKey(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPslinkInfo(Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "load ad extAppInfo error ="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v0, "OfflineAdManager"

    .line 90
    .line 91
    invoke-virtual {p2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_2
    return-void
.end method

.method private s(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p;->f:Lcom/cloud/hisavana/sdk/v$c;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/v$c;->a(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "requestAds config id "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "OfflineAdManager"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatType()Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getOfflineAdCacheCount()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mAdCount:I

    .line 70
    .line 71
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAd:Z

    .line 79
    .line 80
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/util/l0;->b()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    iput-boolean v2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAdEnable:Z

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLocalOfflineAdCacheCount()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    iput v2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->cacheAdCount:I

    .line 97
    .line 98
    if-eq p2, v1, :cond_3

    .line 99
    .line 100
    const/4 v2, 0x2

    .line 101
    if-eq p2, v2, :cond_2

    .line 102
    .line 103
    const/4 v2, 0x3

    .line 104
    if-eq p2, v2, :cond_1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    const/4 p2, 0x7

    .line 108
    iput p2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    const/4 p2, 0x6

    .line 112
    iput p2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    const/4 p2, 0x5

    .line 116
    iput p2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    .line 117
    .line 118
    :goto_0
    new-instance p2, Lcom/cloud/hisavana/sdk/common/http/a;

    .line 119
    .line 120
    invoke-direct {p2}, Lcom/cloud/hisavana/sdk/common/http/a;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance v2, Lcom/cloud/hisavana/sdk/p$b;

    .line 124
    .line 125
    invoke-direct {v2, p0, p1, v0}, Lcom/cloud/hisavana/sdk/p$b;-><init>(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v2}, Lcom/cloud/hisavana/sdk/common/http/a;->m(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance p2, Lcom/cloud/hisavana/sdk/k;

    .line 133
    .line 134
    invoke-direct {p2, v0}, Lcom/cloud/hisavana/sdk/k;-><init>(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->o(Lcom/cloud/hisavana/sdk/common/http/a$b;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {}, Lc7/b;->l()Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->k(Z)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {}, Lcom/cloud/hisavana/sdk/g1;->o()Lcom/cloud/hisavana/sdk/g1;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/g1;->q()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->q(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object p2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->n(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/http/a;->l(Z)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/http/a;->j(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/http/d;->b()V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method private t(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/hisavana/sdk/j;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/hisavana/sdk/j;-><init>(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private u(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setLastRequestAdTime(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setAdRequestFail(Z)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/cloud/hisavana/sdk/O;->g()Lcom/cloud/hisavana/sdk/O;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/O;->j(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private v(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/p;->d:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->j0(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private w(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/p;->d:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {p1, v0, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Y(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/d;->y(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/d;->H(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x(Ljava/lang/String;IZLjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/hisavana/sdk/p$c;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/d;->o(Ljava/lang/String;IZLjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/hisavana/sdk/p$c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public y(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/d;->r(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public z(Ljava/util/Collection;I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "startDownloadAd triggerType "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", isDownloading "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/p;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ", config list size: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "OfflineAdManager"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p;->b:Ljava/util/List;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    .line 88
    .line 89
    iput p2, p0, Lcom/cloud/hisavana/sdk/p;->d:I

    .line 90
    .line 91
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p;->j()V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    return-void
.end method
