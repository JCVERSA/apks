.class public Lcom/transsion/sdk/oneid/data/DeviceInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public battery:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public plat:Ljava/lang/String;

.field public ram:Ljava/lang/String;

.field public rom:Ljava/lang/String;

.field public screen_dpi:Ljava/lang/String;

.field public screen_h:Ljava/lang/String;

.field public screen_w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->brand:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->model:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->plat:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->rom:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->ram:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->battery:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->screen_h:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->screen_w:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->screen_dpi:Ljava/lang/String;

    .line 23
    .line 24
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->brand:Ljava/lang/String;

    .line 27
    .line 28
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->model:Ljava/lang/String;

    .line 31
    .line 32
    :try_start_0
    const-string v1, "ro.board.platform"

    .line 33
    .line 34
    invoke-static {p1, v1}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->plat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->plat:Ljava/lang/String;

    .line 44
    .line 45
    :goto_0
    invoke-static {}, Lcom/transsion/sdk/oneid/b;->j()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->rom:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->n(Landroid/content/Context;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->ram:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->battery:Ljava/lang/String;

    .line 62
    .line 63
    :try_start_1
    const-string v1, "window"

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/view/WindowManager;

    .line 70
    .line 71
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 72
    .line 73
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 81
    .line 82
    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 92
    .line 93
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 94
    .line 95
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->screen_w:Ljava/lang/String;

    .line 107
    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 117
    .line 118
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 119
    .line 120
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->screen_h:Ljava/lang/String;

    .line 132
    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->screen_dpi:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .line 152
    :catch_1
    return-void
.end method
