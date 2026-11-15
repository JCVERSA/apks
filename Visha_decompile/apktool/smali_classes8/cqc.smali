.class public Lcqc;
.super Lj1;
.source "SourceFile"

# interfaces
.implements Lv0;


# static fields
.field public static g:Leqc;


# instance fields
.field public b:Z

.field public c:I

.field public d:Leqc;

.field public e:[Lwm8;

.field public f:Laq1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lc40;->T:Leqc;

    sput-object v0, Lcqc;->g:Leqc;

    return-void
.end method

.method public constructor <init>(Leqc;Lcqc;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lcqc;->d:Leqc;

    iget-object p1, p2, Lcqc;->e:[Lwm8;

    iput-object p1, p0, Lcqc;->e:[Lwm8;

    iget-object p1, p2, Lcqc;->f:Laq1;

    iput-object p1, p0, Lcqc;->f:Laq1;

    return-void
.end method

.method public constructor <init>(Leqc;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-interface {p1, p2}, Leqc;->b(Ljava/lang/String;)[Lwm8;

    move-result-object p2

    invoke-direct {p0, p2}, Lcqc;-><init>([Lwm8;)V

    iput-object p1, p0, Lcqc;->d:Leqc;

    return-void
.end method

.method public constructor <init>(Leqc;Ls1;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p2}, Ls1;->size()I

    move-result v0

    iput-object p1, p0, Lcqc;->d:Leqc;

    new-array p1, v0, [Lwm8;

    iput-object p1, p0, Lcqc;->e:[Lwm8;

    const/4 p1, 0x1

    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Ls1;->A(I)Lx0;

    move-result-object v4

    invoke-static {v4}, Lwm8;->n(Ljava/lang/Object;)Lwm8;

    move-result-object v5

    if-ne v5, v4, :cond_0

    move v4, p1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    and-int/2addr v3, v4

    iget-object v4, p0, Lcqc;->e:[Lwm8;

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {p2}, Laq1;->H(Ls1;)Laq1;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcqc;->f:Laq1;

    goto :goto_3

    :cond_2
    new-instance p1, Laq1;

    iget-object p2, p0, Lcqc;->e:[Lwm8;

    invoke-direct {p1, p2}, Laq1;-><init>([Lx0;)V

    goto :goto_2

    :goto_3
    return-void
.end method

.method public constructor <init>(Leqc;[Lwm8;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lcqc;->d:Leqc;

    invoke-virtual {p2}, [Lwm8;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lwm8;

    iput-object p1, p0, Lcqc;->e:[Lwm8;

    new-instance p1, Laq1;

    iget-object p2, p0, Lcqc;->e:[Lwm8;

    invoke-direct {p1, p2}, Laq1;-><init>([Lx0;)V

    iput-object p1, p0, Lcqc;->f:Laq1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6
    sget-object v0, Lcqc;->g:Leqc;

    invoke-direct {p0, v0, p1}, Lcqc;-><init>(Leqc;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 1

    .line 1
    sget-object v0, Lcqc;->g:Leqc;

    invoke-direct {p0, v0, p1}, Lcqc;-><init>(Leqc;Ls1;)V

    return-void
.end method

.method public constructor <init>([Lwm8;)V
    .locals 1

    .line 7
    sget-object v0, Lcqc;->g:Leqc;

    invoke-direct {p0, v0, p1}, Lcqc;-><init>(Leqc;[Lwm8;)V

    return-void
.end method

.method public static m(Ly1;Z)Lcqc;
    .locals 0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ls1;->y(Ly1;Z)Ls1;

    move-result-object p0

    invoke-static {p0}, Lcqc;->o(Ljava/lang/Object;)Lcqc;

    move-result-object p0

    return-object p0
.end method

.method public static n(Leqc;Ljava/lang/Object;)Lcqc;
    .locals 1

    instance-of v0, p1, Lcqc;

    if-eqz v0, :cond_0

    new-instance v0, Lcqc;

    check-cast p1, Lcqc;

    invoke-direct {v0, p0, p1}, Lcqc;-><init>(Leqc;Lcqc;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcqc;

    invoke-static {p1}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcqc;-><init>(Leqc;Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(Ljava/lang/Object;)Lcqc;
    .locals 1

    instance-of v0, p0, Lcqc;

    if-eqz v0, :cond_0

    check-cast p0, Lcqc;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcqc;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lcqc;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcqc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, p1, Ls1;

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lx0;

    invoke-interface {v1}, Lx0;->j()Lp1;

    move-result-object v1

    invoke-virtual {p0}, Lcqc;->j()Lp1;

    move-result-object v3

    invoke-virtual {v3, v1}, Lp1;->s(Lp1;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcqc;->d:Leqc;

    invoke-static {p1}, Lcqc;->o(Ljava/lang/Object;)Lcqc;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Leqc;->f(Lcqc;Lcqc;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcqc;->b:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcqc;->c:I

    return p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcqc;->b:Z

    iget-object v0, p0, Lcqc;->d:Leqc;

    invoke-interface {v0, p0}, Leqc;->c(Lcqc;)I

    move-result v0

    iput v0, p0, Lcqc;->c:I

    return v0
.end method

.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Lcqc;->f:Laq1;

    return-object p0
.end method

.method public p()[Lwm8;
    .locals 0

    iget-object p0, p0, Lcqc;->e:[Lwm8;

    invoke-virtual {p0}, [Lwm8;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lwm8;

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcqc;->e:[Lwm8;

    array-length p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcqc;->d:Leqc;

    invoke-interface {v0, p0}, Leqc;->e(Lcqc;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
