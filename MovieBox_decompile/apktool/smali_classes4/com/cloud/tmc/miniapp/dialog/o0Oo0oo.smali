.class public final Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO00o:Landroid/content/Context;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lkotlin/Lazy;

.field public final OooO0o0:Lkotlin/Lazy;

.field public OooO0oO:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "mContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO00o:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO0OO;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0OO:Lkotlin/Lazy;

    .line 28
    .line 29
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO0O0;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0Oo:Lkotlin/Lazy;

    .line 39
    .line 40
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO00o;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0o0:Lkotlin/Lazy;

    .line 50
    .line 51
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO0o;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0o:Lkotlin/Lazy;

    .line 61
    .line 62
    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->dialog_mini_open_app:I

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 72
    .line 73
    .line 74
    const/16 p1, 0x50

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setGravity(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 77
    .line 78
    .line 79
    const/4 p1, -0x1

    .line 80
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0()Landroid/widget/ImageView;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_0

    .line 88
    .line 89
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/o;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0OO()Landroid/widget/TextView;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/p;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/p;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO00o()Landroid/widget/ImageView;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/q;

    .line 118
    .line 119
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/q;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 132
    .line 133
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_GET_ADD_EX:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 134
    .line 135
    new-instance v1, Landroid/os/Bundle;

    .line 136
    .line 137
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v2, "miniappid"

    .line 141
    .line 142
    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 146
    .line 147
    const-string p2, ""

    .line 148
    .line 149
    invoke-interface {p1, p2, v0, p2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;Landroid/view/View;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0oO:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 3
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0oO:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0oO:Z

    .line 4
    const-class p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO00o:Landroid/content/Context;

    new-instance v1, Lcom/cloud/tmc/integration/model/CSMKBean;

    iget-boolean p0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0oO:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-direct {v1, p0}, Lcom/cloud/tmc/integration/model/CSMKBean;-><init>(Z)V

    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "1000886706715795456_web"

    const-string v2, "csmk"

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO00o:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0:Ljava/lang/String;

    const/16 v4, 0x8

    const/4 v5, 0x0

    const-string v2, "120011"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 4
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 5
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_GET_ADD_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0:Ljava/lang/String;

    const-string v4, "miniappid"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v3, "type"

    const-string v5, "1"

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    const-string v3, ""

    invoke-interface {v0, v3, v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0oO:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 10
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_GET_ADD_NOSHOW:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3, v0, v3, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static final OooO0OO(Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 3
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 4
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_GET_ADD_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0:Ljava/lang/String;

    const-string v4, "miniappid"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v3, "type"

    const-string v5, "2"

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    const-string v3, ""

    invoke-interface {v0, v3, v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0oO:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 9
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_GET_ADD_NOSHOW:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3, v0, v3, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final OooO0O0()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final OooO0OO()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
