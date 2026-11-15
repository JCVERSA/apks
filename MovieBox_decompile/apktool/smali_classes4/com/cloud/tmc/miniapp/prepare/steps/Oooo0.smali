.class public final Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;

.field public static final OooO0O0:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;

    .line 7
    .line 8
    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0$OooO00o;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0O0:Lkotlin/Lazy;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final OooO00o()Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0Oo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;

    .line 10
    .line 11
    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    .line 12
    .line 13
    const-string v2, "STEP_TYPE"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/StepType;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;-><init>()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-object v0
.end method

.method public static final OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0Oo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;

    .line 10
    .line 11
    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0O0;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    .line 12
    .line 13
    const-string v2, "STEP_TYPE"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/StepType;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;-><init>()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-object v0
.end method

.method public static final OooO0OO()Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0Oo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;

    .line 10
    .line 11
    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    .line 12
    .line 13
    const-string v2, "STEP_TYPE"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/StepType;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0OO;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0OO;-><init>()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final OooO0Oo()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0O0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
