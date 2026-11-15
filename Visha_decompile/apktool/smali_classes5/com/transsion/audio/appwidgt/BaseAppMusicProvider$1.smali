.class Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->A(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1;->this$0:Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;

    iput-object p2, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lao;->x(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->restore(Ljava/util/List;)V

    new-instance v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1$1;

    invoke-direct {v0, p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1$1;-><init>(Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
