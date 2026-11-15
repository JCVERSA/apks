.class public final Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J \u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;",
        "",
        "()V",
        "openActivatePage",
        "",
        "appChainContext",
        "Lcom/cloud/tmc/integration/chain/app/AppChainContext;",
        "dataBundle",
        "Landroid/os/Bundle;",
        "openActivatePageShell",
        "hotOpenType",
        "",
        "openNewPage",
        "parsePageStage",
        "parsePageStageShell",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->INSTANCE:Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final parsePageStage(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

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
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    instance-of v1, v1, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;

    .line 27
    .line 28
    if-nez v1, :cond_5

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    instance-of v1, v1, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    instance-of v1, v1, Lcom/cloud/tmc/integration/chain/errorState/PageErrorState;

    .line 43
    .line 44
    if-nez v1, :cond_5

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    instance-of v0, v0, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessState;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessState;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessState;->reportNew(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessState;

    .line 86
    .line 87
    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessState;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_4

    .line 108
    .line 109
    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessState;

    .line 110
    .line 111
    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessState;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_6

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_6

    .line 132
    .line 133
    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillState;

    .line 134
    .line 135
    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillState;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    :goto_0
    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessState;

    .line 146
    .line 147
    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessState;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessState;->reportNew(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_1
    return-void
.end method

.method private final parsePageStageShell(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

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
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "currentChainEndState:"

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", currentChainEndState:"

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "HotOpenState"

    .line 56
    .line 57
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    instance-of v1, v1, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;

    .line 65
    .line 66
    const-string v2, "shell_1"

    .line 67
    .line 68
    const-string v3, "shell_0"

    .line 69
    .line 70
    if-nez v1, :cond_6

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    instance-of v1, v1, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    instance-of v1, v1, Lcom/cloud/tmc/integration/chain/errorState/PageErrorState;

    .line 85
    .line 86
    if-nez v1, :cond_6

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-nez v1, :cond_1

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    instance-of v0, v0, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell0State;

    .line 111
    .line 112
    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell0State;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell0State;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell0State;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_2
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-eqz p3, :cond_8

    .line 128
    .line 129
    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell1State;

    .line 130
    .line 131
    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell1State;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell1State;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell1State;->reportNew(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell1State;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_1

    .line 144
    .line 145
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    .line 146
    .line 147
    .line 148
    move-result p3

    .line 149
    if-eqz p3, :cond_4

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    .line 152
    .line 153
    .line 154
    move-result p3

    .line 155
    if-eqz p3, :cond_4

    .line 156
    .line 157
    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessShellState;

    .line 158
    .line 159
    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessShellState;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessShellState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessShellState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessShellState;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    if-eqz p3, :cond_5

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    .line 179
    .line 180
    .line 181
    move-result p3

    .line 182
    if-nez p3, :cond_5

    .line 183
    .line 184
    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessShellState;

    .line 185
    .line 186
    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessShellState;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessShellState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessShellState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessShellState;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_5
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    .line 200
    .line 201
    .line 202
    move-result p3

    .line 203
    if-nez p3, :cond_8

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    .line 206
    .line 207
    .line 208
    move-result p3

    .line 209
    if-nez p3, :cond_8

    .line 210
    .line 211
    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillShellState;

    .line 212
    .line 213
    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillShellState;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillShellState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillShellState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillShellState;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_6
    :goto_0
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_7

    .line 231
    .line 232
    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell0State;

    .line 233
    .line 234
    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell0State;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell0State;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell0State;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell0State;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_7
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p3

    .line 251
    if-eqz p3, :cond_8

    .line 252
    .line 253
    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;

    .line 254
    .line 255
    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;->reportNew(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 268
    .line 269
    .line 270
    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public final openActivatePage(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "appChainContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dataBundle"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Lcom/cloud/tmc/integration/chain/endState/StartStepEndState;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->parsePageStage(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :catchall_0
    :goto_0
    return-void
.end method

.method public final openActivatePageShell(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "appChainContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dataBundle"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "hotOpenType"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v0, v0, Lcom/cloud/tmc/integration/chain/endState/StartStepEndState;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;

    .line 25
    .line 26
    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->parsePageStageShell(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    :catchall_0
    :goto_0
    return-void
.end method

.method public final openNewPage(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "appChainContext"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "dataBundle"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->destroy(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    .line 25
    .line 26
    const-string v3, "0"

    .line 27
    .line 28
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "dataBundle.getString(ChainPoint.CHAIN_SCENE, \"0\")"

    .line 33
    .line 34
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setScene(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v2, "hot_open_type"

    .line 41
    .line 42
    const-string v3, "-2"

    .line 43
    .line 44
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "dataBundle.getString(HOT_OPEN_TYPE, \"-2\")"

    .line 49
    .line 50
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setHotOpenType(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    .line 65
    .line 66
    const-string v3, "-1"

    .line 67
    .line 68
    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const-string v2, "dataBundle.getString(Cha\u2026CHAIN_OPEN_CHANNEL, \"-1\")"

    .line 73
    .line 74
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setOpenChannel(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageIndexOfApp()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenedPageCount()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setReportMid(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setReportEnd(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setOpenMiniAppMidResult(Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setOpenMiniAppEndResult(Z)V

    .line 104
    .line 105
    .line 106
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 107
    .line 108
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateCostTime(Ljava/util/Map;)V

    .line 112
    .line 113
    .line 114
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 115
    .line 116
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateRangeTime(Ljava/util/Map;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageMaxStage(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setSyncType(I)V

    .line 126
    .line 127
    .line 128
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 129
    .line 130
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setSyncTypeMap(Ljava/util/Map;)V

    .line 134
    .line 135
    .line 136
    const-string p2, ""

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setH5ProgressCollectList(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 153
    .line 154
    .line 155
    move p2, v1

    .line 156
    :goto_0
    const/16 v2, 0xc

    .line 157
    .line 158
    if-ge p2, v2, :cond_2

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 169
    .line 170
    .line 171
    move-result-wide v4

    .line 172
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 177
    .line 178
    .line 179
    move-result-wide v5

    .line 180
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    const/4 v6, 0x2

    .line 185
    new-array v6, v6, [Ljava/lang/Long;

    .line 186
    .line 187
    aput-object v4, v6, v0

    .line 188
    .line 189
    aput-object v5, v6, v1

    .line 190
    .line 191
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    const-wide/16 v4, 0x0

    .line 207
    .line 208
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    .line 215
    add-int/2addr p2, v1

    .line 216
    goto :goto_0

    .line 217
    :catchall_0
    :cond_2
    return-void
.end method
