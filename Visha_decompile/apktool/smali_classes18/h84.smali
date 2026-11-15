.class public final Lh84;
.super Lo2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh84$b;,
        Lh84$a;
    }
.end annotation


# static fields
.field public static final n:Lh84$a;

.field public static final o:Lxw0;

.field public static final p:Lxw0;


# instance fields
.field public final g:Lvx9;

.field public final h:Ldv7;

.field public final i:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

.field public final j:I

.field public final k:Lh84$b;

.field public final l:Li84;

.field public final m:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lh84$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh84$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lh84;->n:Lh84$a;

    new-instance v0, Lxw0;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/e;->v:Lo54;

    const-string v2, "Function"

    invoke-static {v2}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lxw0;-><init>(Lo54;Lby6;)V

    sput-object v0, Lh84;->o:Lxw0;

    new-instance v0, Lxw0;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/e;->s:Lo54;

    const-string v2, "KFunction"

    invoke-static {v2}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lxw0;-><init>(Lo54;Lby6;)V

    sput-object v0, Lh84;->p:Lxw0;

    return-void
.end method

.method public constructor <init>(Lvx9;Ldv7;Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;I)V
    .locals 3

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionKind"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->numberedClassName(I)Lby6;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo2;-><init>(Lvx9;Lby6;)V

    iput-object p1, p0, Lh84;->g:Lvx9;

    iput-object p2, p0, Lh84;->h:Ldv7;

    iput-object p3, p0, Lh84;->i:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    iput p4, p0, Lh84;->j:I

    new-instance p2, Lh84$b;

    invoke-direct {p2, p0}, Lh84$b;-><init>(Lh84;)V

    iput-object p2, p0, Lh84;->k:Lh84$b;

    new-instance p2, Li84;

    invoke-direct {p2, p1, p0}, Li84;-><init>(Lvx9;Lh84;)V

    iput-object p2, p0, Lh84;->l:Li84;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Lu15;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p4}, Lu15;-><init>(II)V

    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    move-object p4, p2

    check-cast p4, Lq15;

    invoke-virtual {p4}, Lq15;->nextInt()I

    move-result p4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p0, v0, p4}, Lh84;->F0(Ljava/util/ArrayList;Lh84;Lkotlin/reflect/jvm/internal/impl/types/Variance;Ljava/lang/String;)V

    sget-object p4, Lzfb;->a:Lzfb;

    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const-string p3, "R"

    invoke-static {p1, p0, p2, p3}, Lh84;->F0(Ljava/util/ArrayList;Lh84;Lkotlin/reflect/jvm/internal/impl/types/Variance;Ljava/lang/String;)V

    invoke-static {p1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lh84;->m:Ljava/util/List;

    return-void
.end method

.method public static final F0(Ljava/util/ArrayList;Lh84;Lkotlin/reflect/jvm/internal/impl/types/Variance;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lmd;->u1:Lmd$a;

    invoke-virtual {v0}, Lmd$a;->b()Lmd;

    move-result-object v2

    invoke-static {p3}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p1, Lh84;->g:Lvx9;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Licb;->M0(Lxt1;Lmd;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lby6;ILvx9;)Lhcb;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final synthetic G0(Lh84;)Ldv7;
    .locals 0

    iget-object p0, p0, Lh84;->h:Ldv7;

    return-object p0
.end method

.method public static final synthetic H0()Lxw0;
    .locals 1

    sget-object v0, Lh84;->o:Lxw0;

    return-object v0
.end method

.method public static final synthetic I0()Lxw0;
    .locals 1

    sget-object v0, Lh84;->p:Lxw0;

    return-object v0
.end method

.method public static final synthetic J0(Lh84;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lh84;->m:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic K0(Lh84;)Lvx9;
    .locals 0

    iget-object p0, p0, Lh84;->g:Lvx9;

    return-object p0
.end method


# virtual methods
.method public E0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final L0()I
    .locals 0

    iget p0, p0, Lh84;->j:I

    return p0
.end method

.method public M0()Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public N0()Ljava/util/List;
    .locals 0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public O0()Ldv7;
    .locals 0

    iget-object p0, p0, Lh84;->h:Ldv7;

    return-object p0
.end method

.method public final P0()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;
    .locals 0

    iget-object p0, p0, Lh84;->i:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    return-object p0
.end method

.method public Q0()Ljava/util/List;
    .locals 0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public R0()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;->b:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;

    return-object p0
.end method

.method public S0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Li84;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lh84;->l:Li84;

    return-object p0
.end method

.method public bridge synthetic T()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lh84;->Q0()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public T0()Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic b()Lxt1;
    .locals 0

    invoke-virtual {p0}, Lh84;->O0()Ldv7;

    move-result-object p0

    return-object p0
.end method

.method public c0()Linb;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic d0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    invoke-virtual {p0, p1}, Lh84;->S0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Li84;

    move-result-object p0

    return-object p0
.end method

.method public f0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAnnotations()Lmd;
    .locals 0

    sget-object p0, Lmd;->u1:Lmd$a;

    invoke-virtual {p0}, Lmd$a;->b()Lmd;

    move-result-object p0

    return-object p0
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    return-object p0
.end method

.method public getSource()Lyt9;
    .locals 1

    sget-object p0, Lyt9;->a:Lyt9;

    const-string v0, "NO_SOURCE"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getVisibility()Lc92;
    .locals 1

    sget-object p0, Lb92;->e:Lc92;

    const-string v0, "PUBLIC"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public h0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExternal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0
.end method

.method public j0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public m()Lsbb;
    .locals 0

    iget-object p0, p0, Lh84;->k:Lh84$b;

    return-object p0
.end method

.method public m0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic n()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lh84;->N0()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public bridge synthetic n0()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    invoke-virtual {p0}, Lh84;->R0()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic o0()Lqw0;
    .locals 0

    invoke-virtual {p0}, Lh84;->M0()Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Lqw0;

    return-object p0
.end method

.method public r()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lh84;->m:Ljava/util/List;

    return-object p0
.end method

.method public s()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lo2;->getName()Lby6;

    move-result-object p0

    invoke-virtual {p0}, Lby6;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic w()Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 0

    invoke-virtual {p0}, Lh84;->T0()Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    return-object p0
.end method
