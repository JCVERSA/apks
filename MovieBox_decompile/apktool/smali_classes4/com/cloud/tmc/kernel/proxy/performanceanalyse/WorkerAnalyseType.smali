.class public final enum Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;",
        ">;",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum CREATE_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum EXECUTE_JS_END_1:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum EXECUTE_JS_END_2:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum EXECUTE_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum LOAD_JS_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum LOAD_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum SEND_TO_NATIVE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum SEND_TO_RENDER:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

.field public static final enum WARMUP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;


# instance fields
.field des:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;
    .locals 3

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    new-array v0, v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 4
    .line 5
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_END_1:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_END_2:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_NATIVE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_RENDER:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->WARMUP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "[Worker]:[\u521d\u59cb\u5316]"

    .line 5
    .line 6
    const-string v3, "INIT"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 12
    .line 13
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "[Worker]:[\u521b\u5efaWorker\u5f15\u64ce]: \u5f00\u59cb"

    .line 17
    .line 18
    const-string v3, "CREATE_START"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 24
    .line 25
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "[Worker]:[\u521b\u5efaWorker\u5f15\u64ce]: \u5b8c\u6210"

    .line 29
    .line 30
    const-string v3, "CREATE_END"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 36
    .line 37
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "[Worker]:[\u52a0\u8f7dworker.js]: \u5f00\u59cb"

    .line 41
    .line 42
    const-string v3, "LOAD_JS_START"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 48
    .line 49
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "[Worker]:[\u52a0\u8f7dworker.js]: \u5b8c\u6210"

    .line 53
    .line 54
    const-string v3, "LOAD_JS_END"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 60
    .line 61
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "[Worker]:[\u6267\u884cjs\u51fd\u6570]: \u5f00\u59cb"

    .line 65
    .line 66
    const-string v3, "EXECUTE_JS_START"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 72
    .line 73
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "[Worker]:[\u6267\u884cjs\u51fd\u6570(\u6709callback)]: \u5b8c\u6210"

    .line 77
    .line 78
    const-string v3, "EXECUTE_JS_END_1"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_END_1:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 84
    .line 85
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "[Worker]:[\u6267\u884cjs\u51fd\u6570(\u65e0callback)]: \u5b8c\u6210"

    .line 89
    .line 90
    const-string v3, "EXECUTE_JS_END_2"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_END_2:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 96
    .line 97
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "[Worker]:[\u53d1\u9001\u6570\u636e\u5230Native]"

    .line 102
    .line 103
    const-string v3, "SEND_TO_NATIVE"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_NATIVE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 109
    .line 110
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "[Worker]:[\u53d1\u9001\u6570\u636e\u5230Render]"

    .line 115
    .line 116
    const-string v3, "SEND_TO_RENDER"

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_RENDER:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 122
    .line 123
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-string v2, "[Worker]:[\u6267\u884c\u5931\u8d25]"

    .line 128
    .line 129
    const-string v3, "ERROR"

    .line 130
    .line 131
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 135
    .line 136
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-string v2, "[Worker]:[console]"

    .line 141
    .line 142
    const-string v3, "CONSOLE"

    .line 143
    .line 144
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 148
    .line 149
    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const-string v2, "[Worker]:[warmup]"

    .line 154
    .line 155
    const-string v3, "WARMUP"

    .line 156
    .line 157
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->WARMUP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 161
    .line 162
    invoke-static {}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->$values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 167
    .line 168
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->des:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->des:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
