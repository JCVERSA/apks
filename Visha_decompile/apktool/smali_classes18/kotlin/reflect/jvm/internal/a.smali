.class public final Lkotlin/reflect/jvm/internal/a;
.super Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;
.source "SourceFile"


# static fields
.field public static final e:Lkotlin/reflect/jvm/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/a;->e:Lkotlin/reflect/jvm/internal/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Lby6;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/a;->L()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public B(I)Lti8;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public E(Lby6;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/a;->L()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public final L()Ljava/lang/Void;
    .locals 1

    new-instance p0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    const-string v0, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/a;->L()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public z()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/a;->L()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method
