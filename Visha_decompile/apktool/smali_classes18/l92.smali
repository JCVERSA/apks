.class public Ll92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmd;


# static fields
.field public static final synthetic c:[Laf5;


# instance fields
.field public final b:Lx17;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Ll92;

    invoke-static {v1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v1

    const-string v2, "annotations"

    const-string v3, "getAnnotations()Ljava/util/List;"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lke5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lxq8;->j(Lkotlin/jvm/internal/PropertyReference1;)Lcf5;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Laf5;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Ll92;->c:[Laf5;

    return-void
.end method

.method public constructor <init>(Lvx9;Lc74;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compute"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, Lvx9;->c(Lc74;)Lx17;

    move-result-object p1

    iput-object p1, p0, Ll92;->b:Lx17;

    return-void
.end method

.method private final b()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Ll92;->b:Lx17;

    sget-object v1, Ll92;->c:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, p0, v1}, Lux9;->a(Lx17;Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Lo54;)Lgd;
    .locals 0

    invoke-static {p0, p1}, Lmd$b;->a(Lmd;Lo54;)Lgd;

    move-result-object p0

    return-object p0
.end method

.method public h(Lo54;)Z
    .locals 0

    invoke-static {p0, p1}, Lmd$b;->b(Lmd;Lo54;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-direct {p0}, Ll92;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0}, Ll92;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
