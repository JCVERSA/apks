.class public Lcom/transsion/visha/ai/AIService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/visha/ai/AIService$c;
    }
.end annotation


# instance fields
.field public b:Lx38;

.field public c:Lcom/transsion/dbdata/database/AudioRoomDatabase;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/transsion/visha/ai/IAudioPlayCallback;

.field public h:Lcom/transsion/visha/ai/IAudioPlayStateCallback;

.field public i:Lcom/transsion/audio/player/MusicPlayManager$d;

.field public j:Lcom/transsion/visha/ai/IAIServiceInterface$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/transsion/visha/ai/AIService$a;

    invoke-direct {v0, p0}, Lcom/transsion/visha/ai/AIService$a;-><init>(Lcom/transsion/visha/ai/AIService;)V

    iput-object v0, p0, Lcom/transsion/visha/ai/AIService;->i:Lcom/transsion/audio/player/MusicPlayManager$d;

    new-instance v0, Lcom/transsion/visha/ai/AIService$2;

    invoke-direct {v0, p0}, Lcom/transsion/visha/ai/AIService$2;-><init>(Lcom/transsion/visha/ai/AIService;)V

    iput-object v0, p0, Lcom/transsion/visha/ai/AIService;->j:Lcom/transsion/visha/ai/IAIServiceInterface$Stub;

    return-void
.end method

