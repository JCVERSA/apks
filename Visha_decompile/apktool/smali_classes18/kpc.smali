.class public abstract Lkpc;
.super Leh5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Leh5;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public G0()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lkpc;->M0()Leh5;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public H0()Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 0

    invoke-virtual {p0}, Lkpc;->M0()Leh5;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    return-object p0
.end method

.method public I0()Lsbb;
    .locals 0

    invoke-virtual {p0}, Lkpc;->M0()Leh5;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    return-object p0
.end method

.method public J0()Z
    .locals 0

    invoke-virtual {p0}, Lkpc;->M0()Leh5;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->J0()Z

    move-result p0

    return p0
.end method

.method public final L0()Lmgb;
    .locals 1

    invoke-virtual {p0}, Lkpc;->M0()Leh5;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lkpc;

    if-eqz v0, :cond_0

    check-cast p0, Lkpc;

    invoke-virtual {p0}, Lkpc;->M0()Leh5;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lmgb;

    return-object p0
.end method

.method public abstract M0()Leh5;
.end method

.method public abstract N0()Z
.end method

.method public p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    invoke-virtual {p0}, Lkpc;->M0()Leh5;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkpc;->N0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkpc;->M0()Leh5;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "<Not computed yet>"

    :goto_0
    return-object p0
.end method
