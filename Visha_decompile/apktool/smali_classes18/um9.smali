.class public final Lum9;
.super Lc82;
.source "SourceFile"


# instance fields
.field public final d:Lkotlin/reflect/jvm/internal/impl/types/j;


# direct methods
.method public constructor <init>(Lsm9;Lkotlin/reflect/jvm/internal/impl/types/j;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lc82;-><init>(Lsm9;)V

    iput-object p2, p0, Lum9;->d:Lkotlin/reflect/jvm/internal/impl/types/j;

    return-void
.end method


# virtual methods
.method public H0()Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 0

    iget-object p0, p0, Lum9;->d:Lkotlin/reflect/jvm/internal/impl/types/j;

    return-object p0
.end method

.method public bridge synthetic T0(Lsm9;)Lb82;
    .locals 0

    invoke-virtual {p0, p1}, Lum9;->U0(Lsm9;)Lum9;

    move-result-object p0

    return-object p0
.end method

.method public U0(Lsm9;)Lum9;
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lum9;

    invoke-virtual {p0}, Lum9;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lum9;-><init>(Lsm9;Lkotlin/reflect/jvm/internal/impl/types/j;)V

    return-object v0
.end method
