.class public final Lcom/transsnet/flow/event/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsnet/flow/event/b;

.field public static b:Landroid/app/Application;

.field private static c:Lcom/transsnet/flow/event/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/flow/event/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/flow/event/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsnet/flow/event/b;->a:Lcom/transsnet/flow/event/b;

    .line 7
    .line 8
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


# virtual methods
.method public final a()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/flow/event/b;->b:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "application"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final b()Lcom/transsnet/flow/event/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/flow/event/b;->c:Lcom/transsnet/flow/event/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsnet/flow/event/b;->a:Lcom/transsnet/flow/event/b;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsnet/flow/event/b;->d(Landroid/app/Application;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/transsnet/flow/event/d;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/transsnet/flow/event/d;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object p1, Lcom/transsnet/flow/event/b;->c:Lcom/transsnet/flow/event/c;

    .line 17
    .line 18
    return-void
.end method

.method public final d(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/transsnet/flow/event/b;->b:Landroid/app/Application;

    .line 7
    .line 8
    return-void
.end method
