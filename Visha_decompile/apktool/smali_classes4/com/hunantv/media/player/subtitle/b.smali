.class public Lcom/hunantv/media/player/subtitle/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/subtitle/b$b;,
        Lcom/hunantv/media/player/subtitle/b$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z = true


# instance fields
.field private b:Lcom/hunantv/media/player/b/a;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/hunantv/media/player/subtitle/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/hunantv/media/player/subtitle/d;

.field private f:Z

.field private g:Landroid/view/accessibility/CaptioningManager;

.field private h:Landroid/os/Handler;

.field private final i:Landroid/os/Handler$Callback;

.field private j:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private k:Z

.field private l:Z

.field private m:Lcom/hunantv/media/player/subtitle/b$a;

.field private n:Lcom/hunantv/media/player/subtitle/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hunantv/media/player/b/a;Lcom/hunantv/media/player/subtitle/b$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hunantv/media/player/subtitle/b$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/subtitle/b$1;-><init>(Lcom/hunantv/media/player/subtitle/b;)V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->i:Landroid/os/Handler$Callback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->k:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->l:Z

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/b;->b:Lcom/hunantv/media/player/b/a;

    iput-object p3, p0, Lcom/hunantv/media/player/subtitle/b;->n:Lcom/hunantv/media/player/subtitle/b$b;

    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/b;->c:Ljava/util/Vector;

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->f:Z

    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/b;->d:Ljava/util/Vector;

    invoke-static {}, Lcom/hunantv/media/player/subtitle/a;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "captioning"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/b;->g:Landroid/view/accessibility/CaptioningManager;

    new-instance p1, Lcom/hunantv/media/player/subtitle/b$2;

    invoke-direct {p1, p0}, Lcom/hunantv/media/player/subtitle/b$2;-><init>(Lcom/hunantv/media/player/subtitle/b;)V

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/b;->j:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    .line 3
    sget-boolean v0, Lcom/hunantv/media/player/subtitle/b;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Should have a looper already"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/b;->h:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/b;->h:Landroid/os/Handler;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/b;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/b;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/b;Lcom/hunantv/media/player/subtitle/d;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/subtitle/b;->b(Lcom/hunantv/media/player/subtitle/d;)V

    return-void
.end method

