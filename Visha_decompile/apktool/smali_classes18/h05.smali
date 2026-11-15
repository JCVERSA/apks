.class public abstract Lh05;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo54;

.field public static final b:Lxw0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo54;

    const-string v1, "kotlin.jvm.JvmInline"

    invoke-direct {v0, v1}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh05;->a:Lo54;

    invoke-static {v0}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v0

    const-string v1, "topLevel(JVM_INLINE_ANNOTATION_FQ_NAME)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lh05;->b:Lxw0;

    return-void
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lvi8;

    if-eqz v0, :cond_0

    check-cast p0, Lvi8;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->e0()Lti8;

    move-result-object p0

    const-string v0, "correspondingProperty"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lh05;->e(Lxnb;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Lxt1;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lqw0;

    if-eqz v0, :cond_0

    check-cast p0, Lqw0;

    invoke-interface {p0}, Lqw0;->c0()Linb;

    move-result-object p0

    instance-of p0, p0, Lg05;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->c()Lpx0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lh05;->b(Lxt1;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(Lxt1;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lqw0;

    if-eqz v0, :cond_0

    check-cast p0, Lqw0;

    invoke-interface {p0}, Lqw0;->c0()Linb;

    move-result-object p0

    instance-of p0, p0, Ljs6;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final e(Lxnb;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->b0()Lro8;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lknb;->b()Lxt1;

    move-result-object v0

    instance-of v1, v0, Lqw0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lqw0;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->n(Lqw0;)Lg05;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg05;->c()Lby6;

    move-result-object v2

    :cond_1
    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object p0

    invoke-static {v2, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final f(Lxt1;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lh05;->b(Lxt1;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lh05;->d(Lxt1;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final g(Leh5;)Leh5;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->c()Lpx0;

    move-result-object p0

    instance-of v0, p0, Lqw0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lqw0;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->n(Lqw0;)Lg05;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lg05;->d()Ltm9;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lsm9;

    :cond_1
    return-object v1
.end method
