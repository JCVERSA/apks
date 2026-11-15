.class public final Lg72;
.super Lb82;
.source "SourceFile"

# interfaces
.implements Lzo1;
.implements Lh72;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg72$a;
    }
.end annotation


# static fields
.field public static final e:Lg72$a;


# instance fields
.field public final c:Lsm9;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg72$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg72$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lg72;->e:Lg72$a;

    return-void
.end method

.method public constructor <init>(Lsm9;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lb82;-><init>()V

    .line 3
    iput-object p1, p0, Lg72;->c:Lsm9;

    .line 4
    iput-boolean p2, p0, Lg72;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lsm9;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lg72;-><init>(Lsm9;Z)V

    return-void
.end method


# virtual methods
.method public C0()Z
    .locals 1

    invoke-virtual {p0}, Lg72;->R0()Lsm9;

    move-result-object v0

    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    invoke-virtual {p0}, Lg72;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->c()Lpx0;

    move-result-object p0

    instance-of p0, p0, Lhcb;

    return p0
.end method

.method public J0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic M0(Z)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lg72;->P0(Z)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lg72;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public P0(Z)Lsm9;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg72;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsm9;->P0(Z)Lsm9;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;
    .locals 2

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg72;

    invoke-virtual {p0}, Lg72;->R0()Lsm9;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsm9;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p1

    iget-boolean p0, p0, Lg72;->d:Z

    invoke-direct {v0, p1, p0}, Lg72;-><init>(Lsm9;Z)V

    return-object v0
.end method

.method public R0()Lsm9;
    .locals 0

    iget-object p0, p0, Lg72;->c:Lsm9;

    return-object p0
.end method

.method public bridge synthetic T0(Lsm9;)Lb82;
    .locals 0

    invoke-virtual {p0, p1}, Lg72;->V0(Lsm9;)Lg72;

    move-result-object p0

    return-object p0
.end method

.method public final U0()Lsm9;
    .locals 0

    iget-object p0, p0, Lg72;->c:Lsm9;

    return-object p0
.end method

.method public V0(Lsm9;)Lg72;
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg72;

    iget-boolean p0, p0, Lg72;->d:Z

    invoke-direct {v0, p1, p0}, Lg72;-><init>(Lsm9;Z)V

    return-object v0
.end method

.method public d0(Leh5;)Leh5;
    .locals 1

    const-string v0, "replacement"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Leh5;->L0()Lmgb;

    move-result-object p1

    iget-boolean p0, p0, Lg72;->d:Z

    invoke-static {p1, p0}, Ltu9;->d(Lmgb;Z)Lmgb;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg72;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " & Any"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
