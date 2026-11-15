.class public final Lcom/transsion/postdetail/shorttv_pugc/factory/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lvs/a;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/postdetail/shorttv_pugc/factory/i;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/postdetail/shorttv_pugc/factory/i;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/j;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic b()Lgj/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/shorttv_pugc/factory/j;->d()Lgj/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final c()Lgj/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/j;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgj/c;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final d()Lgj/c;
    .locals 2

    .line 1
    sget-object v0, Lgj/a;->a:Lgj/a$a;

    .line 2
    .line 3
    const-class v1, Lgj/c;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lgj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lgj/c;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv_pugc/factory/j;->c()Lgj/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lgj/c;->a(J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
