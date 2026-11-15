.class public abstract Leh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd;
.implements Lgh5;


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leh5;-><init>()V

    return-void
.end method


# virtual methods
.method public final F0()I
    .locals 2

    invoke-static {p0}, Lfh5;->a(Leh5;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Leh5;->J0()Z

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public abstract G0()Ljava/util/List;
.end method

.method public abstract H0()Lkotlin/reflect/jvm/internal/impl/types/j;
.end method

.method public abstract I0()Lsbb;
.end method

.method public abstract J0()Z
.end method

.method public abstract K0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Leh5;
.end method

.method public abstract L0()Lmgb;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Leh5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Leh5;->J0()Z

    move-result v1

    check-cast p1, Leh5;

    invoke-virtual {p1}, Leh5;->J0()Z

    move-result v3

    if-ne v1, v3, :cond_2

    sget-object v1, Lgz9;->a:Lgz9;

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    invoke-virtual {p1}, Leh5;->L0()Lmgb;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lgz9;->a(Lmgb;Lmgb;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAnnotations()Lmd;
    .locals 0

    invoke-virtual {p0}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/b;->a(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmd;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Leh5;->b:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Leh5;->F0()I

    move-result v0

    iput v0, p0, Leh5;->b:I

    return v0
.end method

.method public abstract p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end method
