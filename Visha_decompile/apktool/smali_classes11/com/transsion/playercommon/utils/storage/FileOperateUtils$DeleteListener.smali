.class public Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/utils/storage/FileOperateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteListener"
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->x(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->u(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->t(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->w(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->u(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->v(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->B(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->A()V

    return-void
.end method

.method public static synthetic t(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic u(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic v(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic w(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->d()V

    :cond_0
    return-void
.end method

.method public final B(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->C()Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->t(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "single delete result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mediaItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteListener"

    invoke-static {v1, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->k()V

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final C()Z
    .locals 8

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v5}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->r(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Ltpb;->j(ZLcom/transsion/dbdata/beans/media/MediaItem;)Z

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v3, v5}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->t(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "batch delete result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mediaItem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/media/MediaItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DeleteListener"

    invoke-static {v6, v5}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->G(II)V

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final D()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "audiolist"

    goto :goto_0

    :cond_0
    const-string v0, "videolist"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    const-string v1, "cancel"

    invoke-static {v1, v0, p0}, Lqz5;->b(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final E()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "audiolist"

    goto :goto_0

    :cond_0
    const-string v0, "videolist"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    const-string v1, "delete"

    invoke-static {v1, v0, p0}, Lqz5;->b(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final F()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->E()V

    :cond_0
    return-void
.end method

.method public final G(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    move-result-object p0

    int-to-double v0, p1

    int-to-double p1, p2

    div-double/2addr v0, p1

    invoke-interface {p0, v0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->a(D)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener$1;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener$1;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->s(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete other file result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteListener"

    invoke-static {v1, v0}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->A()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v1, Ler3;

    invoke-direct {v1}, Ler3;-><init>()V

    invoke-virtual {v0, p0, v1}, Lao;->t(Ljava/util/List;Le74;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v1, Lfr3;

    invoke-direct {v1}, Lfr3;-><init>()V

    invoke-virtual {v0, p0, v1}, Ltpb;->P(Ljava/util/List;Le74;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    new-instance v1, Lgr3;

    invoke-direct {v1}, Lgr3;-><init>()V

    invoke-virtual {v0, p0, v1}, Lao;->s(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    new-instance v1, Lhr3;

    invoke-direct {v1}, Lhr3;-><init>()V

    invoke-virtual {v0, p0, v1}, Ltpb;->F(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)V

    :goto_0
    return-void
.end method

.method public final l(Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lbr3;

    invoke-direct {v0, p0}, Lbr3;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance v1, Lcr3;

    invoke-direct {v1, v0}, Lcr3;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    new-instance v0, Ldr3;

    invoke-direct {v0, p0}, Ldr3;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;)V

    invoke-virtual {p1, v1, v0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->D()V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->q()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->o()V

    :goto_0
    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->z()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->F()V

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->l(Lcom/transsion/playercommon/activities/BaseActivity;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->n()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Ltr4;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->i()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->j()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    const/16 v0, 0x4d7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c0(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->A()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->p()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->E()V

    :goto_0
    return-void
.end method

.method public final r(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string p1, "http"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final s()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->OTHERS:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->SUBTITLE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Ltr4;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic x(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "DeleteListener"

    const-string v1, "delete operation failed"

    invoke-static {v0, v1, p1}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->u(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V

    return-void
.end method

.method public final y()Z
    .locals 1

    sget-boolean p0, Lpp3;->j:Z

    if-nez p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->f()V

    :cond_0
    return-void
.end method
