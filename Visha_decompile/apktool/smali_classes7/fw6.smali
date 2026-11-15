.class public final Lfw6;
.super Lvec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfw6$a;
    }
.end annotation


# static fields
.field public static final b:Lfw6$a;

.field public static final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfw6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfw6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfw6;->b:Lfw6$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfw6;->c:Ljava/util/List;

    const-class v1, Lzz4;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lv06;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Laq5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    return-void
.end method

.method public static synthetic h(Landroid/content/Context;)Lzfb;
    .locals 0

    invoke-static {p0}, Lfw6;->j(Landroid/content/Context;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Landroid/content/Context;)Lzfb;
    .locals 3

    sget-object v0, Lao;->d:Lao$a;

    invoke-virtual {v0}, Lao$a;->a()Lao;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ldu4$a;->a(Ldu4;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-boolean v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Ly71;->t()V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v2}, Ls06;->b(I)V

    sget-object v0, Lrf;->h:Lrf$a;

    invoke-virtual {v0}, Lrf$a;->a()Lrf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lrf;->d(Landroid/content/Context;)Ljava/util/List;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lfw6;->i(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    sget-object p0, Lfw6;->c:Ljava/util/List;

    return-object p0
.end method

.method public i(Landroid/content/Context;)Ljava/lang/Void;
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    sput-object p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->c:Landroid/content/Context;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p0}, Lbx9;->H(JILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    sget-object v0, Lbx9;->a:Lbx9;

    new-instance v1, Lew6;

    invoke-direct {v1, p1}, Lew6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lbx9;->A(Lc74;)V

    :cond_1
    return-object p0
.end method
