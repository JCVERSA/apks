.class public abstract Lnr/b;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lcom/transsion/shorttv/bean/PreVideoAddress;)Lcom/transsion/shorttv/bean/Video;
    .locals 11

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/shorttv/bean/Video;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getBitrate()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getDefinition()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v4, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v4, v3

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getDuration()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getFps()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getHeight()Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getSize()Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v8

    .line 52
    long-to-int v1, v8

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v8, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v8, v3

    .line 60
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getUrl()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getWidth()Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getResolution()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    move-object v1, v0

    .line 73
    move-object v3, v4

    .line 74
    move-object v4, v5

    .line 75
    move-object v5, v6

    .line 76
    move-object v6, v7

    .line 77
    move-object v7, v8

    .line 78
    move-object v8, v9

    .line 79
    move-object v9, v10

    .line 80
    move-object v10, p0

    .line 81
    invoke-direct/range {v1 .. v10}, Lcom/transsion/shorttv/bean/Video;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v0
.end method
