.class public final Lcom/transsion/videofloat/manager/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcw/b;


# instance fields
.field private b:Lcom/transsion/videofloat/view/VideoFloatView;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/transsion/videofloat/manager/i;->y(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lkotlin/jvm/functions/Function1;Lcom/transsion/videofloat/manager/i;Ldw/a;ZLgw/a;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/videofloat/manager/i;->o(Lkotlin/jvm/functions/Function1;Lcom/transsion/videofloat/manager/i;Ldw/a;ZLgw/a;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(ZLcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgf/f;Ljava/util/List;ZZ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Lcom/transsion/videofloat/manager/i;->x(ZLcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgf/f;Ljava/util/List;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/transsion/videofloat/manager/i;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/videofloat/manager/i;->z(Lcom/transsion/videofloat/manager/i;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/videofloat/manager/i;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lcom/transsion/videofloat/manager/i;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/videofloat/manager/i;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m(Lcom/transsion/videofloat/manager/i;Lcom/transsion/videofloat/view/VideoFloatView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 2
    .line 3
    return-void
.end method

.method private final n(Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/transsion/videofloat/manager/i;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v9, 0x40

    .line 9
    .line 10
    const/4 v10, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    move v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move-object v5, p4

    .line 17
    move-object/from16 v6, p5

    .line 18
    .line 19
    move-object/from16 v7, p6

    .line 20
    .line 21
    invoke-static/range {v1 .. v10}, Lcom/transsion/videofloat/manager/i;->w(Lcom/transsion/videofloat/manager/i;Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static final o(Lkotlin/jvm/functions/Function1;Lcom/transsion/videofloat/manager/i;Ldw/a;ZLgw/a;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p5, :cond_1

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-interface {p0, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p1, p2, p3, p4}, Lcom/transsion/videofloat/manager/i;->u(Ldw/a;ZLgw/a;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    if-eqz p0, :cond_2

    .line 15
    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private final p()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private final q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v1, "subject_id"

    .line 9
    .line 10
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    if-eqz p4, :cond_1

    .line 14
    .line 15
    const-string p1, "ops"

    .line 16
    .line 17
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_1
    if-eqz p2, :cond_2

    .line 21
    .line 22
    const-string p1, "ugc_video_id"

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_2
    const-string p1, "opt_type"

    .line 28
    .line 29
    const-string p2, "float_back_page"

    .line 30
    .line 31
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string p1, "type"

    .line 35
    .line 36
    const-string p2, "float"

    .line 37
    .line 38
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 42
    .line 43
    invoke-virtual {p1, p3, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private final r(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const-string v1, "subject_id"

    .line 9
    .line 10
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    if-eqz p3, :cond_1

    .line 14
    .line 15
    const-string p2, "ugc_video_id"

    .line 16
    .line 17
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_1
    if-eqz p5, :cond_2

    .line 21
    .line 22
    const-string p2, "ops"

    .line 23
    .line 24
    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_2
    if-eqz p1, :cond_3

    .line 28
    .line 29
    const-string p1, "allow"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    const-string p1, "cancel"

    .line 33
    .line 34
    :goto_0
    const-string p2, "opt_type"

    .line 35
    .line 36
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string p1, "page_from"

    .line 40
    .line 41
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 45
    .line 46
    sget-object p2, Lcw/b;->a:Lcw/b$a;

    .line 47
    .line 48
    invoke-virtual {p2}, Lcw/b$a;->d()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private final s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v1, "subject_id"

    .line 9
    .line 10
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const-string p1, "ugc_video_id"

    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_1
    if-eqz p4, :cond_2

    .line 21
    .line 22
    const-string p1, "ops"

    .line 23
    .line 24
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_2
    const-string p1, "page_from"

    .line 28
    .line 29
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 33
    .line 34
    sget-object p2, Lcw/b;->a:Lcw/b$a;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcw/b$a;->d()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2, v0}, Lqi/h;->p(Ljava/lang/String;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private final t(ZZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "has_permission"

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p1, "click"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p1, "auto"

    .line 21
    .line 22
    :goto_0
    const-string p2, "action"

    .line 23
    .line 24
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 28
    .line 29
    const-string p2, "float_opt"

    .line 30
    .line 31
    const-string v1, "app_perf"

    .line 32
    .line 33
    invoke-virtual {p1, p2, v1, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final u(Ldw/a;ZLgw/a;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {p0, v1, v2, v0}, Lcw/b$b;->a(Lcw/b;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/videofloat/view/VideoFloatView;

    .line 12
    .line 13
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v3, "getApp(...)"

    .line 18
    .line 19
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/transsion/videofloat/view/VideoFloatView;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 32
    .line 33
    const/4 v7, 0x4

    .line 34
    const/4 v8, 0x0

    .line 35
    const-string v4, "VideoFloat"

    .line 36
    .line 37
    const-string v5, "showFloat"

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/transsion/videofloat/manager/a0;->a:Lcom/transsion/videofloat/manager/a0;

    .line 44
    .line 45
    invoke-virtual {p1}, Ldw/a;->k()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p1}, Ldw/a;->f()Lcom/transsion/player/orplayer/f;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v1, v3, v4}, Lcom/transsion/videofloat/manager/a0;->a(Ljava/lang/String;Lcom/transsion/player/orplayer/f;)V

    .line 54
    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/transsion/videofloat/manager/i;->c:Z

    .line 57
    .line 58
    invoke-virtual {v0, p2, p1}, Lcom/transsion/videofloat/view/VideoFloatView;->addToWindow(ZLdw/a;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lcom/transsion/videofloat/manager/i$a;

    .line 62
    .line 63
    invoke-direct {p1, p3, p0}, Lcom/transsion/videofloat/manager/i$a;-><init>(Lgw/a;Lcom/transsion/videofloat/manager/i;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/transsion/videofloat/view/VideoFloatView;->setVideoFloatListener(Lgw/a;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method private final v(Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    .line 1
    sget-object v0, Lcf/c;->a:Lcf/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcf/c;->e(Landroidx/fragment/app/FragmentActivity;)Lcf/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 8
    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcf/a;->b([Ljava/lang/String;)Lgf/h;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Lgf/h;->b()Lgf/h;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v7, Lcom/transsion/videofloat/manager/e;

    .line 22
    .line 23
    move-object v0, v7

    .line 24
    move v1, p2

    .line 25
    move-object v2, p0

    .line 26
    move-object v3, p4

    .line 27
    move-object v4, p5

    .line 28
    move-object v5, p3

    .line 29
    move-object v6, p6

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/transsion/videofloat/manager/e;-><init>(ZLcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v7}, Lgf/h;->a(Ldf/b;)Lgf/h;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Lcom/transsion/videofloat/manager/f;

    .line 38
    .line 39
    move-object v0, p2

    .line 40
    move-object v1, p0

    .line 41
    move-object v2, p4

    .line 42
    move-object v3, p5

    .line 43
    move-object v4, p3

    .line 44
    move-object v5, p6

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/transsion/videofloat/manager/f;-><init>(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, p2}, Lgf/h;->c(Ldf/a;)Lgf/h;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p2, Lcom/transsion/videofloat/manager/g;

    .line 53
    .line 54
    invoke-direct {p2, p0, p7}, Lcom/transsion/videofloat/manager/g;-><init>(Lcom/transsion/videofloat/manager/i;Lkotlin/jvm/functions/Function1;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, p2}, Lgf/h;->d(Ldf/c;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method static synthetic w(Lcom/transsion/videofloat/manager/i;Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p8, 0x40

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    move-object v8, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object/from16 v8, p7

    .line 9
    .line 10
    :goto_0
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move v3, p2

    .line 13
    move-object v4, p3

    .line 14
    move-object v5, p4

    .line 15
    move-object v6, p5

    .line 16
    move-object v7, p6

    .line 17
    invoke-direct/range {v1 .. v8}, Lcom/transsion/videofloat/manager/i;->v(Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final x(ZLcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgf/f;Ljava/util/List;ZZ)V
    .locals 12

    .line 1
    move v0, p0

    .line 2
    move-object/from16 v1, p6

    .line 3
    .line 4
    move-object/from16 v2, p7

    .line 5
    .line 6
    const-string v3, "scope"

    .line 7
    .line 8
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v3, "deniedList"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-nez p8, :cond_0

    .line 17
    .line 18
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "VideoFloat"

    .line 23
    .line 24
    const-string v4, "\u8bf7\u6c42\u6743\u9650\u4e4b\u540e\uff0c"

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    move-object p0, v0

    .line 28
    move-object p1, v3

    .line 29
    move-object p2, v4

    .line 30
    move p3, v5

    .line 31
    move/from16 p4, v1

    .line 32
    .line 33
    move-object/from16 p5, v2

    .line 34
    .line 35
    invoke-static/range {p0 .. p5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "\u8bf7\u6c42\u6743\u9650\u524d\uff0c\u63d0\u793a\u5f39\u7a97\uff0cisFullLand\uff1a"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    const/4 v10, 0x4

    .line 59
    const/4 v11, 0x0

    .line 60
    const-string v7, "VideoFloat"

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    new-instance v0, Lcom/transsion/videofloat/dialog/VideoFloatPermissionDialog;

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-direct {v0, v3, v2}, Lcom/transsion/videofloat/dialog/VideoFloatPermissionDialog;-><init>(ZLjava/util/List;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Lgf/f;->d(Lcom/permissionx/guolindev/dialog/RationaleDialog;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Lff/a;

    .line 79
    .line 80
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    sget v4, Lcom/transsion/videofloat/R$string;->video_float_tips_v2:I

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    sget v4, Lcom/transsion/videofloat/R$string;->video_float_enable:I

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    sget v3, Lcom/transsion/videofloat/R$mipmap;->video_float_ic_permission_img:I

    .line 101
    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    sget v3, Lcom/tn/lib/widget/R$color;->white_20:I

    .line 107
    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    const/4 v10, 0x1

    .line 113
    const/4 v11, 0x0

    .line 114
    const/4 v5, 0x0

    .line 115
    move-object v4, v0

    .line 116
    invoke-direct/range {v4 .. v11}, Lff/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2, v0}, Lgf/f;->e(Ljava/util/List;Lff/a;)V

    .line 120
    .line 121
    .line 122
    :goto_0
    invoke-direct/range {p1 .. p5}, Lcom/transsion/videofloat/manager/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method private static final y(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V
    .locals 6

    .line 1
    sget-object p5, Lcom/permissionx/guolindev/callback/PermissionDialogClickType;->POSITIVE:Lcom/permissionx/guolindev/callback/PermissionDialogClickType;

    .line 2
    .line 3
    if-ne p7, p5, :cond_0

    .line 4
    .line 5
    const/4 p5, 0x1

    .line 6
    :goto_0
    move v1, p5

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 p5, 0x0

    .line 9
    goto :goto_0

    .line 10
    :goto_1
    move-object v0, p0

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p3

    .line 14
    move-object v5, p4

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/transsion/videofloat/manager/i;->r(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final z(Lcom/transsion/videofloat/manager/i;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V
    .locals 6

    .line 1
    const-string v0, "grantedList"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "deniedList"

    .line 7
    .line 8
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    new-instance p3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string p4, "\u8bf7\u6c42\u6743\u9650\u7ed3\u679c:"

    .line 19
    .line 20
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v1, "VideoFloat"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 p3, 0x1

    .line 39
    invoke-direct {p0, p3, p2}, Lcom/transsion/videofloat/manager/i;->t(ZZ)V

    .line 40
    .line 41
    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    if-eqz p1, :cond_1

    .line 53
    .line 54
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->getFloatBean()Ldw/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ldw/a;->r()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Ldw/a;->q()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0}, Ldw/a;->c()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 53
    return p1
.end method

.method public c(Lcom/transsion/player/orplayer/f;)Z
    .locals 7

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/videofloat/manager/i;->c:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/transsion/videofloat/view/VideoFloatView;->getPlayer()Lcom/transsion/player/orplayer/f;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v2, v6

    .line 16
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v4, "1-isEnterFloat\uff1a"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", "

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " "

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v4, 0x4

    .line 53
    const/4 v5, 0x0

    .line 54
    const-string v1, "VideoFloat"

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v0, p0, Lcom/transsion/videofloat/manager/i;->c:Z

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->getPlayer()Lcom/transsion/player/orplayer/f;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move-object v0, v6

    .line 75
    :goto_1
    if-nez v0, :cond_2

    .line 76
    .line 77
    move p1, v1

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->getPlayer()Lcom/transsion/player/orplayer/f;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    :cond_3
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    :goto_2
    if-eqz p1, :cond_4

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    :cond_4
    return v1
.end method

.method public d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0}, Lcom/transsion/videofloat/manager/i;->p()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/transsion/videofloat/manager/i;->t(ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public e(Landroidx/fragment/app/FragmentActivity;Ldw/a;ZZLkotlin/jvm/functions/Function1;Lgw/a;)V
    .locals 12

    .line 1
    move-object v3, p2

    .line 2
    move v4, p3

    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    const-string v0, "activity"

    .line 6
    .line 7
    move-object v6, p1

    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "floatBean"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lon/e0;->a:Lon/e0;

    .line 17
    .line 18
    invoke-virtual {v0}, Lon/e0;->j()Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "VideoFloat"

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ne v0, v5, :cond_5

    .line 38
    .line 39
    invoke-virtual {p2, p3}, Ldw/a;->D(Z)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/transsion/videofloat/manager/i;->p()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 49
    .line 50
    new-instance v7, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v8, "checkShowFloatView no permission proactive:"

    .line 56
    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v0, v2, v7, v5}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    invoke-virtual {p2}, Ldw/a;->h()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {p2}, Ldw/a;->r()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {p2}, Ldw/a;->v()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_0
    move-object v9, v0

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 93
    goto :goto_0

    .line 94
    :goto_1
    invoke-virtual {p2}, Ldw/a;->e()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    new-instance v11, Lcom/transsion/videofloat/manager/h;

    .line 99
    .line 100
    move-object v0, v11

    .line 101
    move-object/from16 v1, p5

    .line 102
    .line 103
    move-object v2, p0

    .line 104
    move-object v3, p2

    .line 105
    move v4, p3

    .line 106
    move-object/from16 v5, p6

    .line 107
    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/transsion/videofloat/manager/h;-><init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/videofloat/manager/i;Ldw/a;ZLgw/a;)V

    .line 109
    .line 110
    .line 111
    move-object v1, p0

    .line 112
    move-object v2, p1

    .line 113
    move/from16 v3, p4

    .line 114
    .line 115
    move-object v4, v7

    .line 116
    move-object v5, v8

    .line 117
    move-object v6, v9

    .line 118
    move-object v7, v10

    .line 119
    move-object v8, v11

    .line 120
    invoke-direct/range {v1 .. v8}, Lcom/transsion/videofloat/manager/i;->v(Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_1
    if-eqz v1, :cond_2

    .line 125
    .line 126
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    :cond_2
    :goto_2
    return-void

    .line 132
    :cond_3
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 133
    .line 134
    const/4 v9, 0x4

    .line 135
    const/4 v10, 0x0

    .line 136
    const-string v6, "VideoFloat"

    .line 137
    .line 138
    const-string v7, "checkShowFloatView--has permission showFloat"

    .line 139
    .line 140
    const/4 v8, 0x0

    .line 141
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    if-eqz v1, :cond_4

    .line 145
    .line 146
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 147
    .line 148
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_4
    move-object v0, p0

    .line 152
    move-object/from16 v1, p6

    .line 153
    .line 154
    invoke-direct {p0, p2, p3, v1}, Lcom/transsion/videofloat/manager/i;->u(Ldw/a;ZLgw/a;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_5
    move-object v0, p0

    .line 159
    if-eqz v1, :cond_6

    .line 160
    .line 161
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :cond_6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 167
    .line 168
    const-string v3, "\u5355\u64ad\u653e\u5668 \u7981\u7528pip\u529f\u80fd"

    .line 169
    .line 170
    invoke-virtual {v1, v2, v3, v5}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public f(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageName"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lon/e0;->a:Lon/e0;

    .line 12
    .line 13
    invoke-virtual {v0}, Lon/e0;->j()Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcw/e;->a:Lcw/e$a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcw/e$a;->b()Lcw/e;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcw/e;->c()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sget-object v3, Lcw/b;->a:Lcw/b$a;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcw/b$a;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-virtual {v2, v4, v5}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v3}, Lcw/b$a;->b()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    move-object v3, p0

    .line 92
    move-object v4, p1

    .line 93
    move-object v6, p4

    .line 94
    move-object v7, p2

    .line 95
    move-object v8, p3

    .line 96
    move-object v9, p5

    .line 97
    invoke-direct/range {v3 .. v9}, Lcom/transsion/videofloat/manager/i;->n(Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_0
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/transsion/videofloat/manager/a0;->a:Lcom/transsion/videofloat/manager/a0;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/videofloat/manager/a0;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/transsion/videofloat/manager/i;->c:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/videofloat/view/VideoFloatView;->removeFromWindow()V

    .line 16
    .line 17
    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 20
    .line 21
    return-void
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/videofloat/manager/i;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i;->b:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/videofloat/view/VideoFloatView;->isPlaying()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :cond_1
    return v1
.end method
