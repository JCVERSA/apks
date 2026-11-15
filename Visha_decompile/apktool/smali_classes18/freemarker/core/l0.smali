.class public Lfreemarker/core/l0;
.super Lfreemarker/core/t0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/l0$a;
    }
.end annotation


# static fields
.field public static final j:Lbfa;

.field public static final k:Lzfa;


# instance fields
.field public final h:Lfreemarker/core/t0;

.field public final i:Lfreemarker/core/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lfreemarker/template/SimpleCollection;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lfreemarker/core/l0;->j:Lbfa;

    new-instance v0, Lfreemarker/core/l0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/core/l0$a;-><init>(Lk52;)V

    sput-object v0, Lfreemarker/core/l0;->k:Lzfa;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    iput-object p1, p0, Lfreemarker/core/l0;->h:Lfreemarker/core/t0;

    iput-object p2, p0, Lfreemarker/core/l0;->i:Lfreemarker/core/t0;

    return-void
.end method

.method public static synthetic X()Lbfa;
    .locals 1

    sget-object v0, Lfreemarker/core/l0;->j:Lbfa;

    return-object v0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/l0;->h:Lfreemarker/core/t0;

    instance-of v1, v0, Lfreemarker/core/m1;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->N1(Z)Z

    move-result v0

    :try_start_0
    iget-object v1, p0, Lfreemarker/core/l0;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v1
    :try_end_0
    .catch Lfreemarker/core/InvalidReferenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->N1(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->N1(Z)Z

    throw p0

    :catch_0
    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->N1(Z)Z

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lfreemarker/core/l0;->i:Lfreemarker/core/t0;

    if-nez p0, :cond_2

    sget-object p0, Lfreemarker/core/l0;->k:Lzfa;

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 2

    new-instance v0, Lfreemarker/core/l0;

    iget-object v1, p0, Lfreemarker/core/l0;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/l0;->i:Lfreemarker/core/t0;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, v1, p0}, Lfreemarker/core/l0;-><init>(Lfreemarker/core/t0;Lfreemarker/core/t0;)V

    return-object v0
.end method

.method public T()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lfreemarker/core/l0;->i:Lfreemarker/core/t0;

    const/16 v1, 0x21

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p0, p0, Lfreemarker/core/l0;->h:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lfreemarker/core/l0;->h:Lfreemarker/core/t0;

    invoke-virtual {v2}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/l0;->i:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "...!..."

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    invoke-static {p1}, Ljw7;->a(I)Ljw7;

    move-result-object p0

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/l0;->i:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/l0;->h:Lfreemarker/core/t0;

    return-object p0
.end method
