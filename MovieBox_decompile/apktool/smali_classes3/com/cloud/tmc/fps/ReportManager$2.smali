.class Lcom/cloud/tmc/fps/ReportManager$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/fps/ReportManager;->dealPreFrameTraceInfo(JLjava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/fps/ReportManager;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/fps/ReportManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/fps/ReportManager$2;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/cloud/tmc/fps/ReportManager$2;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/cloud/tmc/fps/ReportManager;->c(Lcom/cloud/tmc/fps/ReportManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, [Ljava/lang/StackTraceElement;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/cloud/tmc/fps/ReportManager$2;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    invoke-static {v3, v4, v2}, Lcom/cloud/tmc/fps/ReportManager;->e(Lcom/cloud/tmc/fps/ReportManager;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/EncodeUtils;->base64Encode2String([B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x0

    .line 46
    move v4, v3

    .line 47
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v6, -0x1

    .line 52
    if-ge v4, v5, :cond_1

    .line 53
    .line 54
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lcom/cloud/tmc/fps/data/StackTraceData;

    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/cloud/tmc/fps/data/StackTraceData;->getStackInfo()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_0

    .line 69
    .line 70
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/cloud/tmc/fps/data/StackTraceData;

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/cloud/tmc/fps/data/StackTraceData;->getCount()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    goto :goto_2

    .line 81
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move v4, v6

    .line 85
    :goto_2
    const/4 v5, 0x1

    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    if-le v4, v6, :cond_2

    .line 89
    .line 90
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/cloud/tmc/fps/data/StackTraceData;

    .line 95
    .line 96
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lcom/cloud/tmc/fps/data/StackTraceData;

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/cloud/tmc/fps/data/StackTraceData;->getCount()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    add-int/2addr v3, v5

    .line 107
    invoke-virtual {v2, v3}, Lcom/cloud/tmc/fps/data/StackTraceData;->setCount(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    new-instance v3, Lcom/cloud/tmc/fps/data/StackTraceData;

    .line 112
    .line 113
    invoke-direct {v3, v5, v2}, Lcom/cloud/tmc/fps/data/StackTraceData;-><init>(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    .line 121
    .line 122
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    .line 124
    .line 125
    new-instance v2, Lcom/google/gson/Gson;

    .line 126
    .line 127
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v2, "fps_drop_stackInfo"

    .line 135
    .line 136
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 146
    .line 147
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_FPS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 148
    .line 149
    const-string v3, ""

    .line 150
    .line 151
    invoke-interface {v0, v3, v2, v3, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/cloud/tmc/fps/ReportManager$2;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/cloud/tmc/fps/ReportManager;->c(Lcom/cloud/tmc/fps/ReportManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 161
    .line 162
    .line 163
    return-void
.end method
