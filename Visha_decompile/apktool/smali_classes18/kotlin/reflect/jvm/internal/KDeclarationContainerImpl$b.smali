.class public final Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$b;
.super Lel1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->C(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lel1;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Lkotlin/reflect/jvm/internal/impl/descriptors/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lzfb;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$b;->r(Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lzfb;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p0

    return-object p0
.end method

.method public r(Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lzfb;)Lkotlin/reflect/jvm/internal/KCallableImpl;
    .locals 1

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No constructors should appear here: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
