.class public Lpw2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpw2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/transsion/hubsdk/api/media/TranAudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/transsion/hubsdk/api/media/TranAudioManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/media/TranAudioManager;-><init>()V

    iput-object p1, p0, Lpw2$a;->a:Lcom/transsion/hubsdk/api/media/TranAudioManager;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lpw2$a;->a:Lcom/transsion/hubsdk/api/media/TranAudioManager;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getDsOn()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "EqVideoSetting"

    const-string v1, "getDsOn failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public b(I)V
    .locals 0

    iget-object p0, p0, Lpw2$a;->a:Lcom/transsion/hubsdk/api/media/TranAudioManager;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->setDialogEnhancerAmount(I)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    iget-object p0, p0, Lpw2$a;->a:Lcom/transsion/hubsdk/api/media/TranAudioManager;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->setDialogEnhancerEnabled(Z)V

    return-void
.end method
