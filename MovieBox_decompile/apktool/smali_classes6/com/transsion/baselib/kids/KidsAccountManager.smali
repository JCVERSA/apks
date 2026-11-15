.class public final Lcom/transsion/baselib/kids/KidsAccountManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/kids/KidsAccountManager$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/baselib/kids/KidsAccountManager;

.field private static final b:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baselib/kids/KidsAccountManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 7
    .line 8
    new-instance v0, Lcom/google/gson/Gson;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->b:Lcom/google/gson/Gson;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    :cond_1
    const-string v0, "visitor"

    .line 35
    .line 36
    :cond_2
    return-object v0
.end method

.method private final h(Ljava/lang/String;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/mmkv/MMKV;->h(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    cmp-long p1, v3, v1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    sget-object p1, Lcm/f;->c:Lcm/f$a;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcm/f$a;->a()Lcm/f;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "pk_kids_dialog_suppress_duration"

    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-wide/32 v1, 0x240c8400

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    sub-long/2addr v5, v3

    .line 58
    cmp-long p1, v5, v1

    .line 59
    .line 60
    if-gez p1, :cond_2

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    :cond_2
    return v0
.end method

.method public static synthetic n(Lcom/transsion/baselib/kids/KidsAccountManager;Lcom/transsion/baselib/kids/KidsProfile;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/kids/KidsAccountManager;->m(Lcom/transsion/baselib/kids/KidsProfile;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "kids_profile"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "kv_search_list"

    .line 13
    .line 14
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "mmkvWithID(...)"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "kv_kids_search_work"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "kv_kids_search_group"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v7, 0x0

    .line 37
    const-string v3, "KidsAccountManager"

    .line 38
    .line 39
    const-string v4, "deleteKidsProfile: profile and search history cleared"

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/transsion/baselib/kids/KidsAccountManager$a;

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-direct {v0, v1}, Lcom/transsion/baselib/kids/KidsAccountManager$a;-><init>(I)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 52
    .line 53
    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 60
    .line 61
    const-class v2, Lcom/transsion/baselib/kids/KidsAccountManager$a;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "getName(...)"

    .line 68
    .line 69
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-wide/16 v3, 0x0

    .line 73
    .line 74
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final c(Lcom/transsion/baselib/kids/KidsProfile;)V
    .locals 7

    .line 1
    const-string v0, "profile"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "KidsAccountManager"

    .line 11
    .line 12
    const-string v3, "enter kids mode."

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lij/o;->a:Lij/o;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsProfile;->getKidsId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Lij/o;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "KidsAccountManager"

    .line 6
    .line 7
    const-string v2, "exit kids mode."

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lij/o;->a:Lij/o;

    .line 14
    .line 15
    invoke-virtual {v0}, Lij/o;->b()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lij/o;->a:Lij/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/o;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->f()Lcom/transsion/baselib/kids/KidsProfile;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/baselib/kids/KidsProfile;->getKidsId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final f()Lcom/transsion/baselib/kids/KidsProfile;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "kids_profile"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    :cond_0
    sget-object v1, Lcom/transsion/baselib/kids/KidsAccountManager;->b:Lcom/google/gson/Gson;

    .line 18
    .line 19
    const-class v2, Lcom/transsion/baselib/kids/KidsProfile;

    .line 20
    .line 21
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/transsion/baselib/kids/KidsProfile;

    .line 26
    .line 27
    return-object v0
.end method

.method public final g()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "kids_create_dialog_dismiss_"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Lcom/transsion/baselib/kids/KidsAccountManager;->h(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public final i()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->f()Lcom/transsion/baselib/kids/KidsProfile;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/baselib/kids/KidsProfile;->getPinHash()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :cond_1
    move v1, v2

    .line 23
    :cond_2
    xor-int/lit8 v0, v1, 0x1

    .line 24
    .line 25
    return v0
.end method

.method public final j()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "kids_switch_dialog_dismiss_"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Lcom/transsion/baselib/kids/KidsAccountManager;->h(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public final k()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "kids_create_dialog_dismiss_"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;J)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "kids_switch_dialog_dismiss_"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;J)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final m(Lcom/transsion/baselib/kids/KidsProfile;Z)V
    .locals 3

    .line 1
    const-string v0, "profile"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/transsion/baselib/kids/KidsAccountManager;->b:Lcom/google/gson/Gson;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "kids_profile"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->v(Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    new-instance p1, Lcom/transsion/baselib/kids/KidsAccountManager$a;

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-direct {p1, p2}, Lcom/transsion/baselib/kids/KidsAccountManager$a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sget-object p2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 32
    .line 33
    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 40
    .line 41
    const-class v0, Lcom/transsion/baselib/kids/KidsAccountManager$a;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "getName(...)"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v1, 0x0

    .line 53
    .line 54
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public final o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p1, Lcom/transsion/baselib/kids/KidsAccountManager$shouldShowAutoPopup$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/baselib/kids/KidsAccountManager$shouldShowAutoPopup$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/baselib/kids/KidsAccountManager$shouldShowAutoPopup$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/baselib/kids/KidsAccountManager$shouldShowAutoPopup$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/baselib/kids/KidsAccountManager$shouldShowAutoPopup$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/transsion/baselib/kids/KidsAccountManager$shouldShowAutoPopup$1;-><init>(Lcom/transsion/baselib/kids/KidsAccountManager;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v4, Lcom/transsion/baselib/kids/KidsAccountManager$shouldShowAutoPopup$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Lcom/transsion/baselib/kids/KidsAccountManager$shouldShowAutoPopup$1;->label:I

    .line 34
    .line 35
    const-string v7, "USER_CONSUME_EDUCATION"

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    if-ne v1, v9, :cond_1

    .line 42
    .line 43
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :try_start_1
    sget-object p1, Lmg/b;->a:Lmg/b$a;

    .line 62
    .line 63
    new-instance v1, Lcom/google/gson/Gson;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/transsion/baselib/kids/ConsumeJudgeRequest;

    .line 69
    .line 70
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-direct {v2, v3}, Lcom/transsion/baselib/kids/ConsumeJudgeRequest;-><init>(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "toJson(...)"

    .line 82
    .line 83
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    :cond_3
    sget-object p1, Lkg/c;->e:Lkg/c$a;

    .line 98
    .line 99
    invoke-virtual {p1}, Lkg/c$a;->a()Lkg/c;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-class v1, Lcom/transsion/baselib/kids/a;

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    move-object v1, p1

    .line 110
    check-cast v1, Lcom/transsion/baselib/kids/a;

    .line 111
    .line 112
    iput v9, v4, Lcom/transsion/baselib/kids/KidsAccountManager$shouldShowAutoPopup$1;->label:I

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    const/4 v5, 0x1

    .line 116
    const/4 v6, 0x0

    .line 117
    invoke-static/range {v1 .. v6}, Lcom/transsion/baselib/kids/a$a;->a(Lcom/transsion/baselib/kids/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-ne p1, v0, :cond_4

    .line 122
    .line 123
    return-object v0

    .line 124
    :cond_4
    :goto_2
    check-cast p1, Lcom/transsion/baselib/kids/ConsumeJudgeResponse;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/transsion/baselib/kids/ConsumeJudgeResponse;->getList()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    check-cast p1, Ljava/lang/Iterable;

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    move-object v1, v0

    .line 149
    check-cast v1, Lcom/transsion/baselib/kids/ConsumeJudgeItem;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/transsion/baselib/kids/ConsumeJudgeItem;->getConsumeType()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_5

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    const/4 v0, 0x0

    .line 163
    :goto_3
    check-cast v0, Lcom/transsion/baselib/kids/ConsumeJudgeItem;

    .line 164
    .line 165
    if-eqz v0, :cond_7

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/transsion/baselib/kids/ConsumeJudgeItem;->isConsume()Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_7

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    goto :goto_4

    .line 178
    :cond_7
    move p1, v8

    .line 179
    :goto_4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 180
    .line 181
    const-string v1, "KidsAccountManager"

    .line 182
    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v3, "shouldShowAutoPopup response result: "

    .line 189
    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    const/4 v4, 0x4

    .line 201
    const/4 v5, 0x0

    .line 202
    const/4 v3, 0x0

    .line 203
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    .line 205
    .line 206
    move v8, p1

    .line 207
    goto :goto_6

    .line 208
    :goto_5
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v2, "shouldShowAutoPopup error: "

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const-string v1, "KidsAccountManager"

    .line 232
    .line 233
    invoke-virtual {v0, v1, p1, v9}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 234
    .line 235
    .line 236
    :goto_6
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    return-object p1
.end method

.method public final p(Ljava/lang/String;)V
    .locals 14

    .line 1
    const-string v0, "pinHash"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->f()Lcom/transsion/baselib/kids/KidsProfile;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v13, Lcom/transsion/baselib/kids/KidsAccountManager;->b:Lcom/google/gson/Gson;

    .line 20
    .line 21
    const/16 v11, 0x1df

    .line 22
    .line 23
    const/4 v12, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    move-object v7, p1

    .line 33
    invoke-static/range {v1 .. v12}, Lcom/transsion/baselib/kids/KidsProfile;->copy$default(Lcom/transsion/baselib/kids/KidsProfile;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/transsion/baselib/kids/KidsProfile;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v13, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v1, "kids_profile"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->v(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "inputPin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->f()Lcom/transsion/baselib/kids/KidsProfile;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/baselib/kids/KidsProfile;->getPinHash()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method
