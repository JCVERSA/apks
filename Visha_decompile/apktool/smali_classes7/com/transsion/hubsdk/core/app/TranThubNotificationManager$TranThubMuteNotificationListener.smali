.class public Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubMuteNotificationListener;
.super Lcom/transsion/hubsdk/notification/ITranMuteNotificationListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubMuteNotificationListener"
.end annotation


# instance fields
.field private mListener:Lcom/transsion/hubsdk/api/app/ITranMuteNotificationListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;Lcom/transsion/hubsdk/api/app/ITranMuteNotificationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubMuteNotificationListener;->this$0:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/notification/ITranMuteNotificationListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubMuteNotificationListener;->mListener:Lcom/transsion/hubsdk/api/app/ITranMuteNotificationListener;

    return-void
.end method


# virtual methods
.method public onNotifyMute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/notification/TranRanking;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubMuteNotificationListener;->mListener:Lcom/transsion/hubsdk/api/app/ITranMuteNotificationListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/notification/TranRanking;

    new-instance v2, Lcom/transsion/hubsdk/api/app/TranRanking;

    invoke-virtual {v1}, Lcom/transsion/hubsdk/notification/TranRanking;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/transsion/hubsdk/notification/TranRanking;->getUid()I

    move-result v4

    invoke-virtual {v1}, Lcom/transsion/hubsdk/notification/TranRanking;->isMute()Z

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Lcom/transsion/hubsdk/api/app/TranRanking;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubMuteNotificationListener;->mListener:Lcom/transsion/hubsdk/api/app/ITranMuteNotificationListener;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/api/app/ITranMuteNotificationListener;->onNotifyMute(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotifyMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method
