.class public Ldw6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldw6$a;
    }
.end annotation


# static fields
.field public static final c:Ldw6$a;

.field public static volatile d:Ldw6;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldw6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldw6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldw6;->c:Ldw6$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v22, "lirik"

    .line 4
    const-string v23, "\u0643\u0644\u0645\u0627\u062a"

    const-string v1, "MV"

    const-string v2, "Music%Video"

    const-string v3, "Live"

    const-string v4, "Concert"

    const-string v5, "official%video"

    const-string v6, "Album"

    const-string v7, "video%official"

    const-string v8, "Lyrics"

    const-string v9, "concierto"

    const-string v10, "vid\u00e9o%officielle"

    const-string v11, "\u00e1lbum"

    const-string v12, "v\u00eddeo%oficial"

    const-string v13, "concert"

    const-string v14, "paroles"

    const-string v15, "\u043c\u0443\u0437\u044b\u043a\u0430\u043b\u044c\u043d\u043e\u0435%\u0432\u0438\u0434\u0435\u043e"

    const-string v16, "\u043a\u043e\u043d\u0446\u0435\u0440\u0442"

    const-string v17, "\u043e\u0444\u0438\u0446\u0438\u0430\u043b\u044c\u043d\u043e\u0435%\u0432\u0438\u0434\u0435\u043e"

    const-string v18, "\u0410\u043b\u044c\u0431\u043e\u043c"

    const-string v19, "\u0432\u0438\u0434\u0435\u043e%\u043e\u0444\u0438\u0446\u0438\u0430\u043b\u044c\u043d\u043e\u0435"

    const-string v20, "\u0442\u0435\u043a\u0441\u0442\u044b \u043f\u0435\u0441\u0435\u043d"

    const-string v21, "konser"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ldw6;->a:Ljava/util/List;

    .line 6
    const-string v23, ".*lirik.*"

    .line 7
    const-string v24, ".*\u0643\u0644\u0645\u0627\u062a.*"

    const-string v2, ".*MV.*"

    const-string v3, ".*Music.*Video.*"

    const-string v4, ".*Live.*"

    const-string v5, ".*Concert.*"

    const-string v6, ".*official.*video.*"

    const-string v7, ".*Album.*"

    const-string v8, ".*video.*official.*"

    const-string v9, ".*Lyrics.*"

    const-string v10, ".*concierto.*"

    const-string v11, ".*\u00e1lbum.*"

    const-string v12, ".*concert.*"

    const-string v13, ".*v\u00eddeo.*oficial.*"

    const-string v14, ".*vid\u00e9o.*officielle.*"

    const-string v15, ".*paroles.*"

    const-string v16, ".*\u043c\u0443\u0437\u044b\u043a\u0430\u043b\u044c\u043d\u043e.*\u0432\u0438\u0434\u0435\u043e.*"

    const-string v17, ".*\u043a\u043e\u043d\u0446\u0435\u0440\u0442.*"

    const-string v18, ".*\u043e\u0444\u0438\u0446\u0438\u0430\u043b\u044c\u043d\u043e\u0435.*\u0432\u0438\u0434\u0435\u043e.*"

    const-string v19, ".*\u0410\u043b\u044c\u0431\u043e\u043c.*"

    const-string v20, ".*\u0432\u0438\u0434\u0435\u043e.*\u043e\u0444\u0438\u0446\u0438\u0430\u043b\u044c\u043d\u043e\u0435.*"

    const-string v21, ".*\u0442\u0435\u043a\u0441\u0442\u044b \u043f\u0435\u0441\u0435\u043d.*"

    const-string v22, ".*konser.*"

    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ldw6;->b:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldw6;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ldw6;
    .locals 1

    sget-object v0, Ldw6;->d:Ldw6;

    return-object v0
.end method

.method public static final synthetic b(Ldw6;)V
    .locals 0

    sput-object p0, Ldw6;->d:Ldw6;

    return-void
.end method

.method public static synthetic k(Ldw6;ZLjava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ldw6;->j(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: queryAllMVData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ldw6;->a:Ljava/util/List;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ldw6;->b:Ljava/util/List;

    return-object p0
.end method

.method public e(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string p0, "data"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcr$a;

    invoke-direct {p1}, Lcr$a;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcr$a;->p(Z)Lcr$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcr$a;->w(Ljava/util/List;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string v0, "getApp(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z
    .locals 2

    const-string p0, "data"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p2}, Lcr$a;->m(Z)Lcr$a;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcr$a;->q(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p2

    const-string v0, "getApp(...)"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p2, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v1, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2, p1}, Li81;->d0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {p1}, Lav3;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Ldw6;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lkotlin/text/Regex;

    sget-object v2, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    invoke-direct {v1, v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public h(Landroid/net/Uri;I)V
    .locals 1

    const-string p0, "uri"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcr$a;->r(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcr$a;->l(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcr$a;->D(Landroid/net/Uri;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string p2, "getApp(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, p2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    new-instance v0, Ldw6$b;

    invoke-direct {v0}, Ldw6$b;-><init>()V

    invoke-virtual {p1, p2, p0, v0}, Lcom/transsion/dbdata/engine/DataEngine;->b(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;)V

    return-void
.end method

.method public final i(Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;I)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 0

    const-string p0, "mediaBucket"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->u(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcr$a;->x(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcr$a;->d(J)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcr$a;->k(I)Lcr$a;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcr$a;->c(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string p2, "getApp(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p2, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-static {p0, p1, p2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/AudioResultModel;

    return-object p0
.end method

.method public final j(ZLjava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ldw6;->m(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0, p2}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final l(Z)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 1

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcr$a;->q(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcr$a;->j(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string v0, "getApp(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/AudioResultModel;

    return-object p0
.end method

.method public final m(ZLjava/lang/String;)Ljava/util/List;
    .locals 1

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p2}, Lcr$a;->t(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcr$a;->q(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcr$a;->j(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string p2, "getApp(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, p2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p2, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final n(I)Ljava/util/List;
    .locals 2

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->A(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string v0, "getApp(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v1, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final o(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string p0, "displayName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->h(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string v0, "getApp(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public final p(I)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 5

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->s(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApp(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, v0, v2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v3, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {v0, v3, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-nez p0, :cond_0

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcr$a;->n(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcr$a;->s(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    :cond_0
    return-object p0
.end method

.method public final q(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1

    const-string p0, "mediaIds"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->v(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string v0, "getApp(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final r(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    const-string p0, "mediaIds"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "displayName"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->v(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcr$a;->h(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string p2, "getApp(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, p2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final s(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string p0, "path"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->y(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string v0, "getApp(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public final t(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string p0, "searchText"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->h(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string v0, "getApp(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method
