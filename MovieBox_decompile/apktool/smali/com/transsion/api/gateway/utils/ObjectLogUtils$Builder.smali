.class public Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/api/gateway/utils/ObjectLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private defaultDir:Ljava/lang/String;

.field private dir:Ljava/lang/String;

.field private sConsoleFilter:I

.field private sFileFilter:I

.field private sGlobalTag:Ljava/lang/String;

.field private sLog2ConsoleSwitch:Z

.field private sLog2FileSwitch:Z

.field private sLogBorderSwitch:Z

.field private sLogHeadSwitch:Z

.field private sLogSwitch:Z

.field private sTagIsSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogSwitch:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2ConsoleSwitch:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogHeadSwitch:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2FileSwitch:Z

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogBorderSwitch:Z

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sConsoleFilter:I

    .line 23
    .line 24
    iput v0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sFileFilter:I

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic access$1000(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sFileFilter:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1100(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1200(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogHeadSwitch:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1300(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogBorderSwitch:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1400(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->defaultDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1402(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->defaultDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->dir:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogSwitch:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2ConsoleSwitch:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$800(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2FileSwitch:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$900(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sConsoleFilter:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public create()Lcom/transsion/api/gateway/utils/ObjectLogUtils;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;-><init>(Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;Lcom/transsion/api/gateway/utils/ObjectLogUtils$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setBorderSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogBorderSwitch:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setConsoleFilter(I)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sConsoleFilter:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setConsoleSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2ConsoleSwitch:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setDir(Ljava/io/File;)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->dir:Ljava/lang/String;

    return-object p0
.end method

.method public setDir(Ljava/lang/String;)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->dir:Ljava/lang/String;

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->dir:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setFileFilter(I)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sFileFilter:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setGlobalTag(Ljava/lang/String;)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$000(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public setLog2FileSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2FileSwitch:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setLogHeadSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogHeadSwitch:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setLogSwitch(Z)Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogSwitch:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "switch: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogSwitch:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "console: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2ConsoleSwitch:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "tag: "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    const-string v1, "null"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    .line 53
    .line 54
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, "head: "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogHeadSwitch:Z

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, "file: "

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLog2FileSwitch:Z

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, "dir: "

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->dir:Ljava/lang/String;

    .line 104
    .line 105
    if-nez v1, :cond_1

    .line 106
    .line 107
    iget-object v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->defaultDir:Ljava/lang/String;

    .line 108
    .line 109
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, "border: "

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-boolean v1, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sLogBorderSwitch:Z

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, "consoleFilter: "

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$300()[C

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sConsoleFilter:I

    .line 146
    .line 147
    add-int/lit8 v2, v2, -0x2

    .line 148
    .line 149
    aget-char v1, v1, v2

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v1, "fileFilter: "

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->access$300()[C

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget v2, p0, Lcom/transsion/api/gateway/utils/ObjectLogUtils$Builder;->sFileFilter:I

    .line 171
    .line 172
    add-int/lit8 v2, v2, -0x2

    .line 173
    .line 174
    aget-char v1, v1, v2

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    return-object v0
.end method
