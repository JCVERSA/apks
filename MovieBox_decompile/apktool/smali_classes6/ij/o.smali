.class public final Lij/o;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lij/o;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lij/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lij/o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lij/o;->a:Lij/o;

    .line 7
    .line 8
    const-string v0, "All"

    .line 9
    .line 10
    sput-object v0, Lij/o;->c:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "UN_GRADE"

    .line 13
    .line 14
    sput-object v0, Lij/o;->d:Ljava/lang/String;

    .line 15
    .line 16
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

.method private final h()Z
    .locals 3

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sa_key_kid_mode_ad_switch"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :cond_0
    return v2
.end method

.method private final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    :goto_0
    sput-object v1, Lij/o;->b:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    move-object p1, v0

    .line 19
    :cond_1
    const-string v0, "k_kids_mode_current_kid_id"

    .line 20
    .line 21
    invoke-virtual {v1, v0, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lij/o;->n()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "kidId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lij/o;->i()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lij/g;->a:Lij/g;

    .line 13
    .line 14
    invoke-virtual {v0}, Lij/g;->b()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "k_kids_mode_ugc_snapshot"

    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-direct {p0}, Lij/o;->h()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    sget-object v0, Lrh/b;->a:Lrh/b;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lrh/b;->d(Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    sget-object v0, Lij/g;->a:Lij/g;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lij/g;->e(Z)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Lij/o;->k(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lij/n;

    .line 50
    .line 51
    invoke-direct {v0, p1}, Lij/n;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 55
    .line 56
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 63
    .line 64
    const-class v1, Lij/n;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "getName(...)"

    .line 71
    .line 72
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v2, 0x0

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final b()V
    .locals 8

    .line 1
    sget-object v0, Lrh/b;->a:Lrh/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lrh/b;->d(Z)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lij/o;->k(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "k_kids_mode_ugc_snapshot"

    .line 18
    .line 19
    const/4 v5, -0x1

    .line 20
    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eq v3, v5, :cond_1

    .line 25
    .line 26
    sget-object v6, Lij/g;->a:Lij/g;

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    if-ne v3, v7, :cond_0

    .line 30
    .line 31
    move v1, v7

    .line 32
    :cond_0
    invoke-virtual {v6, v1}, Lij/g;->e(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v4, v5}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    :cond_1
    new-instance v1, Lij/n;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lij/n;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 48
    .line 49
    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 56
    .line 57
    const-class v2, Lij/n;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "getName(...)"

    .line 64
    .line 65
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v3, 0x0

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lij/x;->a:Lij/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/x;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lij/o;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "k_kids_mode_current_kid_id"

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, v0

    .line 23
    :goto_0
    sput-object v2, Lij/o;->b:Ljava/lang/String;

    .line 24
    .line 25
    :cond_1
    sget-object v0, Lij/o;->b:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/4 v1, 0x0

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 39
    :goto_2
    if-nez v1, :cond_4

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_4
    const/4 v0, 0x0

    .line 43
    :goto_3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lij/o;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lij/o;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lij/o;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lij/o;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lij/o;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    move v0, v1

    .line 18
    :goto_1
    xor-int/2addr v0, v1

    .line 19
    return v0
.end method

.method public final j()Z
    .locals 3

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sa_key_kid_mode_feature_enable"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lij/o;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lij/o;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    sget-object v0, Ljg/b;->a:Ljg/b$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lij/o;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    :cond_0
    const-string v2, "X-Child-UID"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Ljg/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
