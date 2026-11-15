.class public final Llu7$a;
.super Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu7;->H0(ZZ)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic k:Llu7;


# direct methods
.method public constructor <init>(ZZLlu7;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;Lkotlin/reflect/jvm/internal/impl/types/checker/c;)V
    .locals 7

    iput-object p3, p0, Llu7$a;->k:Llu7;

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;-><init>(ZZZLtcb;Lg4;Lh4;)V

    return-void
.end method


# virtual methods
.method public f(Lgh5;Lgh5;)Z
    .locals 2

    const-string v0, "subType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Leh5;

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_1

    instance-of v0, p2, Leh5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Llu7$a;->k:Llu7;

    invoke-static {p0}, Llu7;->F0(Llu7;)Ls74;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
