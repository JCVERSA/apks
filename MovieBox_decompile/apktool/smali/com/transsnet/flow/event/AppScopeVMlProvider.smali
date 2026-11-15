.class public final Lcom/transsnet/flow/event/AppScopeVMlProvider;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/y0;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\u0008\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0005*\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsnet/flow/event/AppScopeVMlProvider;",
        "Landroidx/lifecycle/y0;",
        "<init>",
        "()V",
        "Landroidx/lifecycle/t0;",
        "T",
        "Ljava/lang/Class;",
        "modelClass",
        "getApplicationScopeViewModel",
        "(Ljava/lang/Class;)Landroidx/lifecycle/t0;",
        "Landroidx/lifecycle/x0;",
        "eventViewModelStore",
        "Landroidx/lifecycle/x0;",
        "Landroidx/lifecycle/v0;",
        "mApplicationProvider$delegate",
        "Lkotlin/Lazy;",
        "getMApplicationProvider",
        "()Landroidx/lifecycle/v0;",
        "mApplicationProvider",
        "getViewModelStore",
        "()Landroidx/lifecycle/x0;",
        "viewModelStore",
        "FlowEvent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

.field private static final eventViewModelStore:Landroidx/lifecycle/x0;

.field private static final mApplicationProvider$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 7
    .line 8
    new-instance v0, Landroidx/lifecycle/x0;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/lifecycle/x0;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->eventViewModelStore:Landroidx/lifecycle/x0;

    .line 14
    .line 15
    new-instance v0, Lcom/transsnet/flow/event/a;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsnet/flow/event/a;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->mApplicationProvider$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
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

.method public static synthetic a()Landroidx/lifecycle/v0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->mApplicationProvider_delegate$lambda$0()Landroidx/lifecycle/v0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final getMApplicationProvider()Landroidx/lifecycle/v0;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->mApplicationProvider$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/v0;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final mApplicationProvider_delegate$lambda$0()Landroidx/lifecycle/v0;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/v0;

    .line 2
    .line 3
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 4
    .line 5
    sget-object v2, Landroidx/lifecycle/v0$a;->e:Landroidx/lifecycle/v0$a$b;

    .line 6
    .line 7
    sget-object v3, Lcom/transsnet/flow/event/b;->a:Lcom/transsnet/flow/event/b;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/transsnet/flow/event/b;->a()Landroid/app/Application;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Landroidx/lifecycle/v0$a$b;->a(Landroid/app/Application;)Landroidx/lifecycle/v0$a;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/v0$c;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public final getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/t0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "modelClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getMApplicationProvider()Landroidx/lifecycle/v0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getViewModelStore()Landroidx/lifecycle/x0;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->eventViewModelStore:Landroidx/lifecycle/x0;

    .line 2
    .line 3
    return-object v0
.end method
