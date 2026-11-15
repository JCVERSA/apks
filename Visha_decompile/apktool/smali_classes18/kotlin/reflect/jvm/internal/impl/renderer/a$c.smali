.class public final Lkotlin/reflect/jvm/internal/impl/renderer/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/renderer/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/renderer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/renderer/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/renderer/a$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/renderer/a$c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/a$c;->a:Lkotlin/reflect/jvm/internal/impl/renderer/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpx0;Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;)Ljava/lang/String;
    .locals 1

    const-string v0, "classifier"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/a$c;->b(Lpx0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lpx0;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v0

    const-string v1, "descriptor.name"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lns8;->b(Lby6;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lhcb;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lzt1;->b()Lxt1;

    move-result-object p1

    const-string v1, "descriptor.containingDeclaration"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/a$c;->c(Lxt1;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, ""

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final c(Lxt1;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lqw0;

    if-eqz v0, :cond_0

    check-cast p1, Lpx0;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/a$c;->b(Lpx0;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Ldv7;

    if-eqz p0, :cond_1

    check-cast p1, Ldv7;

    invoke-interface {p1}, Ldv7;->d()Lo54;

    move-result-object p0

    invoke-virtual {p0}, Lo54;->j()Lp54;

    move-result-object p0

    const-string p1, "descriptor.fqName.toUnsafe()"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lns8;->a(Lp54;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
