.class Lcom/bytedance/adsdk/sP/HiB/uP;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method static Sj(Landroid/util/JsonReader;)Lcom/bytedance/adsdk/sP/TKC/sP/uA;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, v0

    .line 4
    move v3, v1

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    if-eqz v4, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    const/4 v5, -0x1

    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    sparse-switch v6, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :sswitch_0
    const-string v6, "nm"

    .line 28
    .line 29
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v5, 0x2

    .line 37
    goto :goto_1

    .line 38
    :sswitch_1
    const-string v6, "mm"

    .line 39
    .line 40
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v5, 0x1

    .line 48
    goto :goto_1

    .line 49
    :sswitch_2
    const-string v6, "hd"

    .line 50
    .line 51
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v5, v1

    .line 59
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_0

    .line 71
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {v2}, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->Sj(I)Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    goto :goto_0

    .line 80
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;

    .line 86
    .line 87
    invoke-direct {p0, v0, v2, v3}, Lcom/bytedance/adsdk/sP/TKC/sP/uA;-><init>(Ljava/lang/String;Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;Z)V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0xcfc -> :sswitch_2
        0xda0 -> :sswitch_1
        0xdbf -> :sswitch_0
    .end sparse-switch

    .line 92
    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
