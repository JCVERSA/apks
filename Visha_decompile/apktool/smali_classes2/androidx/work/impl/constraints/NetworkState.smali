.class public Landroidx/work/impl/constraints/NetworkState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsConnected:Z

.field private mIsMetered:Z

.field private mIsNotRoaming:Z

.field private mIsValidated:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    iput-boolean p2, p0, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    iput-boolean p3, p0, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    iput-boolean p4, p0, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/work/impl/constraints/NetworkState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/work/impl/constraints/NetworkState;

    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    iget-boolean v3, p1, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    iget-boolean v3, p1, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    iget-boolean v3, p1, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    iget-boolean p1, p1, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x10

    :cond_0
    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    if-eqz v1, :cond_1

    add-int/lit16 v0, v0, 0x100

    :cond_1
    iget-boolean p0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    if-eqz p0, :cond_2

    add-int/lit16 v0, v0, 0x1000

    :cond_2
    return v0
.end method

.method public isConnected()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    return p0
.end method

.method public isMetered()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    return p0
.end method

.method public isNotRoaming()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    return p0
.end method

.method public isValidated()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean p0, p0, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
