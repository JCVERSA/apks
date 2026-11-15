.class public final Lgj5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le85;

.field public final b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

.field public final c:Lyi5;

.field public final d:Lyi5;

.field public final e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;


# direct methods
.method public constructor <init>(Le85;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;Lyi5;)V
    .locals 1

    const-string v0, "components"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateForDefaultTypeQualifiers"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgj5;->a:Le85;

    iput-object p2, p0, Lgj5;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

    iput-object p3, p0, Lgj5;->c:Lyi5;

    iput-object p3, p0, Lgj5;->d:Lyi5;

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    invoke-direct {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;-><init>(Lgj5;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;)V

    iput-object p1, p0, Lgj5;->e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    return-void
.end method


# virtual methods
.method public final a()Le85;
    .locals 0

    iget-object p0, p0, Lgj5;->a:Le85;

    return-object p0
.end method

.method public final b()Lu85;
    .locals 0

    iget-object p0, p0, Lgj5;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu85;

    return-object p0
.end method

.method public final c()Lyi5;
    .locals 0

    iget-object p0, p0, Lgj5;->c:Lyi5;

    return-object p0
.end method

.method public final d()Lqq6;
    .locals 0

    iget-object p0, p0, Lgj5;->a:Le85;

    invoke-virtual {p0}, Le85;->m()Lqq6;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lvx9;
    .locals 0

    iget-object p0, p0, Lgj5;->a:Le85;

    invoke-virtual {p0}, Le85;->u()Lvx9;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;
    .locals 0

    iget-object p0, p0, Lgj5;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

    return-object p0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;
    .locals 0

    iget-object p0, p0, Lgj5;->e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    return-object p0
.end method
