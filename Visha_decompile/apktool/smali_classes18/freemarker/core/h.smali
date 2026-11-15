.class public final Lfreemarker/core/h;
.super Lifa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/h$a;
    }
.end annotation


# instance fields
.field public l:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    iput-object p1, p0, Lfreemarker/core/h;->l:Ljava/util/List;

    return-void
.end method

.method public static synthetic l0(Lfreemarker/core/h;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/h;->l:Ljava/util/List;

    return-object p0
.end method

.method private m0(I)V
    .locals 0

    iget-object p0, p0, Lfreemarker/core/h;->l:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 1

    new-instance v0, Lfreemarker/core/h$a;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/h$a;-><init>(Lfreemarker/core/h;Lfreemarker/core/Environment;)V

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->u1(Lfreemarker/core/h$a;)V

    return-void
.end method

.method public J(Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/h;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/h;->l:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lfreemarker/core/h;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lfreemarker/core/h;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/t0;

    invoke-virtual {v2}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#nested"

    return-object p0
.end method

.method public s()I
    .locals 0

    iget-object p0, p0, Lfreemarker/core/h;->l:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    invoke-direct {p0, p1}, Lfreemarker/core/h;->m0(I)V

    sget-object p0, Ljw7;->n:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lfreemarker/core/h;->m0(I)V

    iget-object p0, p0, Lfreemarker/core/h;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
