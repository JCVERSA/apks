.class public Lcom/google/firebase/datatransport/TransportRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-transport"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lic1;)Lb9b;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$2(Lic1;)Lb9b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lic1;)Lb9b;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$1(Lic1;)Lb9b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lic1;)Lb9b;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Lic1;)Lb9b;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lic1;)Lb9b;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lj9b;->f(Landroid/content/Context;)V

    invoke-static {}, Lj9b;->c()Lj9b;

    move-result-object p0

    sget-object v0, Luo0;->h:Luo0;

    invoke-virtual {p0, v0}, Lj9b;->g(Lx92;)Lb9b;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$1(Lic1;)Lb9b;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lj9b;->f(Landroid/content/Context;)V

    invoke-static {}, Lj9b;->c()Lj9b;

    move-result-object p0

    sget-object v0, Luo0;->h:Luo0;

    invoke-virtual {p0, v0}, Lj9b;->g(Lx92;)Lb9b;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$2(Lic1;)Lb9b;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lj9b;->f(Landroid/content/Context;)V

    invoke-static {}, Lj9b;->c()Lj9b;

    move-result-object p0

    sget-object v0, Luo0;->g:Luo0;

    invoke-virtual {p0, v0}, Lj9b;->g(Lx92;)Lb9b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzb1;",
            ">;"
        }
    .end annotation

    const-class p0, Lb9b;

    invoke-static {p0}, Lzb1;->e(Ljava/lang/Class;)Lzb1$b;

    move-result-object v0

    const-string v1, "fire-transport"

    invoke-virtual {v0, v1}, Lzb1$b;->h(Ljava/lang/String;)Lzb1$b;

    move-result-object v0

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lk82;->k(Ljava/lang/Class;)Lk82;

    move-result-object v3

    invoke-virtual {v0, v3}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v0

    new-instance v3, Lg9b;

    invoke-direct {v3}, Lg9b;-><init>()V

    invoke-virtual {v0, v3}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object v0

    invoke-virtual {v0}, Lzb1$b;->d()Lzb1;

    move-result-object v0

    const-class v3, Lbk5;

    invoke-static {v3, p0}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v3

    invoke-static {v3}, Lzb1;->c(Lvk8;)Lzb1$b;

    move-result-object v3

    invoke-static {v2}, Lk82;->k(Ljava/lang/Class;)Lk82;

    move-result-object v4

    invoke-virtual {v3, v4}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v3

    new-instance v4, Lh9b;

    invoke-direct {v4}, Lh9b;-><init>()V

    invoke-virtual {v3, v4}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object v3

    invoke-virtual {v3}, Lzb1$b;->d()Lzb1;

    move-result-object v3

    const-class v4, Ly8b;

    invoke-static {v4, p0}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object p0

    invoke-static {p0}, Lzb1;->c(Lvk8;)Lzb1$b;

    move-result-object p0

    invoke-static {v2}, Lk82;->k(Ljava/lang/Class;)Lk82;

    move-result-object v2

    invoke-virtual {p0, v2}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object p0

    new-instance v2, Li9b;

    invoke-direct {v2}, Li9b;-><init>()V

    invoke-virtual {p0, v2}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object p0

    invoke-virtual {p0}, Lzb1$b;->d()Lzb1;

    move-result-object p0

    const-string v2, "18.2.0"

    invoke-static {v1, v2}, Lqk5;->b(Ljava/lang/String;Ljava/lang/String;)Lzb1;

    move-result-object v1

    filled-new-array {v0, v3, p0, v1}, [Lzb1;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
