.class Lcom/transsion/visha/ai/AIService$2;
.super Lcom/transsion/visha/ai/IAIServiceInterface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/visha/ai/AIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/visha/ai/AIService;


# direct methods
.method public constructor <init>(Lcom/transsion/visha/ai/AIService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-direct {p0}, Lcom/transsion/visha/ai/IAIServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerAudioPlayListener(Lcom/transsion/visha/ai/IAudioPlayStateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {p0, p1}, Lcom/transsion/visha/ai/AIService;->j(Lcom/transsion/visha/ai/AIService;Lcom/transsion/visha/ai/IAudioPlayStateCallback;)V

    return-void
.end method

.method public searchAudioData(Ljava/lang/String;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/visha/ai/AIServiceManager;->n()Lcom/transsion/visha/ai/AIServiceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/visha/ai/AIServiceManager;->v(Ljava/lang/String;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    return-void
.end method

.method public startAudioActivity(Lcom/transsion/visha/ai/AudioData;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/visha/ai/AIServiceManager;->n()Lcom/transsion/visha/ai/AIServiceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/visha/ai/AIServiceManager;->l(Lcom/transsion/visha/ai/AudioData;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    return-void
.end method

.method public startPlay(Ljava/lang/String;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lm06;->b()V

    iget-object v0, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {v0, p2}, Lcom/transsion/visha/ai/AIService;->i(Lcom/transsion/visha/ai/AIService;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/transsion/visha/ai/AIModel;

    invoke-static {v0, v1}, Lek4;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/visha/ai/AIModel;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    const-string v2, ""

    if-nez p1, :cond_14

    if-eqz v0, :cond_14

    :try_start_1
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    const/16 v3, 0x3ea

    if-nez p1, :cond_2

    invoke-static {v2}, Lm06;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {p1, p2, v3}, Lcom/transsion/visha/ai/AIService;->l(Lcom/transsion/visha/ai/AIService;Lcom/transsion/visha/ai/IAudioPlayCallback;I)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lcom/transsion/visha/ai/AIService;->k(Lcom/transsion/visha/ai/AIService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm06;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/transsion/visha/ai/AIService$2$f;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIService$2$f;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x2a

    invoke-static/range {v1 .. v7}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/transsion/visha/ai/AIService;->k(Lcom/transsion/visha/ai/AIService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm06;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/transsion/visha/ai/AIService$2$g;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIService$2$g;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x2b

    invoke-static/range {v1 .. v7}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/transsion/visha/ai/AIService;->k(Lcom/transsion/visha/ai/AIService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm06;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/transsion/visha/ai/AIService$2$h;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIService$2$h;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x2c

    invoke-static/range {v1 .. v7}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/transsion/visha/ai/AIService;->k(Lcom/transsion/visha/ai/AIService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm06;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {v4}, Lcom/transsion/visha/ai/AIService;->e(Lcom/transsion/visha/ai/AIService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object v4, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/transsion/visha/ai/AIService$2$i;

    invoke-direct {v10, p0, p2}, Lcom/transsion/visha/ai/AIService$2$i;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v5, 0x0

    const/16 v9, 0x2d

    invoke-static/range {v4 .. v10}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {v4}, Lcom/transsion/visha/ai/AIService;->d(Lcom/transsion/visha/ai/AIService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object v4, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/transsion/visha/ai/AIService$2$j;

    invoke-direct {v10, p0, p2}, Lcom/transsion/visha/ai/AIService$2$j;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v5, 0x0

    const/16 v9, 0x2e

    invoke-static/range {v4 .. v10}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {v4}, Lcom/transsion/visha/ai/AIService;->h(Lcom/transsion/visha/ai/AIService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object v4, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/transsion/visha/ai/AIService$2$k;

    invoke-direct {v10, p0, p2}, Lcom/transsion/visha/ai/AIService$2$k;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v5, 0x0

    const/16 v9, 0x2f

    invoke-static/range {v4 .. v10}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {p1}, Lcom/transsion/visha/ai/AIService;->g(Lcom/transsion/visha/ai/AIService;)Lx38;

    move-result-object p1

    invoke-static {}, Loa1;->e()I

    move-result v4

    invoke-interface {p1, v4}, Lx38;->getPlayListListForService(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcom/transsion/visha/ai/AIService$2$l;

    invoke-direct {v11, p0, p2}, Lcom/transsion/visha/ai/AIService$2$l;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/16 v10, 0x30

    invoke-static/range {v5 .. v11}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_a
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/transsion/visha/ai/AIService;->k(Lcom/transsion/visha/ai/AIService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm06;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p1

    if-ne p1, v1, :cond_b

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->O()Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p1

    iput-boolean v4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    const/16 v0, 0x1a

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    iget-object v0, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {v0, p1}, Lcom/transsion/visha/ai/AIService;->p(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_b
    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/transsion/visha/ai/AIService$2$m;

    invoke-direct {v6, p0, p2}, Lcom/transsion/visha/ai/AIService$2$m;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v1, 0x0

    const/16 v5, 0x1a

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_c
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/transsion/visha/ai/AIService;->k(Lcom/transsion/visha/ai/AIService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm06;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p1

    if-ne p1, v1, :cond_d

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->O()Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p1

    iput-boolean v4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    const/16 v0, 0x19

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    iget-object v0, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {v0, p1}, Lcom/transsion/visha/ai/AIService;->p(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_d
    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/transsion/visha/ai/AIService$2$a;

    invoke-direct {v6, p0, p2}, Lcom/transsion/visha/ai/AIService$2$a;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v1, 0x0

    const/16 v5, 0x19

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_e
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lcom/transsion/visha/ai/AIService;->k(Lcom/transsion/visha/ai/AIService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm06;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {v1}, Lcom/transsion/visha/ai/AIService;->e(Lcom/transsion/visha/ai/AIService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object v4, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/transsion/visha/ai/AIService$2$b;

    invoke-direct {v10, p0, p2}, Lcom/transsion/visha/ai/AIService$2$b;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v5, 0x0

    const/16 v9, 0x31

    invoke-static/range {v4 .. v10}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {v1}, Lcom/transsion/visha/ai/AIService;->d(Lcom/transsion/visha/ai/AIService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object v4, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/transsion/visha/ai/AIService$2$c;

    invoke-direct {v10, p0, p2}, Lcom/transsion/visha/ai/AIService$2$c;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v5, 0x0

    const/16 v9, 0x32

    invoke-static/range {v4 .. v10}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_10
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {v1}, Lcom/transsion/visha/ai/AIService;->h(Lcom/transsion/visha/ai/AIService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object v4, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/transsion/visha/ai/AIService$2$d;

    invoke-direct {v10, p0, p2}, Lcom/transsion/visha/ai/AIService$2$d;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v5, 0x0

    const/16 v9, 0x33

    invoke-static/range {v4 .. v10}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_11
    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {p1}, Lcom/transsion/visha/ai/AIService;->g(Lcom/transsion/visha/ai/AIService;)Lx38;

    move-result-object p1

    invoke-static {}, Loa1;->e()I

    move-result v1

    invoke-interface {p1, v1}, Lx38;->getPlayListListForService(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v5, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v4, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/transsion/visha/ai/AIService$2$e;

    invoke-direct {v10, p0, p2, v5}, Lcom/transsion/visha/ai/AIService$2$e;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;Lcom/transsion/dbdata/database/PlayList;)V

    const/16 v9, 0x34

    invoke-static/range {v4 .. v10}, Lcom/transsion/visha/ai/AIService;->m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_13
    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {p1, p2, v3}, Lcom/transsion/visha/ai/AIService;->l(Lcom/transsion/visha/ai/AIService;Lcom/transsion/visha/ai/IAudioPlayCallback;I)V

    goto :goto_3

    :cond_14
    :goto_1
    invoke-static {v2}, Lm06;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p1

    if-ne p1, v1, :cond_15

    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->O()Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/visha/ai/AIService;->p(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_15
    new-instance p1, Lcom/transsion/visha/ai/AIService$2$1;

    invoke-direct {p1, p0, p2}, Lcom/transsion/visha/ai/AIService$2$1;-><init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    invoke-static {p1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    const/16 v0, 0x3eb

    invoke-static {p0, p2, v0}, Lcom/transsion/visha/ai/AIService;->l(Lcom/transsion/visha/ai/AIService;Lcom/transsion/visha/ai/IAudioPlayCallback;I)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public startVideoMainActivity()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {p0}, Lcom/transsion/visha/ai/AIService;->q(Lcom/transsion/visha/ai/AIService;)V

    return-void
.end method
