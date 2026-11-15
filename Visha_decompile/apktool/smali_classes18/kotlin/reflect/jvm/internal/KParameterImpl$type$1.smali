.class final Lkotlin/reflect/jvm/internal/KParameterImpl$type$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lff5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Type;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KParameterImpl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KParameterImpl;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KParameterImpl$type$1;->this$0:Lkotlin/reflect/jvm/internal/KParameterImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KParameterImpl$type$1;->invoke()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/reflect/Type;
    .locals 3

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KParameterImpl$type$1;->this$0:Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/KParameterImpl;->d(Lkotlin/reflect/jvm/internal/KParameterImpl;)Lhw7;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lro8;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KParameterImpl$type$1;->this$0:Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KParameterImpl;->e()Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->A()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v1

    invoke-static {v1}, Lclb;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lro8;

    move-result-object v1

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KParameterImpl$type$1;->this$0:Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KParameterImpl;->e()Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->A()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-ne v1, v2, :cond_1

    .line 6
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KParameterImpl$type$1;->this$0:Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KParameterImpl;->e()Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->A()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lzt1;->b()Lxt1;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lqw0;

    invoke-static {p0}, Lclb;->p(Lqw0;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot determine receiver Java type of inherited declaration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KParameterImpl$type$1;->this$0:Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KParameterImpl;->e()Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->x()Lkotlin/reflect/jvm/internal/calls/a;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/a;->a()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KParameterImpl$type$1;->this$0:Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getIndex()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    :goto_0
    return-object p0
.end method
