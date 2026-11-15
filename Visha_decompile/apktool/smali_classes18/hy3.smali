.class public final Lhy3;
.super Lfy3;
.source "SourceFile"

# interfaces
.implements Lzo1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhy3$a;
    }
.end annotation


# static fields
.field public static final f:Lhy3$a;

.field public static g:Z


# instance fields
.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhy3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhy3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lhy3;->f:Lhy3$a;

    return-void
.end method

.method public constructor <init>(Lsm9;Lsm9;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lfy3;-><init>(Lsm9;Lsm9;)V

    return-void
.end method


# virtual methods
.method public C0()Z
    .locals 1

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v0

    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-interface {v0}, Lsbb;->c()Lpx0;

    move-result-object v0

    instance-of v0, v0, Lhcb;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v0

    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-static {v0, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic K0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Leh5;
    .locals 0

    invoke-virtual {p0, p1}, Lhy3;->T0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lfy3;

    move-result-object p0

    return-object p0
.end method

.method public M0(Z)Lmgb;
    .locals 1

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsm9;->P0(Z)Lsm9;

    move-result-object v0

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsm9;->P0(Z)Lsm9;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lhy3;->T0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lfy3;

    move-result-object p0

    return-object p0
.end method

.method public O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;
    .locals 1

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsm9;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object v0

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsm9;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object p0

    return-object p0
.end method

.method public P0()Lsm9;
    .locals 0

    invoke-virtual {p0}, Lhy3;->U0()V

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public S0(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;Lkotlin/reflect/jvm/internal/impl/renderer/b;)Ljava/lang/String;
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/renderer/b;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->i(Leh5;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->v(Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/builtins/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public T0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lfy3;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lhy3;

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lsm9;

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lsm9;

    invoke-direct {v0, v1, p0}, Lhy3;-><init>(Lsm9;Lsm9;)V

    return-object v0
.end method

.method public final U0()V
    .locals 2

    sget-boolean v0, Lhy3;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lhy3;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhy3;->e:Z

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v0

    invoke-static {v0}, Lky3;->b(Leh5;)Z

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object v0

    invoke-static {v0}, Lky3;->b(Leh5;)Z

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v0

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/b;

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v1

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->c(Leh5;Leh5;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d0(Leh5;)Leh5;
    .locals 1

    const-string p0, "replacement"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Leh5;->L0()Lmgb;

    move-result-object p0

    instance-of p1, p0, Lfy3;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lsm9;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Lsm9;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsm9;->P0(Z)Lsm9;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object p1

    :goto_0
    invoke-static {p1, p0}, Lddb;->b(Lmgb;Leh5;)Lmgb;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
