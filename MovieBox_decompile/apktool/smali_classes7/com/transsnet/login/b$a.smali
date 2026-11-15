.class public final Lcom/transsnet/login/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/login/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/b$a;-><init>()V

    return-void
.end method

.method public static synthetic a(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/login/b$a;->c(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(I)V
    .locals 1

    .line 1
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lfh/b$a;->d(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->f()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsnet/login/a;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/transsnet/login/a;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0x1f4

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