.method public static synthetic A(Ljava/util/List;Ljava/util/ArrayList;Lcom/transsion/dbdata/database/PlayListMedia;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lq;

    invoke-direct {v1, p2}, Lq;-><init>(Lcom/transsion/dbdata/database/PlayListMedia;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-interface {p0, p2}, Ld68;->deletePlayListMedia(Lcom/transsion/dbdata/database/PlayListMedia;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/visha/ai/AIService;->B(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/visha/ai/AIService;->z(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/util/List;Ljava/util/ArrayList;Lcom/transsion/dbdata/database/PlayListMedia;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/visha/ai/AIService;->A(Ljava/util/List;Ljava/util/ArrayList;Lcom/transsion/dbdata/database/PlayListMedia;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/visha/ai/AIService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/visha/ai/AIService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/visha/ai/AIService;)Lcom/transsion/visha/ai/IAudioPlayStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService;->h:Lcom/transsion/visha/ai/IAudioPlayStateCallback;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/visha/ai/AIService;)Lx38;
    .locals 0

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService;->b:Lx38;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/visha/ai/AIService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/visha/ai/AIService;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/visha/ai/AIService;->g:Lcom/transsion/visha/ai/IAudioPlayCallback;

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/visha/ai/AIService;Lcom/transsion/visha/ai/IAudioPlayStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/visha/ai/AIService;->h:Lcom/transsion/visha/ai/IAudioPlayStateCallback;

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/visha/ai/AIService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/visha/ai/AIService;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/visha/ai/AIService;Lcom/transsion/visha/ai/IAudioPlayCallback;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/visha/ai/AIService;->s(Lcom/transsion/visha/ai/IAudioPlayCallback;I)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/visha/ai/AIService;->v(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/visha/ai/AIService;Ljava/util/List;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/visha/ai/AIService;->x(Ljava/util/List;I)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/visha/ai/AIService;Ljava/util/List;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/visha/ai/AIService;->y(Ljava/util/List;II)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/visha/ai/AIService;->C(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/transsion/visha/ai/AIService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/visha/ai/AIService;->D()V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final synthetic B(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/visha/ai/AIService;->w(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void
.end method

.method public final C(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljf;->g()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    if-eqz v0, :cond_1

    invoke-static {}, Ljf;->g()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->finish()V

    :cond_1
    const/4 v0, 0x0

    const-string v1, "\u5f00\u59cb\u8df3\u8f6c\u81f3\u97f3\u9891\u64ad\u653e\u9875\u9762"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/visha/ai/AIService;->t(ILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->E1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;Z)V

    return-void
.end method

.method public final D()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.magicmovie.video_player_main_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/trassion/vishbtrace/R$string;->no_song:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(IILjava/lang/String;)V

    const-string v1, "from_router"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "router_data"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService;->j:Lcom/transsion/visha/ai/IAIServiceInterface$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/visha/ai/AIService;->c:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->d()Lx38;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/visha/ai/AIService;->b:Lx38;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/trassion/vishbtrace/R$string;->recently_played:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/visha/ai/AIService;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/trassion/vishbtrace/R$string;->favorites:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/visha/ai/AIService;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/trassion/vishbtrace/R$string;->recent_add:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/visha/ai/AIService;->f:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService;->i:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService;->i:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final s(Lcom/transsion/visha/ai/IAudioPlayCallback;I)V
    .locals 1

    :try_start_0
    const-string p0, "fail"

    invoke-static {p0}, Lm06;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p0, Lcom/transsion/visha/ai/StateValue;

    const-string v0, ""

    invoke-direct {p0, p2, v0}, Lcom/transsion/visha/ai/StateValue;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/transsion/visha/ai/IAudioPlayCallback;->onError(Lcom/transsion/visha/ai/StateValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final t(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "success"

    invoke-static {v0}, Lm06;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/visha/ai/StateValue;

    invoke-direct {v0}, Lcom/transsion/visha/ai/StateValue;-><init>()V

    iput p1, v0, Lcom/transsion/visha/ai/StateValue;->state:I

    iput-object p2, v0, Lcom/transsion/visha/ai/StateValue;->stateStr:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService;->g:Lcom/transsion/visha/ai/IAudioPlayCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/transsion/visha/ai/IAudioPlayCallback;->onSuccess(Lcom/transsion/visha/ai/StateValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final u(Ljava/util/List;Lcom/transsion/visha/ai/AIService$c;)V
    .locals 2

    :try_start_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v0

    invoke-static {}, Loa1;->e()I

    move-result v1

    invoke-interface {v0, v1}, Ld68;->getAllAudioViewRecord(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lp;

    invoke-direct {v1, p1, p0}, Lp;-><init>(Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/transsion/visha/ai/AIService$c;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AIService"

    const-string v0, "\u8fc7\u6ee4\u64ad\u653e\u5386\u53f2\u5f02\u5e38"

    invoke-static {p1, v0, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8fc7\u6ee4\u64ad\u653e\u5386\u53f2\u5f02\u5e38: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/transsion/visha/ai/AIService$c;->onError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final v(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V
    .locals 9

    new-instance v8, Lo;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lo;-><init>(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    invoke-static {v8}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/transsion/dbdata/database/PlayList;->id:I

    int-to-long v1, p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lao;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const/16 p2, 0x31

    if-eq p5, p2, :cond_2

    const/16 p2, 0x2d

    if-ne p5, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iput p5, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    if-eqz p6, :cond_4

    invoke-interface {p6, p0}, Lcom/transsion/visha/ai/AIService$c;->a(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    invoke-interface {p6, p1}, Lcom/transsion/visha/ai/AIService$c;->b(Ljava/util/List;)V

    goto :goto_3

    :cond_2
    :goto_1
    new-instance p2, Lcom/transsion/visha/ai/AIService$b;

    invoke-direct {p2, p0, p6, p5}, Lcom/transsion/visha/ai/AIService$b;-><init>(Lcom/transsion/visha/ai/AIService;Lcom/transsion/visha/ai/AIService$c;I)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/visha/ai/AIService;->u(Ljava/util/List;Lcom/transsion/visha/ai/AIService$c;)V

    goto :goto_3

    :cond_3
    if-eqz p6, :cond_4

    const-string p0, ""

    invoke-interface {p6, p0}, Lcom/transsion/visha/ai/AIService$c;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string p1, "AIService"

    const-string p2, "\u67e5\u8be2\u97f3\u9891\u6570\u636e\u5f02\u5e38"

    invoke-static {p1, p2, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p6, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u67e5\u8be2\u97f3\u9891\u6570\u636e\u5f02\u5e38: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p6, p0}, Lcom/transsion/visha/ai/AIService$c;->onError(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final x(Ljava/util/List;I)V
    .locals 5

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v2

    if-eqz v2, :cond_1

    iput p2, v2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {p0, v2}, Lcom/transsion/visha/ai/AIService;->C(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p1

    iput p2, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {p0, p1}, Lcom/transsion/visha/ai/AIService;->C(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/visha/ai/AIService;->D()V

    return-void
.end method

.method public final y(Ljava/util/List;II)V
    .locals 5

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v2

    if-eqz v2, :cond_1

    iput p2, v2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    int-to-long p1, p3

    iput-wide p1, v2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    invoke-virtual {p0, v2}, Lcom/transsion/visha/ai/AIService;->C(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_2
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/visha/ai/AIService;->C(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/visha/ai/AIService;->D()V

    return-void
.end method
