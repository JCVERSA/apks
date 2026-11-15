.class public final Lfreemarker/core/e1;
.super Lifa;
.source "SourceFile"

# interfaces
.implements Lzfa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/e1$a;
    }
.end annotation


# static fields
.field public static final q:Lfreemarker/core/e1;


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:[Ljava/lang/String;

.field public final n:Ljava/util/Map;

.field public final o:Ljava/lang/String;

.field public final p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Lfreemarker/core/e1;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v5, 0x0

    sget-object v6, Lxga;->o:Lxga;

    const-string v1, ".pass"

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/e1;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLifa;)V

    sput-object v7, Lfreemarker/core/e1;->q:Lfreemarker/core/e1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLifa;)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    iput-object p1, p0, Lfreemarker/core/e1;->l:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lfreemarker/core/e1;->m:[Ljava/lang/String;

    iput-object p3, p0, Lfreemarker/core/e1;->n:Ljava/util/Map;

    iput-boolean p5, p0, Lfreemarker/core/e1;->p:Z

    iput-object p4, p0, Lfreemarker/core/e1;->o:Ljava/lang/String;

    invoke-virtual {p0, p6}, Lifa;->j0(Lifa;)V

    return-void
.end method

.method public static synthetic l0(Lfreemarker/core/e1;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/e1;->m:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic m0(Lfreemarker/core/e1;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/e1;->n:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic n0(Lfreemarker/core/e1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/e1;->l:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 0

    invoke-virtual {p1, p0}, Lfreemarker/core/Environment;->c2(Lfreemarker/core/e1;)V

    return-void
.end method

.method public J(Z)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/e1;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lfreemarker/core/e1;->l:Ljava/lang/String;

    invoke-static {v2}, Ld0d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lfreemarker/core/e1;->p:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lfreemarker/core/e1;->m:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    const-string v4, ", "

    if-ge v3, v2, :cond_6

    iget-boolean v5, p0, Lfreemarker/core/e1;->p:Z

    if-eqz v5, :cond_2

    if-eqz v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    iget-object v4, p0, Lfreemarker/core/e1;->m:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Ld0d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lfreemarker/core/e1;->n:Ljava/util/Map;

    if-eqz v5, :cond_5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lfreemarker/core/e1;->n:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/t0;

    iget-boolean v5, p0, Lfreemarker/core/e1;->p:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-static {v0, v4}, Lfreemarker/core/f1;->a(Ljava/lang/StringBuffer;Lfreemarker/core/t0;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lfreemarker/core/e1;->o:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lfreemarker/core/e1;->p:Z

    if-eqz v3, :cond_7

    if-eqz v2, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    :goto_3
    iget-object v1, p0, Lfreemarker/core/e1;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    iget-boolean v1, p0, Lfreemarker/core/e1;->p:Z

    if-eqz v1, :cond_a

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a
    if-eqz p1, :cond_c

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lifa;->S()Lifa;

    move-result-object v1

    invoke-virtual {v1}, Lifa;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lfreemarker/core/e1;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o0()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/e1;->m:[Ljava/lang/String;

    return-object p0
.end method

.method public p0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/e1;->o:Ljava/lang/String;

    return-object p0
.end method

.method public q0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/e1;->l:Ljava/lang/String;

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lfreemarker/core/e1;->p:Z

    if-eqz p0, :cond_0

    const-string p0, "#function"

    goto :goto_0

    :cond_0
    const-string p0, "#macro"

    :goto_0
    return-object p0
.end method

.method public r0(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lfreemarker/core/e1;->n:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public s()I
    .locals 0

    iget-object p0, p0, Lfreemarker/core/e1;->m:[Ljava/lang/String;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public s0()Z
    .locals 0

    iget-boolean p0, p0, Lfreemarker/core/e1;->p:Z

    return p0
.end method

.method public t(I)Ljw7;
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Ljw7;->h:Ljw7;

    return-object p0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/e1;->m:[Ljava/lang/String;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, p0, 0x1

    if-ge p1, v0, :cond_2

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    sget-object p0, Ljw7;->z:Ljw7;

    return-object p0

    :cond_1
    sget-object p0, Ljw7;->A:Ljw7;

    return-object p0

    :cond_2
    if-ne p1, v0, :cond_3

    sget-object p0, Ljw7;->B:Ljw7;

    return-object p0

    :cond_3
    add-int/lit8 p0, p0, 0x2

    if-ne p1, p0, :cond_4

    sget-object p0, Ljw7;->q:Ljw7;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lfreemarker/core/e1;->l:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/e1;->m:[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v1, 0x1

    if-ge p1, v2, :cond_2

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/e1;->n:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne p1, v2, :cond_3

    iget-object p0, p0, Lfreemarker/core/e1;->o:Ljava/lang/String;

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x2

    if-ne p1, v1, :cond_4

    new-instance p1, Ljava/lang/Integer;

    iget-boolean p0, p0, Lfreemarker/core/e1;->p:Z

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
