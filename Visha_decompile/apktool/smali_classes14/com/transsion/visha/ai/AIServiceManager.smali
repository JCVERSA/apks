.class public Lcom/transsion/visha/ai/AIServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile f:Lcom/transsion/visha/ai/AIServiceManager;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lx38;

.field public e:Lcom/transsion/dbdata/database/AudioRoomDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/trassion/vishbtrace/R$string;->recently_played:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/visha/ai/AIServiceManager;->a:Ljava/lang/String;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/trassion/vishbtrace/R$string;->favorites:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/visha/ai/AIServiceManager;->b:Ljava/lang/String;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/trassion/vishbtrace/R$string;->recent_add:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/visha/ai/AIServiceManager;->c:Ljava/lang/String;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/visha/ai/AIServiceManager;->e:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->d()Lx38;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/visha/ai/AIServiceManager;->d:Lx38;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Ljava/util/ArrayList;Lcom/transsion/dbdata/database/PlayListMedia;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/visha/ai/AIServiceManager;->t(Ljava/util/List;Ljava/util/ArrayList;Lcom/transsion/dbdata/database/PlayListMedia;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/visha/ai/AIServiceManager;->u(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/visha/ai/AIServiceManager;->s(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;Ljava/util/List;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/visha/ai/AIServiceManager;->q(Lcom/transsion/visha/ai/IAudioPlayCallback;Ljava/util/List;I)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;Ljava/util/List;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/visha/ai/AIServiceManager;->r(Lcom/transsion/visha/ai/IAudioPlayCallback;Ljava/util/List;II)V

    return-void
.end method

.method public static n()Lcom/transsion/visha/ai/AIServiceManager;
    .locals 2

    sget-object v0, Lcom/transsion/visha/ai/AIServiceManager;->f:Lcom/transsion/visha/ai/AIServiceManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/visha/ai/AIServiceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/visha/ai/AIServiceManager;->f:Lcom/transsion/visha/ai/AIServiceManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/visha/ai/AIServiceManager;

    invoke-direct {v1}, Lcom/transsion/visha/ai/AIServiceManager;-><init>()V

    sput-object v1, Lcom/transsion/visha/ai/AIServiceManager;->f:Lcom/transsion/visha/ai/AIServiceManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/visha/ai/AIServiceManager;->f:Lcom/transsion/visha/ai/AIServiceManager;

    return-object v0
.end method

.method public static synthetic s(Lcom/transsion/dbdata/database/PlayListMedia;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
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

.method public static synthetic t(Ljava/util/List;Ljava/util/ArrayList;Lcom/transsion/dbdata/database/PlayListMedia;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lt;

    invoke-direct {v1, p2}, Lt;-><init>(Lcom/transsion/dbdata/database/PlayListMedia;)V

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


# virtual methods
.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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

.method public g(Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p0, Lcom/transsion/visha/ai/StateValue;

    const-string v0, "\u6ca1\u6709\u627e\u5230\u5bf9\u5e94\u7684\u97f3\u9891\u8d44\u6e90"

    const/16 v1, 0x3e9

    invoke-direct {p0, v1, v0}, Lcom/transsion/visha/ai/StateValue;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/transsion/visha/ai/IAudioPlayCallback;->onSearched(Lcom/transsion/visha/ai/StateValue;Lcom/transsion/visha/ai/AudioData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public h(Lcom/transsion/visha/ai/IAudioPlayCallback;I)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p0, Lcom/transsion/visha/ai/StateValue;

    const-string v0, "\u6ca1\u6709\u627e\u5230\u5bf9\u5e94\u7684\u97f3\u9891\u8d44\u6e90"

    invoke-direct {p0, p2, v0}, Lcom/transsion/visha/ai/StateValue;-><init>(ILjava/lang/String;)V

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/transsion/visha/ai/IAudioPlayCallback;->onSearched(Lcom/transsion/visha/ai/StateValue;Lcom/transsion/visha/ai/AudioData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public i(Lcom/transsion/visha/ai/IAudioPlayCallback;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p0, Lcom/transsion/visha/ai/StateValue;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/visha/ai/StateValue;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/transsion/visha/ai/AudioData;

    invoke-direct {v0, p2}, Lcom/transsion/visha/ai/AudioData;-><init>(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    invoke-interface {p1, p0, v0}, Lcom/transsion/visha/ai/IAudioPlayCallback;->onSearched(Lcom/transsion/visha/ai/StateValue;Lcom/transsion/visha/ai/AudioData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public j(Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p0, Lcom/transsion/visha/ai/StateValue;

    const-string v0, "\u5f00\u59cb\u8df3\u8f6c\u81f3\u97f3\u9891\u64ad\u653e\u9875\u9762"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/visha/ai/StateValue;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/transsion/visha/ai/IAudioPlayCallback;->onSuccess(Lcom/transsion/visha/ai/StateValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public k(Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p0, Lcom/transsion/visha/ai/StateValue;

    const-string v0, "\u4f20\u5165\u7684\u53c2\u6570\u9519\u8bef"

    const/16 v1, 0x3ea

    invoke-direct {p0, v1, v0}, Lcom/transsion/visha/ai/StateValue;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/transsion/visha/ai/IAudioPlayCallback;->onSearched(Lcom/transsion/visha/ai/StateValue;Lcom/transsion/visha/ai/AudioData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public l(Lcom/transsion/visha/ai/AudioData;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AudioData;->getData()Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/visha/ai/AIServiceManager;->k(Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/visha/ai/AudioData;->getData()Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/visha/ai/AIServiceManager;->w(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    return-void
.end method

.method public final m(Ljava/util/List;Lcom/transsion/visha/ai/AIService$c;)V
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

    new-instance v1, Ls;

    invoke-direct {v1, p1, p0}, Ls;-><init>(Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/transsion/visha/ai/AIService$c;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AIServiceManager"

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

.method public final o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V
    .locals 9

    new-instance v8, Lr;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lr;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    invoke-static {v8}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V
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
    new-instance p2, Lcom/transsion/visha/ai/AIServiceManager$f;

    invoke-direct {p2, p0, p6, p5}, Lcom/transsion/visha/ai/AIServiceManager$f;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/AIService$c;I)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/visha/ai/AIServiceManager;->m(Ljava/util/List;Lcom/transsion/visha/ai/AIService$c;)V

    goto :goto_3

    :cond_3
    if-eqz p6, :cond_4

    const-string p0, ""

    invoke-interface {p6, p0}, Lcom/transsion/visha/ai/AIService$c;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string p1, "AIServiceManager"

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

.method public final q(Lcom/transsion/visha/ai/IAudioPlayCallback;Ljava/util/List;I)V
    .locals 5

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

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

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    iput p3, v2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {p0, p1, v2}, Lcom/transsion/visha/ai/AIServiceManager;->i(Lcom/transsion/visha/ai/IAudioPlayCallback;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p2}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p2

    iput p3, p2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/visha/ai/AIServiceManager;->i(Lcom/transsion/visha/ai/IAudioPlayCallback;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/visha/ai/AIServiceManager;->g(Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    return-void
.end method

.method public final r(Lcom/transsion/visha/ai/IAudioPlayCallback;Ljava/util/List;II)V
    .locals 5

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

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

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    iput p3, v2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    int-to-long p2, p4

    iput-wide p2, v2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    invoke-virtual {p0, p1, v2}, Lcom/transsion/visha/ai/AIServiceManager;->i(Lcom/transsion/visha/ai/IAudioPlayCallback;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_2
    const/4 p4, 0x0

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p2}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p2

    iput p3, p2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/visha/ai/AIServiceManager;->i(Lcom/transsion/visha/ai/IAudioPlayCallback;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/visha/ai/AIServiceManager;->g(Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    return-void
.end method

.method public final synthetic u(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/visha/ai/AIServiceManager;->p(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void
.end method

.method public v(Ljava/lang/String;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 11

    :try_start_0
    invoke-static {}, Lm06;->b()V

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

    if-nez p1, :cond_2

    invoke-static {v2}, Lm06;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/visha/ai/AIServiceManager;->g(Lcom/transsion/visha/ai/IAudioPlayCallback;)V

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

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/transsion/visha/ai/AIServiceManager;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm06;->a(Ljava/lang/String;)V

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

    new-instance v7, Lcom/transsion/visha/ai/AIServiceManager$g;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$g;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x2a

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

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

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/transsion/visha/ai/AIServiceManager;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm06;->a(Ljava/lang/String;)V

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

    new-instance v7, Lcom/transsion/visha/ai/AIServiceManager$h;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$h;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x2b

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

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

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/transsion/visha/ai/AIServiceManager;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm06;->a(Ljava/lang/String;)V

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

    new-instance v7, Lcom/transsion/visha/ai/AIServiceManager$i;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$i;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x2c

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

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

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/transsion/visha/ai/AIServiceManager;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm06;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/visha/ai/AIServiceManager;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

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

    new-instance v7, Lcom/transsion/visha/ai/AIServiceManager$j;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$j;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x2d

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/visha/ai/AIServiceManager;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

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

    new-instance v7, Lcom/transsion/visha/ai/AIServiceManager$k;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$k;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x2e

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/visha/ai/AIServiceManager;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

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

    new-instance v7, Lcom/transsion/visha/ai/AIServiceManager$l;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$l;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x2f

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/transsion/visha/ai/AIServiceManager;->d:Lx38;

    invoke-static {}, Loa1;->e()I

    move-result v3

    invoke-interface {p1, v3}, Lx38;->getPlayListListForService(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

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

    new-instance v10, Lcom/transsion/visha/ai/AIServiceManager$m;

    invoke-direct {v10, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$m;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/16 v9, 0x30

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_a
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/transsion/visha/ai/AIServiceManager;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    iput-boolean v3, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    const/16 v0, 0x1a

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/visha/ai/AIServiceManager;->i(Lcom/transsion/visha/ai/IAudioPlayCallback;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_b
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

    new-instance v7, Lcom/transsion/visha/ai/AIServiceManager$n;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$n;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x1a

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

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

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/transsion/visha/ai/AIServiceManager;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    iput-boolean v3, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    const/16 v0, 0x19

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/visha/ai/AIServiceManager;->i(Lcom/transsion/visha/ai/IAudioPlayCallback;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_d
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

    new-instance v7, Lcom/transsion/visha/ai/AIServiceManager$a;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$a;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x19

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

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

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/transsion/visha/ai/AIServiceManager;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm06;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/visha/ai/AIServiceManager;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

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

    new-instance v7, Lcom/transsion/visha/ai/AIServiceManager$b;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$b;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x31

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/visha/ai/AIServiceManager;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

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

    new-instance v7, Lcom/transsion/visha/ai/AIServiceManager$c;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$c;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x32

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_10
    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/visha/ai/AIServiceManager;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

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

    new-instance v7, Lcom/transsion/visha/ai/AIServiceManager$d;

    invoke-direct {v7, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$d;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    const/4 v2, 0x0

    const/16 v6, 0x33

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_11
    iget-object p1, p0, Lcom/transsion/visha/ai/AIServiceManager;->d:Lx38;

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

    move-object v3, v1

    check-cast v3, Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/visha/ai/AIParamsModel;->getSource()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getSingerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/transsion/visha/ai/AIModel;->getParam()Lcom/transsion/visha/ai/AIParamsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/visha/ai/AIParamsModel;->getMusicName()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/transsion/visha/ai/AIServiceManager$e;

    invoke-direct {v8, p0, p2, v3}, Lcom/transsion/visha/ai/AIServiceManager$e;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;Lcom/transsion/dbdata/database/PlayList;)V

    const/16 v7, 0x34

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/visha/ai/AIServiceManager;->o(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void

    :cond_13
    const/16 p1, 0x3ea

    invoke-virtual {p0, p2, p1}, Lcom/transsion/visha/ai/AIServiceManager;->h(Lcom/transsion/visha/ai/IAudioPlayCallback;I)V

    goto :goto_3

    :cond_14
    :goto_1
    invoke-static {v2}, Lm06;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p1

    if-ne p1, v1, :cond_15

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->O()Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/visha/ai/AIServiceManager;->i(Lcom/transsion/visha/ai/IAudioPlayCallback;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void

    :cond_15
    new-instance p1, Lcom/transsion/visha/ai/AIServiceManager$1;

    invoke-direct {p1, p0, p2}, Lcom/transsion/visha/ai/AIServiceManager$1;-><init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    invoke-static {p1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    const/16 v0, 0x3eb

    invoke-virtual {p0, p2, v0}, Lcom/transsion/visha/ai/AIServiceManager;->h(Lcom/transsion/visha/ai/IAudioPlayCallback;I)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public final w(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 1

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
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/transsion/visha/ai/AIServiceManager;->j(Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/activities/AudioPlayerActivity;->E1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;Z)V

    return-void
.end method
