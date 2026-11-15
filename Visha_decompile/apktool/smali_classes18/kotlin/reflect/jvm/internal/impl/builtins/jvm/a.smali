.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a;
.super Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a$a;
    }
.end annotation


# static fields
.field public static final e:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a$a;

.field public static final f:Lby6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a;->e:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a$a;

    const-string v0, "clone"

    invoke-static {v0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v0

    const-string v1, "identifier(\"clone\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a;->f:Lby6;

    return-void
.end method

.method public constructor <init>(Lvx9;Lqw0;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingClass"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope;-><init>(Lvx9;Lqw0;)V

    return-void
.end method

.method public static final synthetic m()Lby6;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a;->f:Lby6;

    return-object v0
.end method


# virtual methods
.method public i()Ljava/util/List;
    .locals 14

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope;->l()Lqw0;

    move-result-object v0

    sget-object v1, Lmd;->u1:Lmd$a;

    invoke-virtual {v1}, Lmd$a;->b()Lmd;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a;->f:Lby6;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    sget-object v4, Lyt9;->a:Lyt9;

    invoke-static {v0, v1, v2, v3, v4}, Lbm9;->g1(Lxt1;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)Lbm9;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope;->l()Lqw0;

    move-result-object v1

    invoke-interface {v1}, Lqw0;->R()Lro8;

    move-result-object v7

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/GivenFunctionsMemberScope;->l()Lqw0;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->j(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->i()Lsm9;

    move-result-object v11

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v13, Lb92;->c:Lc92;

    const/4 v6, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v13}, Lbm9;->i1(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;)Lbm9;

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
