.class public abstract Lxq8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbr8;

.field public static final b:[Lde5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcr8;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr8;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lbr8;

    invoke-direct {v0}, Lbr8;-><init>()V

    :goto_0
    sput-object v0, Lxq8;->a:Lbr8;

    const/4 v0, 0x0

    new-array v0, v0, [Lde5;

    sput-object v0, Lxq8;->b:[Lde5;

    return-void
.end method

.method public static a(Lkotlin/jvm/internal/FunctionReference;)Lle5;
    .locals 1

    sget-object v0, Lxq8;->a:Lbr8;

    invoke-virtual {v0, p0}, Lbr8;->a(Lkotlin/jvm/internal/FunctionReference;)Lle5;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lde5;
    .locals 1

    sget-object v0, Lxq8;->a:Lbr8;

    invoke-virtual {v0, p0}, Lbr8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Lke5;
    .locals 2

    sget-object v0, Lxq8;->a:Lbr8;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lbr8;->c(Ljava/lang/Class;Ljava/lang/String;)Lke5;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)Lke5;
    .locals 1

    sget-object v0, Lxq8;->a:Lbr8;

    invoke-virtual {v0, p0, p1}, Lbr8;->c(Ljava/lang/Class;Ljava/lang/String;)Lke5;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lkotlin/jvm/internal/MutablePropertyReference0;)Lwe5;
    .locals 1

    sget-object v0, Lxq8;->a:Lbr8;

    invoke-virtual {v0, p0}, Lbr8;->d(Lkotlin/jvm/internal/MutablePropertyReference0;)Lwe5;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;
    .locals 1

    sget-object v0, Lxq8;->a:Lbr8;

    invoke-virtual {v0, p0}, Lbr8;->e(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lkotlin/jvm/internal/MutablePropertyReference2;)Lye5;
    .locals 1

    sget-object v0, Lxq8;->a:Lbr8;

    invoke-virtual {v0, p0}, Lbr8;->f(Lkotlin/jvm/internal/MutablePropertyReference2;)Lye5;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Class;)Lff5;
    .locals 3

    sget-object v0, Lxq8;->a:Lbr8;

    invoke-static {p0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lbr8;->l(Lhe5;Ljava/util/List;Z)Lff5;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lkotlin/jvm/internal/PropertyReference0;)Lbf5;
    .locals 1

    sget-object v0, Lxq8;->a:Lbr8;

    invoke-virtual {v0, p0}, Lbr8;->g(Lkotlin/jvm/internal/PropertyReference0;)Lbf5;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lkotlin/jvm/internal/PropertyReference1;)Lcf5;
    .locals 1

    sget-object v0, Lxq8;->a:Lbr8;

    invoke-virtual {v0, p0}, Lbr8;->h(Lkotlin/jvm/internal/PropertyReference1;)Lcf5;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lkotlin/jvm/internal/PropertyReference2;)Ldf5;
    .locals 1

    sget-object v0, Lxq8;->a:Lbr8;

    invoke-virtual {v0, p0}, Lbr8;->i(Lkotlin/jvm/internal/PropertyReference2;)Ldf5;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lg84;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lxq8;->a:Lbr8;

    invoke-virtual {v0, p0}, Lbr8;->j(Lg84;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lxq8;->a:Lbr8;

    invoke-virtual {v0, p0}, Lbr8;->k(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
