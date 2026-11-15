.class final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/cloud/tmc/miniapp/dialog/OooOOO0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;->invoke$lambda$3$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invoke$lambda$3$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_btn:I

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v3, v0, :cond_2

    .line 32
    .line 33
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getDialog(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_MORE_EXIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 51
    .line 52
    invoke-interface {p1, p0, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->layer_app_brand:I

    .line 57
    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-ne p1, v0, :cond_4

    .line 66
    .line 67
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_ENTER_DEVELOP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getDialog(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    sget-object v1, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;

    .line 112
    .line 113
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getAppBrandBundle(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/model/AppModel;)Landroid/os/Bundle;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v1, p0, v0, p1}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;->launch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;
    .locals 29

    move-object/from16 v1, p0

    .line 2
    new-instance v2, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-direct {v2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 3
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v4, "1000886706715795456"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 6
    sget v6, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_message:I

    .line 7
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_message:I

    invoke-virtual {v2, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x18

    const/4 v11, 0x0

    .line 8
    const-string v5, "message"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 10
    sget v14, Lcom/cloud/tmc/miniapp/R$drawable;->mini_icon_bottom_dialog_btn_notification:I

    .line 11
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_miniapp_center:I

    invoke-virtual {v2, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x18

    const/16 v19, 0x0

    .line 12
    const-string v13, "message"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    :goto_0
    new-instance v12, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 14
    sget v6, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_permission_icon:I

    .line 15
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_manager_title:I

    invoke-virtual {v2, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x18

    const/4 v11, 0x0

    .line 16
    const-string v5, "permission"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    new-instance v4, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 18
    sget v15, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_feedback:I

    .line 19
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_feedback:I

    invoke-virtual {v2, v5}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x18

    const/16 v20, 0x0

    .line 20
    const-string v14, "feedback"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v4

    invoke-direct/range {v13 .. v20}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    new-instance v5, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 22
    sget v23, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_refresh:I

    .line 23
    sget v6, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_reopen:I

    invoke-virtual {v2, v6}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x18

    const/16 v28, 0x0

    .line 24
    const-string v22, "refreshApp"

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v28}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v12, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    .line 25
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    .line 26
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o()Z

    move-result v0

    if-nez v0, :cond_3

    .line 27
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 28
    invoke-virtual {v6}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "message"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 29
    :goto_1
    check-cast v5, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    if-eqz v5, :cond_3

    .line 30
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 31
    :goto_2
    const-string v5, "BottomDialog"

    invoke-static {v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :cond_3
    :goto_3
    iget-object v0, v2, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {v0, v4}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    .line 33
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;

    invoke-direct {v0, v2, v3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 34
    iput-object v0, v2, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0oo:Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;

    .line 35
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/j0;

    invoke-direct {v0, v3}, Lcom/cloud/tmc/miniapp/ui/j0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 36
    sget v3, Lcom/cloud/tmc/miniapp/R$id;->tv_btn:I

    .line 37
    sget v4, Lcom/cloud/tmc/miniapp/R$id;->layer_app_brand:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    .line 38
    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;->invoke()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v0

    return-object v0
.end method
