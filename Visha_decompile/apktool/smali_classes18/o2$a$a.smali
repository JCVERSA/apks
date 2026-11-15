.class public Lo2$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo2$a;->a()Lsm9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo2$a;


# direct methods
.method public constructor <init>(Lo2$a;)V
    .locals 0

    iput-object p1, p0, Lo2$a$a;->b:Lo2$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lsm9;
    .locals 2

    iget-object v0, p0, Lo2$a$a;->b:Lo2$a;

    iget-object v0, v0, Lo2$a;->b:Lo2;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->f(Lxt1;)Lpx0;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lo2$a$a;->b:Lo2$a;

    iget-object p0, p0, Lo2$a;->b:Lo2;

    iget-object p0, p0, Lo2;->d:Lx17;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsm9;

    return-object p0

    :cond_0
    instance-of v1, v0, Lebb;

    if-eqz v1, :cond_1

    move-object p0, v0

    check-cast p0, Lebb;

    invoke-interface {v0}, Lpx0;->m()Lsbb;

    move-result-object p1

    invoke-interface {p1}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/n;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->b(Lebb;Ljava/util/List;)Lsm9;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, v0, Ljq6;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lpx0;->m()Lsbb;

    move-result-object v1

    invoke-interface {v1, p1}, Lsbb;->a(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lsbb;

    move-result-object v1

    check-cast v0, Ljq6;

    invoke-virtual {v0, p1}, Ljq6;->d0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/n;->v(Lsbb;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Le74;)Lsm9;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {v0}, Lpx0;->q()Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    invoke-virtual {p0, p1}, Lo2$a$a;->a(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lsm9;

    move-result-object p0

    return-object p0
.end method
