.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lic1;)Lkw3;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lic1;)Lkw3;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lic1;)Lkw3;
    .locals 6

    new-instance v0, Lcom/google/firebase/installations/a;

    const-class v1, Lzv3;

    invoke-interface {p0, v1}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv3;

    const-class v2, Lxo4;

    invoke-interface {p0, v2}, Lic1;->e(Ljava/lang/Class;)Lpj8;

    move-result-object v2

    const-class v3, Ld50;

    const-class v4, Ljava/util/concurrent/ExecutorService;

    invoke-static {v3, v4}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v3

    invoke-interface {p0, v3}, Lic1;->d(Lvk8;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    const-class v4, Lrf0;

    const-class v5, Ljava/util/concurrent/Executor;

    invoke-static {v4, v5}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v4

    invoke-interface {p0, v4}, Lic1;->d(Lvk8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lew3;->a(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/installations/a;-><init>(Lzv3;Lpj8;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzb1;",
            ">;"
        }
    .end annotation

    const-class p0, Lkw3;

    invoke-static {p0}, Lzb1;->e(Ljava/lang/Class;)Lzb1$b;

    move-result-object p0

    const-string v0, "fire-installations"

    invoke-virtual {p0, v0}, Lzb1$b;->h(Ljava/lang/String;)Lzb1$b;

    move-result-object p0

    const-class v1, Lzv3;

    invoke-static {v1}, Lk82;->k(Ljava/lang/Class;)Lk82;

    move-result-object v1

    invoke-virtual {p0, v1}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object p0

    const-class v1, Lxo4;

    invoke-static {v1}, Lk82;->i(Ljava/lang/Class;)Lk82;

    move-result-object v1

    invoke-virtual {p0, v1}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object p0

    const-class v1, Ld50;

    const-class v2, Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v2}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v1

    invoke-static {v1}, Lk82;->j(Lvk8;)Lk82;

    move-result-object v1

    invoke-virtual {p0, v1}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object p0

    const-class v1, Lrf0;

    const-class v2, Ljava/util/concurrent/Executor;

    invoke-static {v1, v2}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v1

    invoke-static {v1}, Lk82;->j(Lvk8;)Lk82;

    move-result-object v1

    invoke-virtual {p0, v1}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object p0

    new-instance v1, Llw3;

    invoke-direct {v1}, Llw3;-><init>()V

    invoke-virtual {p0, v1}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object p0

    invoke-virtual {p0}, Lzb1$b;->d()Lzb1;

    move-result-object p0

    invoke-static {}, Lwo4;->a()Lzb1;

    move-result-object v1

    const-string v2, "18.0.0"

    invoke-static {v0, v2}, Lqk5;->b(Ljava/lang/String;Ljava/lang/String;)Lzb1;

    move-result-object v0

    filled-new-array {p0, v1, v0}, [Lzb1;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
