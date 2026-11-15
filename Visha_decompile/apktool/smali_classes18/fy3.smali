.class public abstract Lfy3;
.super Lmgb;
.source "SourceFile"

# interfaces
.implements Liy3;


# instance fields
.field public final c:Lsm9;

.field public final d:Lsm9;


# direct methods
.method public constructor <init>(Lsm9;Lsm9;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmgb;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lfy3;->c:Lsm9;

    iput-object p2, p0, Lfy3;->d:Lsm9;

    return-void
.end method


# virtual methods
.method public G0()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lfy3;->P0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public H0()Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 0

    invoke-virtual {p0}, Lfy3;->P0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    return-object p0
.end method

.method public I0()Lsbb;
    .locals 0

    invoke-virtual {p0}, Lfy3;->P0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    return-object p0
.end method

.method public J0()Z
    .locals 0

    invoke-virtual {p0}, Lfy3;->P0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->J0()Z

    move-result p0

    return p0
.end method

.method public abstract P0()Lsm9;
.end method

.method public final Q0()Lsm9;
    .locals 0

    iget-object p0, p0, Lfy3;->c:Lsm9;

    return-object p0
.end method

.method public final R0()Lsm9;
    .locals 0

    iget-object p0, p0, Lfy3;->d:Lsm9;

    return-object p0
.end method

.method public abstract S0(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;Lkotlin/reflect/jvm/internal/impl/renderer/b;)Ljava/lang/String;
.end method

.method public p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    invoke-virtual {p0}, Lfy3;->P0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->j:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
