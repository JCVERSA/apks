.class public final Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastData;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_f

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :sswitch_0
    const-string v0, "firstQuartile"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    if-eqz p3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1
    if-nez v1, :cond_2

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_2
    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->setQuarter(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :sswitch_1
    const-string v0, "start"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    if-eqz p3, :cond_4

    .line 47
    .line 48
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_4
    if-nez v1, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->setStartTrack(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :sswitch_2
    const-string v0, "complete"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_6

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_6
    if-eqz p3, :cond_7

    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :cond_7
    if-nez v1, :cond_8

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_8
    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->setComplete(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :sswitch_3
    const-string v0, "thirdQuartile"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_9

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_9
    if-eqz p3, :cond_a

    .line 91
    .line 92
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :cond_a
    if-nez v1, :cond_b

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_b
    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->setThirdQuarter(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :sswitch_4
    const-string v0, "midpoint"

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_c

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_c
    if-eqz p3, :cond_d

    .line 113
    .line 114
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :cond_d
    if-nez v1, :cond_e

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_e
    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->setMidpoint(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_f
    :goto_0
    return-void

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x61aea3b8 -> :sswitch_4
        -0x4fbdabf6 -> :sswitch_3
        -0x23bacec7 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x21644853 -> :sswitch_0
    .end sparse-switch
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const-string v0, "{"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "}"

    .line 15
    .line 16
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move-object v3, p1

    .line 23
    :cond_0
    if-eqz v3, :cond_2

    .line 24
    .line 25
    :try_start_0
    const-class v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v0, "<get-entries>(...)"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "&"

    .line 43
    .line 44
    sget-object v7, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion$jsonToURLQuery$2$1$1;->INSTANCE:Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion$jsonToURLQuery$2$1$1;

    .line 45
    .line 46
    const/16 v8, 0x1e

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "parse error: "

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/ExceptionsKt;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v2, "VastDomParseUtil"

    .line 85
    .line 86
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    move-object v0, p1

    .line 90
    :goto_0
    if-nez v0, :cond_1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move-object p1, v0

    .line 94
    :cond_2
    :goto_1
    return-object p1
.end method

.method private final c(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 5

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_3

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    if-eq v3, v4, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    const-string v3, ""

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    const-string v4, "InLine"

    .line 41
    .line 42
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    sget-object v3, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil;->a:Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;

    .line 49
    .line 50
    invoke-direct {v3, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->k(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_2
    if-eq v1, v0, :cond_3

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    return-void
.end method

.method private final d(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    const-string v4, "Verification"

    .line 33
    .line 34
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v3, 0x0

    .line 42
    :goto_1
    if-eqz v3, :cond_2

    .line 43
    .line 44
    :try_start_0
    sget-object v3, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil;->a:Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;

    .line 45
    .line 46
    invoke-direct {v3, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->p(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :cond_2
    :goto_2
    if-eq v1, v0, :cond_3

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getAdVerifications()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    sget-object p2, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion$parseAdVerifications$3;->INSTANCE:Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion$parseAdVerifications$3;

    .line 63
    .line 64
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method private final e(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "id"

    .line 9
    .line 10
    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const-string v3, "skipoffset"

    .line 33
    .line 34
    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_1
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/k0;->a(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setSkipOffSet(Ljava/lang/Integer;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    const-string v1, ""

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    move-object v0, v1

    .line 80
    :cond_4
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setId(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-ltz v0, :cond_8

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    :goto_3
    invoke-interface {p2, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-eqz v3, :cond_7

    .line 99
    .line 100
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const/4 v5, 0x1

    .line 105
    if-eq v4, v5, :cond_5

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_5
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-nez v4, :cond_6

    .line 113
    .line 114
    move-object v4, v1

    .line 115
    :cond_6
    const-string v5, "Linear"

    .line 116
    .line 117
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_7

    .line 122
    .line 123
    invoke-direct {p0, p1, v3}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->l(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    .line 124
    .line 125
    .line 126
    :cond_7
    :goto_4
    if-eq v2, v0, :cond_8

    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_8
    return-void
.end method

.method private final f(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    const-string v3, ""

    .line 33
    .line 34
    :cond_1
    const-string v4, "Creative"

    .line 35
    .line 36
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->e(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    if-eq v1, v0, :cond_3

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return-void
.end method

.method private final g(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :try_start_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_9

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_8

    .line 17
    .line 18
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_4

    .line 38
    :cond_1
    :goto_1
    const-string v4, "CreativeExtension"

    .line 39
    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_8

    .line 45
    .line 46
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/4 v4, 0x0

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    const-string v5, "type"

    .line 54
    .line 55
    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move-object v3, v4

    .line 67
    :goto_2
    invoke-direct {p0, v3}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v5, "cover"

    .line 72
    .line 73
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    new-instance v3, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 83
    .line 84
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    :cond_4
    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v3, v2}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setVideoMask(Lcom/cloud/hisavana/sdk/common/bean/VideoMask;)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    const-string v5, "buttonText"

    .line 106
    .line 107
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_8

    .line 112
    .line 113
    if-nez p1, :cond_6

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_7

    .line 121
    .line 122
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    :cond_7
    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setButtonTxt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    :cond_8
    :goto_3
    if-eq v1, v0, :cond_9

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :goto_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v1, "parseExtensions "

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const-string v0, "VastDomParseUtil"

    .line 164
    .line 165
    invoke-virtual {p2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_9
    return-void
.end method

.method private final h(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "VastDomParseUtil"

    .line 6
    .line 7
    const-string v4, "parseIcon "

    .line 8
    .line 9
    const-string v5, "0"

    .line 10
    .line 11
    new-instance v15, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    .line 12
    .line 13
    const/16 v17, 0x3ff

    .line 14
    .line 15
    const/16 v18, 0x0

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v14, 0x0

    .line 25
    const/4 v0, 0x0

    .line 26
    const/16 v16, 0x0

    .line 27
    .line 28
    move-object v6, v15

    .line 29
    move-object/from16 v19, v15

    .line 30
    .line 31
    move-object v15, v0

    .line 32
    invoke-direct/range {v6 .. v18}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    move-object/from16 v6, v19

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object/from16 v6, v19

    .line 41
    .line 42
    invoke-virtual {v2, v6}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setIcon(Lcom/cloud/hisavana/sdk/common/bean/VastIcon;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v7, "program"

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-interface {v0, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move-object v0, v8

    .line 66
    :goto_1
    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setProgram(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    const-string v9, "width"

    .line 76
    .line 77
    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto :goto_3

    .line 90
    :cond_2
    move-object v0, v8

    .line 91
    :goto_2
    if-nez v0, :cond_3

    .line 92
    .line 93
    move-object v0, v5

    .line 94
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setWidth(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    new-instance v10, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v9, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :goto_4
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    const-string v9, "height"

    .line 139
    .line 140
    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    goto :goto_5

    .line 151
    :catch_1
    move-exception v0

    .line 152
    goto :goto_6

    .line 153
    :cond_4
    move-object v0, v8

    .line 154
    :goto_5
    if-nez v0, :cond_5

    .line 155
    .line 156
    move-object v0, v5

    .line 157
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setHeight(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .line 167
    .line 168
    goto :goto_7

    .line 169
    :goto_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    new-instance v10, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v9, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :goto_7
    :try_start_2
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    const-string v9, "xPosition"

    .line 202
    .line 203
    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-eqz v0, :cond_6

    .line 208
    .line 209
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    goto :goto_8

    .line 214
    :catch_2
    move-exception v0

    .line 215
    goto :goto_9

    .line 216
    :cond_6
    move-object v0, v8

    .line 217
    :goto_8
    if-nez v0, :cond_7

    .line 218
    .line 219
    move-object v0, v5

    .line 220
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setXPosition(Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 229
    .line 230
    .line 231
    goto :goto_a

    .line 232
    :goto_9
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v9, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :goto_a
    :try_start_3
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    if-eqz v0, :cond_8

    .line 263
    .line 264
    const-string v9, "yPosition"

    .line 265
    .line 266
    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    if-eqz v0, :cond_8

    .line 271
    .line 272
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    goto :goto_b

    .line 277
    :catch_3
    move-exception v0

    .line 278
    goto :goto_d

    .line 279
    :cond_8
    move-object v0, v8

    .line 280
    :goto_b
    if-nez v0, :cond_9

    .line 281
    .line 282
    goto :goto_c

    .line 283
    :cond_9
    move-object v5, v0

    .line 284
    :goto_c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setYPosition(Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 293
    .line 294
    .line 295
    goto :goto_e

    .line 296
    :goto_d
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v5, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :goto_e
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-eqz v0, :cond_a

    .line 327
    .line 328
    const-string v3, "offset"

    .line 329
    .line 330
    invoke-interface {v0, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    if-eqz v0, :cond_a

    .line 335
    .line 336
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    goto :goto_f

    .line 341
    :cond_a
    move-object v0, v8

    .line 342
    :goto_f
    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setOffset(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    if-eqz v0, :cond_b

    .line 350
    .line 351
    invoke-interface {v0, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    if-eqz v0, :cond_b

    .line 356
    .line 357
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    goto :goto_10

    .line 362
    :cond_b
    move-object v0, v8

    .line 363
    :goto_10
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/k0;->a(Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setDuration(Ljava/lang/Integer;)V

    .line 372
    .line 373
    .line 374
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    if-ltz v3, :cond_11

    .line 383
    .line 384
    const/4 v4, 0x0

    .line 385
    :goto_11
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    if-eqz v5, :cond_10

    .line 390
    .line 391
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    const/4 v9, 0x1

    .line 396
    if-eq v7, v9, :cond_c

    .line 397
    .line 398
    goto :goto_13

    .line 399
    :cond_c
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    if-nez v7, :cond_d

    .line 404
    .line 405
    const-string v7, ""

    .line 406
    .line 407
    :cond_d
    const-string v9, "IconClicks"

    .line 408
    .line 409
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v9

    .line 413
    if-eqz v9, :cond_e

    .line 414
    .line 415
    invoke-direct {v1, v2, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->i(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    .line 416
    .line 417
    .line 418
    goto :goto_13

    .line 419
    :cond_e
    const-string v9, "StaticResource"

    .line 420
    .line 421
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    if-eqz v7, :cond_10

    .line 426
    .line 427
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    if-eqz v5, :cond_f

    .line 432
    .line 433
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    goto :goto_12

    .line 438
    :cond_f
    move-object v5, v8

    .line 439
    :goto_12
    invoke-direct {v1, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-virtual {v6, v5}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setIconResource(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    :cond_10
    :goto_13
    if-eq v4, v3, :cond_11

    .line 447
    .line 448
    add-int/lit8 v4, v4, 0x1

    .line 449
    .line 450
    goto :goto_11

    .line 451
    :cond_11
    return-void
.end method

.method private final i(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_8

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_7

    .line 17
    .line 18
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    const-string v3, ""

    .line 33
    .line 34
    :cond_1
    const-string v4, "IconClickThrough"

    .line 35
    .line 36
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v4, :cond_5

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getIcon()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object v3, v5

    .line 51
    :goto_1
    if-nez v3, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    :cond_4
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v3, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->setIconClick(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    const-string v4, "IconClickTracking"

    .line 73
    .line 74
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_7

    .line 79
    .line 80
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-eqz v2, :cond_6

    .line 85
    .line 86
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    :cond_6
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    if-eqz p1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getIcon()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v3, :cond_7

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->getIconClickTracking()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-eqz v3, :cond_7

    .line 109
    .line 110
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_7
    :goto_2
    if-eq v1, v0, :cond_8

    .line 114
    .line 115
    add-int/lit8 v1, v1, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_8
    return-void
.end method

.method private final j(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    const-string v3, ""

    .line 33
    .line 34
    :cond_1
    const-string v4, "Icon"

    .line 35
    .line 36
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->h(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    if-eq v1, v0, :cond_3

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return-void
.end method

.method private final k(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_c

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_b

    .line 17
    .line 18
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x0

    .line 40
    sparse-switch v4, :sswitch_data_0

    .line 41
    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :sswitch_0
    const-string v4, "Impression"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    :cond_3
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_b

    .line 70
    .line 71
    if-eqz p1, :cond_b

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getImpression()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_b

    .line 78
    .line 79
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :sswitch_1
    const-string v4, "AdTitle"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_b

    .line 90
    .line 91
    if-nez p1, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_5

    .line 99
    .line 100
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    :cond_5
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setTitle(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :sswitch_2
    const-string v4, "Description"

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_6

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    if-nez p1, :cond_7

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_8

    .line 129
    .line 130
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    :cond_8
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setDescription(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :sswitch_3
    const-string v4, "Creatives"

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_9

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_9
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->f(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :sswitch_4
    const-string v4, "AdVerifications"

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_a

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_a
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->d(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    .line 165
    .line 166
    .line 167
    :cond_b
    :goto_1
    if-eq v1, v0, :cond_c

    .line 168
    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_c
    return-void

    .line 174
    nop

    .line 175
    :sswitch_data_0
    .sparse-switch
        -0x7bd325cb -> :sswitch_4
        -0x64e1597c -> :sswitch_3
        -0x360d424 -> :sswitch_2
        0x1deadbd5 -> :sswitch_1
        0x7e026e29 -> :sswitch_0
    .end sparse-switch
.end method

.method private final l(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_b

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_a

    .line 17
    .line 18
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    sparse-switch v4, :sswitch_data_0

    .line 40
    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :sswitch_0
    const-string v4, "TrackingEvents"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->n(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :sswitch_1
    const-string v4, "Icons"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->j(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :sswitch_2
    const-string v4, "CreativeExtensions"

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->g(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :sswitch_3
    const-string v4, "MediaFiles"

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->m(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :sswitch_4
    const-string v4, "Duration"

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_7

    .line 111
    .line 112
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    goto :goto_1

    .line 117
    :cond_7
    const/4 v2, 0x0

    .line 118
    :goto_1
    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-nez p1, :cond_8

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_8
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/k0;->a(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setDuration(Ljava/lang/Integer;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :sswitch_5
    const-string v4, "VideoClicks"

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-nez v3, :cond_9

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_9
    invoke-direct {p0, p1, v2}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->q(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V

    .line 147
    .line 148
    .line 149
    :cond_a
    :goto_2
    if-eq v1, v0, :cond_b

    .line 150
    .line 151
    add-int/lit8 v1, v1, 0x1

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_b
    return-void

    .line 156
    nop

    .line 157
    :sswitch_data_0
    .sparse-switch
        -0x7a2ef3da -> :sswitch_5
        -0x72e14e4c -> :sswitch_4
        -0x16f37aed -> :sswitch_3
        -0x162b1abd -> :sswitch_2
        0x43362fa -> :sswitch_1
        0x247392d0 -> :sswitch_0
    .end sparse-switch
.end method

.method private final m(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "VastDomParseUtil"

    .line 6
    .line 7
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    :try_start_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-ltz v5, :cond_17

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    move v7, v6

    .line 19
    :goto_0
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    if-eqz v8, :cond_16

    .line 24
    .line 25
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v9, 0x1

    .line 30
    if-eq v0, v9, :cond_0

    .line 31
    .line 32
    goto/16 :goto_15

    .line 33
    .line 34
    :cond_0
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    const-string v0, ""

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto/16 :goto_16

    .line 45
    .line 46
    :cond_1
    :goto_1
    const-string v9, "MediaFile"

    .line 47
    .line 48
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_16

    .line 53
    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 58
    .line 59
    const/16 v15, 0x1f

    .line 60
    .line 61
    const/16 v16, 0x0

    .line 62
    .line 63
    const/4 v10, 0x0

    .line 64
    const/4 v11, 0x0

    .line 65
    const/4 v12, 0x0

    .line 66
    const/4 v13, 0x0

    .line 67
    const/4 v14, 0x0

    .line 68
    move-object v9, v0

    .line 69
    invoke-direct/range {v9 .. v16}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setMainAd(Lcom/cloud/hisavana/sdk/common/bean/VastMedia;)V

    .line 73
    .line 74
    .line 75
    :goto_2
    const/4 v9, 0x0

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move-object v0, v9

    .line 84
    :goto_3
    if-nez v0, :cond_4

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_4
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    if-eqz v10, :cond_5

    .line 92
    .line 93
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    goto :goto_4

    .line 98
    :cond_5
    move-object v10, v9

    .line 99
    :goto_4
    invoke-direct {v1, v10}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-virtual {v0, v10}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->setMediaResource(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_5
    if-eqz v2, :cond_6

    .line 107
    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_6

    .line 113
    :cond_6
    move-object v0, v9

    .line 114
    :goto_6
    if-nez v0, :cond_7

    .line 115
    .line 116
    goto :goto_8

    .line 117
    :cond_7
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    if-eqz v10, :cond_8

    .line 122
    .line 123
    const-string v11, "delivery"

    .line 124
    .line 125
    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    if-eqz v10, :cond_8

    .line 130
    .line 131
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    goto :goto_7

    .line 136
    :cond_8
    move-object v10, v9

    .line 137
    :goto_7
    invoke-direct {v1, v10}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-virtual {v0, v10}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->setDelivery(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_8
    if-eqz v2, :cond_9

    .line 145
    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    goto :goto_9

    .line 151
    :cond_9
    move-object v0, v9

    .line 152
    :goto_9
    if-nez v0, :cond_a

    .line 153
    .line 154
    goto :goto_b

    .line 155
    :cond_a
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    if-eqz v10, :cond_b

    .line 160
    .line 161
    const-string v11, "type"

    .line 162
    .line 163
    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    if-eqz v10, :cond_b

    .line 168
    .line 169
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    goto :goto_a

    .line 174
    :cond_b
    move-object v10, v9

    .line 175
    :goto_a
    invoke-direct {v1, v10}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    invoke-virtual {v0, v10}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->setType(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_b
    if-nez v2, :cond_c

    .line 183
    .line 184
    goto :goto_d

    .line 185
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_d

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->getType()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_d

    .line 196
    .line 197
    const-string v10, "video"

    .line 198
    .line 199
    const/4 v11, 0x2

    .line 200
    invoke-static {v0, v10, v6, v11, v9}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    goto :goto_c

    .line 209
    :cond_d
    move-object v0, v9

    .line 210
    :goto_c
    invoke-virtual {v2, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setVideoType(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .line 212
    .line 213
    :goto_d
    const-string v10, "0"

    .line 214
    .line 215
    if-eqz v2, :cond_e

    .line 216
    .line 217
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    goto :goto_e

    .line 222
    :catch_1
    move-exception v0

    .line 223
    goto :goto_10

    .line 224
    :cond_e
    move-object v0, v9

    .line 225
    :goto_e
    if-nez v0, :cond_f

    .line 226
    .line 227
    goto :goto_11

    .line 228
    :cond_f
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    if-eqz v11, :cond_10

    .line 233
    .line 234
    const-string v12, "width"

    .line 235
    .line 236
    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    if-eqz v11, :cond_10

    .line 241
    .line 242
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    goto :goto_f

    .line 247
    :cond_10
    move-object v11, v9

    .line 248
    :goto_f
    invoke-direct {v1, v11}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    if-nez v11, :cond_11

    .line 253
    .line 254
    move-object v11, v10

    .line 255
    :cond_11
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    invoke-virtual {v0, v11}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->setWidth(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    .line 261
    .line 262
    goto :goto_11

    .line 263
    :goto_10
    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 264
    .line 265
    .line 266
    move-result-object v11

    .line 267
    new-instance v12, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string v13, "parseMediaFiles width "

    .line 273
    .line 274
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v11, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 289
    .line 290
    .line 291
    :goto_11
    if-eqz v2, :cond_12

    .line 292
    .line 293
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    goto :goto_12

    .line 298
    :catch_2
    move-exception v0

    .line 299
    goto :goto_14

    .line 300
    :cond_12
    move-object v0, v9

    .line 301
    :goto_12
    if-nez v0, :cond_13

    .line 302
    .line 303
    goto :goto_15

    .line 304
    :cond_13
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    if-eqz v8, :cond_14

    .line 309
    .line 310
    const-string v11, "height"

    .line 311
    .line 312
    invoke-interface {v8, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    if-eqz v8, :cond_14

    .line 317
    .line 318
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    :cond_14
    invoke-direct {v1, v9}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    if-nez v8, :cond_15

    .line 327
    .line 328
    goto :goto_13

    .line 329
    :cond_15
    move-object v10, v8

    .line 330
    :goto_13
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    invoke-virtual {v0, v8}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->setHeight(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 335
    .line 336
    .line 337
    goto :goto_15

    .line 338
    :goto_14
    :try_start_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    new-instance v9, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v10, "parseMediaFiles height "

    .line 348
    .line 349
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v8, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 364
    .line 365
    .line 366
    :cond_16
    :goto_15
    if-eq v7, v5, :cond_17

    .line 367
    .line 368
    add-int/lit8 v7, v7, 0x1

    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :goto_16
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    new-instance v4, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    const-string v5, "parseMediaFiles "

    .line 382
    .line 383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :cond_17
    return-void
.end method

.method private final n(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance v8, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 5
    .line 6
    const/16 v6, 0x1f

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v0, v8

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v8}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setVastTrack(Lcom/cloud/hisavana/sdk/common/bean/VastTracking;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ltz v0, :cond_8

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_1
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_7

    .line 37
    .line 38
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x1

    .line 43
    if-eq v3, v4, :cond_1

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, ""

    .line 51
    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    move-object v3, v4

    .line 55
    :cond_2
    const-string v5, "Tracking"

    .line 56
    .line 57
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_7

    .line 62
    .line 63
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v5, 0x0

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    const-string v6, "event"

    .line 71
    .line 72
    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move-object v3, v5

    .line 84
    :goto_2
    invoke-direct {p0, v3}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    :cond_4
    if-nez v5, :cond_5

    .line 99
    .line 100
    move-object v5, v4

    .line 101
    :cond_5
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-nez v2, :cond_6

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    move-object v4, v2

    .line 109
    :goto_3
    invoke-direct {p0, v3, v4, p1}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastData;)V

    .line 110
    .line 111
    .line 112
    :cond_7
    :goto_4
    if-eq v1, v0, :cond_8

    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_8
    return-void
.end method

.method private final p(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v3, "vender"

    .line 14
    .line 15
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;->vendorKey:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ltz v1, :cond_7

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    :goto_1
    invoke-interface {p2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_6

    .line 45
    .line 46
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const/4 v6, 0x1

    .line 51
    if-eq v5, v6, :cond_1

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-nez v5, :cond_2

    .line 59
    .line 60
    const-string v5, ""

    .line 61
    .line 62
    :cond_2
    const-string v6, "JavaScriptResource"

    .line 63
    .line 64
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    move-object v4, v2

    .line 82
    :goto_2
    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iput-object v4, v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;->url:Ljava/lang/String;

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_4
    const-string v6, "VerificationParameters"

    .line 90
    .line 91
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_6

    .line 96
    .line 97
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    move-object v4, v2

    .line 109
    :goto_3
    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    iput-object v4, v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;->verification_parameters:Ljava/lang/String;

    .line 118
    .line 119
    :cond_6
    :goto_4
    if-eq v3, v1, :cond_7

    .line 120
    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    if-eqz p1, :cond_8

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getAdVerifications()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_8

    .line 131
    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_8
    return-void
.end method

.method private final q(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v2, v2, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/VastClick;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setVastClick(Lcom/cloud/hisavana/sdk/common/bean/VastClick;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-ltz p2, :cond_7

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_1
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_6

    .line 30
    .line 31
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eq v4, v5, :cond_1

    .line 37
    .line 38
    goto :goto_4

    .line 39
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    const-string v4, ""

    .line 46
    .line 47
    :cond_2
    const-string v5, "ClickThrough"

    .line 48
    .line 49
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move-object v3, v2

    .line 67
    :goto_2
    invoke-direct {p0, v3}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v0, v3}, Lcom/cloud/hisavana/sdk/common/bean/VastClick;->setVideoClick(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    const-string v5, "ClickTracking"

    .line 76
    .line 77
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    move-object v3, v2

    .line 95
    :goto_3
    invoke-direct {p0, v3}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastClick;->getClickTrack()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    :cond_6
    :goto_4
    if-eq v1, p2, :cond_7

    .line 109
    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_7
    return-void
.end method

.method private final r(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "\\"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    const/4 v10, 0x4

    .line 16
    const/4 v11, 0x0

    .line 17
    const-string v7, "\\\""

    .line 18
    .line 19
    const-string v8, "\""

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    const-string p1, ""

    .line 28
    .line 29
    return-object p1
.end method

.method private final s(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "<![CDATA["

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    const/4 v10, 0x4

    .line 18
    const/4 v11, 0x0

    .line 19
    const-string v7, "]]>"

    .line 20
    .line 21
    const-string v8, ""

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v1, "&amp;"

    .line 33
    .line 34
    const-string v2, "&"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/VastData;
    .locals 32

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const-string v1, "VastDomParseUtil"

    .line 4
    .line 5
    const-string v2, "data"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v9, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    move-object/from16 v4, p0

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_1
    const/4 v2, 0x1

    .line 26
    const-string v10, ""

    .line 27
    .line 28
    invoke-static {v0, v9, v2, v10}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->k0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v4, "newInstance(...)"

    .line 36
    .line 37
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v8, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 41
    .line 42
    move-object v11, v8

    .line 43
    const v30, 0x3ffff

    .line 44
    .line 45
    .line 46
    const/16 v31, 0x0

    .line 47
    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v13, 0x0

    .line 50
    const/4 v14, 0x0

    .line 51
    const/4 v15, 0x0

    .line 52
    const/16 v16, 0x0

    .line 53
    .line 54
    const/16 v17, 0x0

    .line 55
    .line 56
    const/16 v18, 0x0

    .line 57
    .line 58
    const/16 v19, 0x0

    .line 59
    .line 60
    const/16 v20, 0x0

    .line 61
    .line 62
    const/16 v21, 0x0

    .line 63
    .line 64
    const/16 v22, 0x0

    .line 65
    .line 66
    const/16 v23, 0x0

    .line 67
    .line 68
    const/16 v24, 0x0

    .line 69
    .line 70
    const/16 v25, 0x0

    .line 71
    .line 72
    const/16 v26, 0x0

    .line 73
    .line 74
    const/16 v27, 0x0

    .line 75
    .line 76
    const/16 v28, 0x0

    .line 77
    .line 78
    const/16 v29, 0x0

    .line 79
    .line 80
    invoke-direct/range {v11 .. v31}, Lcom/cloud/hisavana/sdk/common/bean/VastData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    .line 82
    .line 83
    :try_start_0
    const-string v4, "&"

    .line 84
    .line 85
    const-string v5, "&amp;"

    .line 86
    .line 87
    const/4 v7, 0x4

    .line 88
    const/4 v11, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    move-object/from16 v3, p1

    .line 91
    .line 92
    move-object v12, v8

    .line 93
    move-object v8, v11

    .line 94
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    move-object/from16 v4, p0

    .line 99
    .line 100
    :try_start_1
    invoke-direct {v4, v3}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 105
    .line 106
    sget-object v6, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 107
    .line 108
    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    const-string v6, "getBytes(...)"

    .line 113
    .line 114
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v3, "VAST"

    .line 133
    .line 134
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_2

    .line 143
    .line 144
    return-object v12

    .line 145
    :cond_2
    sget-object v3, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil;->a:Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;

    .line 146
    .line 147
    const-string v5, "version"

    .line 148
    .line 149
    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-direct {v3, v5}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v12, v3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setVersion(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-ltz v3, :cond_6

    .line 169
    .line 170
    const/4 v5, 0x0

    .line 171
    :goto_0
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    if-eqz v6, :cond_5

    .line 176
    .line 177
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-eq v7, v2, :cond_3

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_3
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    if-nez v7, :cond_4

    .line 189
    .line 190
    move-object v7, v10

    .line 191
    goto :goto_1

    .line 192
    :cond_4
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :goto_1
    const-string v8, "Ad"

    .line 196
    .line 197
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-eqz v7, :cond_5

    .line 202
    .line 203
    sget-object v7, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil;->a:Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;

    .line 204
    .line 205
    invoke-direct {v7, v12, v6}, Lcom/cloud/hisavana/sdk/common/util/VastDomParseUtil$Companion;->c(Lcom/cloud/hisavana/sdk/common/bean/VastData;Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    goto :goto_3

    .line 211
    :cond_5
    :goto_2
    if-eq v5, v3, :cond_6

    .line 212
    .line 213
    add-int/lit8 v5, v5, 0x1

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v3, "parseVast "

    .line 226
    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return-object v12

    .line 241
    :catch_1
    move-exception v0

    .line 242
    move-object/from16 v4, p0

    .line 243
    .line 244
    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :goto_4
    return-object v9
.end method