.method public static synthetic b(Lcom/hunantv/media/player/subtitle/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/b;->i()V

    return-void
.end method

.method private b(Lcom/hunantv/media/player/subtitle/d;)V
    .locals 2

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->k:Z

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->e:Lcom/hunantv/media/player/subtitle/d;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/player/subtitle/d;->g()V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->e:Lcom/hunantv/media/player/subtitle/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/subtitle/d;->a(Lcom/hunantv/media/player/b/a;)V

    :cond_1
    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/b;->e:Lcom/hunantv/media/player/subtitle/d;

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->m:Lcom/hunantv/media/player/subtitle/b$a;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/b;->f()Lcom/hunantv/media/player/subtitle/d$c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/subtitle/b$a;->setSubtitleWidget(Lcom/hunantv/media/player/subtitle/d$c;)V

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->e:Lcom/hunantv/media/player/subtitle/d;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/b;->b:Lcom/hunantv/media/player/b/a;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/subtitle/d;->a(Lcom/hunantv/media/player/b/a;)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->e:Lcom/hunantv/media/player/subtitle/d;

    invoke-virtual {v0}, Lcom/hunantv/media/player/subtitle/d;->f()V

    :cond_3
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/b;->n:Lcom/hunantv/media/player/subtitle/b$b;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/subtitle/b$b;->onSubtitleTrackSelected(Lcom/hunantv/media/player/subtitle/d;)V

    :cond_4
    return-void
.end method

.method public static synthetic c(Lcom/hunantv/media/player/subtitle/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/b;->g()V

    return-void
.end method

.method private f()Lcom/hunantv/media/player/subtitle/d$c;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/b;->e:Lcom/hunantv/media/player/subtitle/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d;->c()Lcom/hunantv/media/player/subtitle/d$c;

    move-result-object p0

    return-object p0
.end method

.method private g()V
    .locals 3

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->l:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->g:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a;->b(Landroid/view/accessibility/CaptioningManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->e:Lcom/hunantv/media/player/subtitle/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/subtitle/d;->b()Lcom/hunantv/media/player/subtitle/MediaFormat;

    move-result-object v0

    const-string v2, "is-forced-subtitle"

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/media/player/subtitle/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->e:Lcom/hunantv/media/player/subtitle/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hunantv/media/player/subtitle/d;->h()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/b;->e()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/b;->d()V

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/hunantv/media/player/subtitle/b;->l:Z

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/b;->a()Lcom/hunantv/media/player/subtitle/d;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/subtitle/b;->a(Lcom/hunantv/media/player/subtitle/d;)Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/subtitle/b;->k:Z

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->l:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/b;->d()V

    iput-boolean v1, p0, Lcom/hunantv/media/player/subtitle/b;->l:Z

    :cond_5
    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->f:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->l:Z

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/b;->e:Lcom/hunantv/media/player/subtitle/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d;->f()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->l:Z

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->e:Lcom/hunantv/media/player/subtitle/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/subtitle/d;->g()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->f:Z

    return-void
.end method

.method private j()V
    .locals 2

    sget-boolean v0, Lcom/hunantv/media/player/subtitle/b;->a:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/b;->h:Landroid/os/Handler;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Should have a looper already"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/b;->h:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Must be called from the anchor\'s looper"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/hunantv/media/player/subtitle/d;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->g:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a;->a(Landroid/view/accessibility/CaptioningManager;)Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/b;->g:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v2}, Lcom/hunantv/media/player/subtitle/a;->b(Landroid/view/accessibility/CaptioningManager;)Z

    move-result v2

    iget-object v3, p0, Lcom/hunantv/media/player/subtitle/b;->d:Ljava/util/Vector;

    monitor-enter v3

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/b;->d:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v5, -0x1

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/media/player/subtitle/d;

    invoke-virtual {v4}, Lcom/hunantv/media/player/subtitle/d;->b()Lcom/hunantv/media/player/subtitle/MediaFormat;

    move-result-object v6

    const-string v7, "language"

    invoke-virtual {v6, v7}, Lcom/hunantv/media/player/subtitle/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "is-forced-subtitle"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/hunantv/media/player/subtitle/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v8

    const/4 v10, 0x1

    if-eqz v8, :cond_2

    move v8, v10

    goto :goto_2

    :cond_2
    move v8, v9

    :goto_2
    const-string v11, "is-autoselect"

    invoke-virtual {v6, v11, v10}, Lcom/hunantv/media/player/subtitle/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_3

    move v11, v10

    goto :goto_3

    :cond_3
    move v11, v9

    :goto_3
    const-string v12, "is-default"

    invoke-virtual {v6, v12, v9}, Lcom/hunantv/media/player/subtitle/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v6, v10

    goto :goto_4

    :cond_4
    move v6, v9

    :goto_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    move v10, v9

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_9

    :cond_6
    :goto_5
    if-eqz v8, :cond_7

    move v7, v9

    goto :goto_6

    :cond_7
    const/16 v7, 0x8

    :goto_6
    if-nez v0, :cond_8

    if-eqz v6, :cond_8

    const/4 v12, 0x4

    goto :goto_7

    :cond_8
    move v12, v9

    :goto_7
    add-int/2addr v7, v12

    if-eqz v11, :cond_9

    goto :goto_8

    :cond_9
    const/4 v9, 0x2

    :goto_8
    add-int/2addr v7, v9

    add-int/2addr v7, v10

    if-nez v2, :cond_a

    if-nez v8, :cond_a

    goto :goto_1

    :cond_a
    if-nez v0, :cond_b

    if-nez v6, :cond_c

    :cond_b
    if-eqz v10, :cond_1

    if-nez v11, :cond_c

    if-nez v8, :cond_c

    if-eqz v0, :cond_1

    :cond_c
    if-le v7, v5, :cond_1

    move v5, v7

    goto/16 :goto_1

    :cond_d
    monitor-exit v3

    return-object v4

    :goto_9
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/hunantv/media/player/subtitle/d$c;Lcom/hunantv/media/player/subtitle/MediaFormat;)Lcom/hunantv/media/player/subtitle/d;
    .locals 2

    .line 2
    if-eqz p2, :cond_1

    const-string v0, "application/x-subrip"

    const-string v1, "mime"

    invoke-virtual {p2, v1}, Lcom/hunantv/media/player/subtitle/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hunantv/media/player/subtitle/a/a;

    invoke-direct {v0, p1, p2}, Lcom/hunantv/media/player/subtitle/a/a;-><init>(Lcom/hunantv/media/player/subtitle/d$c;Lcom/hunantv/media/player/subtitle/MediaFormat;)V

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/b;->d:Ljava/util/Vector;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/hunantv/media/player/subtitle/b;->d:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/hunantv/media/player/subtitle/b;->g:Landroid/view/accessibility/CaptioningManager;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/subtitle/a;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/hunantv/media/player/subtitle/b;->g:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/b;->j:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/b;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-object v0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/hunantv/media/player/subtitle/b$a;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->m:Lcom/hunantv/media/player/subtitle/b$a;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/b;->j()V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->m:Lcom/hunantv/media/player/subtitle/b$a;

    invoke-interface {v0, v1}, Lcom/hunantv/media/player/subtitle/b$a;->setSubtitleWidget(Lcom/hunantv/media/player/subtitle/d$c;)V

    :cond_1
    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/b;->m:Lcom/hunantv/media/player/subtitle/b$a;

    iput-object v1, p0, Lcom/hunantv/media/player/subtitle/b;->h:Landroid/os/Handler;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->m:Lcom/hunantv/media/player/subtitle/b$a;

    invoke-interface {v0}, Lcom/hunantv/media/player/subtitle/b$a;->getSubtitleLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/b;->i:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/b;->h:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/b;->j()V

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/b;->m:Lcom/hunantv/media/player/subtitle/b$a;

    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/b;->f()Lcom/hunantv/media/player/subtitle/d$c;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/hunantv/media/player/subtitle/b$a;->setSubtitleWidget(Lcom/hunantv/media/player/subtitle/d$c;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/hunantv/media/player/subtitle/d;)Z
    .locals 2

    .line 7
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/subtitle/b;->a(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/subtitle/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/b;->j()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/b;->e()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/subtitle/b;->a(Lcom/hunantv/media/player/subtitle/d;)Z

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->k:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/b;->l:Z

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->g:Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/subtitle/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->g:Landroid/view/accessibility/CaptioningManager;

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/b;->j:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/subtitle/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/subtitle/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->g:Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/subtitle/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/b;->g:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/b;->j:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
