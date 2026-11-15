.class public Lcom/transsion/api/gateway/utils/LogUtils$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/api/gateway/utils/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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


# virtual methods
.method public setBorderSwitch(Z)Lcom/transsion/api/gateway/utils/LogUtils$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$902(Z)Z

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public setConsoleFilter(I)Lcom/transsion/api/gateway/utils/LogUtils$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1002(I)I

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public setConsoleSwitch(Z)Lcom/transsion/api/gateway/utils/LogUtils$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$102(Z)Z

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public setDir(Ljava/io/File;)Lcom/transsion/api/gateway/utils/LogUtils$Builder;
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

    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$702(Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setDir(Ljava/lang/String;)Lcom/transsion/api/gateway/utils/LogUtils$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$702(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$800()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$800()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$702(Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setFileFilter(I)Lcom/transsion/api/gateway/utils/LogUtils$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1102(I)I

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public setGlobalTag(Ljava/lang/String;)Lcom/transsion/api/gateway/utils/LogUtils$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$200(Ljava/lang/String;)Z

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
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$402(Z)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$402(Z)Z

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public setLog2FileSwitch(Z)Lcom/transsion/api/gateway/utils/LogUtils$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$602(Z)Z

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public setLogHeadSwitch(Z)Lcom/transsion/api/gateway/utils/LogUtils$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$502(Z)Z

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public setLogSwitch(Z)Lcom/transsion/api/gateway/utils/LogUtils$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/LogUtils;->access$002(Z)Z

    .line 2
    .line 3
    .line 4
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
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$000()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1200()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "console: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$100()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1200()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, "tag: "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$400()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    const-string v1, "null"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$300()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1200()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, "head: "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$500()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1200()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, "file: "

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$600()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1200()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, "dir: "

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$700()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-nez v1, :cond_1

    .line 120
    .line 121
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1300()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    goto :goto_1

    .line 126
    :cond_1
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$700()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1200()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, "border: "

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$900()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1200()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, "consoleFilter: "

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1400()[C

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1000()I

    .line 169
    .line 170
    .line 171
    move-result v2

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
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1200()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, "fileFilter: "

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1400()[C

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {}, Lcom/transsion/api/gateway/utils/LogUtils;->access$1100()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    add-int/lit8 v2, v2, -0x2

    .line 200
    .line 201
    aget-char v1, v1, v2

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    return-object v0
.end method
