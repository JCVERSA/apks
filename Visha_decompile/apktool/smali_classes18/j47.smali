.class public final Lj47;
.super Lm45;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj47$a;
    }
.end annotation


# instance fields
.field public final l:Lfreemarker/core/t0;

.field public final m:Z

.field public final n:I

.field public final o:I

.field public volatile p:Lj47$a;


# direct methods
.method public constructor <init>(Lfreemarker/core/t0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm45;-><init>()V

    .line 2
    iput-object p1, p0, Lj47;->l:Lfreemarker/core/t0;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lj47;->m:Z

    .line 4
    iput p1, p0, Lj47;->n:I

    .line 5
    iput p1, p0, Lj47;->o:I

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;II)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lm45;-><init>()V

    .line 7
    iput-object p1, p0, Lj47;->l:Lfreemarker/core/t0;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lj47;->m:Z

    .line 9
    iput p2, p0, Lj47;->n:I

    .line 10
    iput p3, p0, Lj47;->o:I

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 4

    iget-object v0, p0, Lj47;->l:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->R(Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object v0

    iget-object v1, p0, Lj47;->p:Lj47$a;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lj47$a;->b:Ljava/util/Locale;

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lj47;->p:Lj47$a;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lj47$a;->b:Ljava/util/Locale;

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iget-boolean v2, p0, Lj47;->m:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget v2, p0, Lj47;->n:I

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    iget v2, p0, Lj47;->o:I

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    :goto_1
    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    new-instance v2, Lj47$a;

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lj47$a;-><init>(Ljava/text/NumberFormat;Ljava/util/Locale;)V

    iput-object v2, p0, Lj47;->p:Lj47$a;

    iget-object v1, p0, Lj47;->p:Lj47$a;

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-virtual {p1}, Lfreemarker/core/Environment;->a1()Ljava/io/Writer;

    move-result-object p0

    iget-object p1, v1, Lj47$a;->a:Ljava/text/NumberFormat;

    invoke-virtual {p1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public X()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public Y()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public l0(ZZ)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "#{"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lj47;->l:Lfreemarker/core/t0;

    invoke-virtual {v0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    const/16 p2, 0x22

    invoke-static {v0, p2}, Ln0a;->b(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean p2, p0, Lj47;->m:Z

    if-eqz p2, :cond_1

    const-string p2, " ; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "m"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p0, Lj47;->n:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, "M"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lj47;->o:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    const-string p0, "}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#{...}"

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    sget-object p0, Ljw7;->H:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Ljw7;->G:Ljw7;

    return-object p0

    :cond_2
    sget-object p0, Ljw7;->E:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/Integer;

    iget p0, p0, Lj47;->o:I

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/Integer;

    iget p0, p0, Lj47;->n:I

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_2
    iget-object p0, p0, Lj47;->l:Lfreemarker/core/t0;

    return-object p0
.end method
