.class public final Lfreemarker/core/e;
.super Lifa;
.source "SourceFile"


# static fields
.field public static final q:Ljava/lang/Number;


# instance fields
.field public final l:I

.field public final m:Ljava/lang/String;

.field public final n:I

.field public final o:Lfreemarker/core/t0;

.field public p:Lfreemarker/core/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lfreemarker/core/e;->q:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILfreemarker/core/t0;I)V
    .locals 0

    invoke-direct {p0}, Lifa;-><init>()V

    iput p4, p0, Lfreemarker/core/e;->l:I

    iput-object p1, p0, Lfreemarker/core/e;->m:Ljava/lang/String;

    const/16 p1, 0x61

    if-ne p2, p1, :cond_0

    const/high16 p1, 0x10000

    iput p1, p0, Lfreemarker/core/e;->n:I

    goto :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    new-instance p0, Lfreemarker/core/BugException;

    invoke-direct {p0}, Lfreemarker/core/BugException;-><init>()V

    throw p0

    :pswitch_0
    const p1, 0x10003

    iput p1, p0, Lfreemarker/core/e;->n:I

    goto :goto_0

    :pswitch_1
    const p1, 0x10002

    iput p1, p0, Lfreemarker/core/e;->n:I

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    iput p1, p0, Lfreemarker/core/e;->n:I

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    iput p1, p0, Lfreemarker/core/e;->n:I

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x1

    iput p1, p0, Lfreemarker/core/e;->n:I

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x0

    iput p1, p0, Lfreemarker/core/e;->n:I

    goto :goto_0

    :pswitch_6
    const p1, 0x10001

    iput p1, p0, Lfreemarker/core/e;->n:I

    :goto_0
    iput-object p3, p0, Lfreemarker/core/e;->o:Lfreemarker/core/t0;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l0(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "#local"

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const-string p0, "#global"

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "#assign"

    return-object p0

    :cond_2
    const-string p0, "#{unknown_assignment_type}"

    return-object p0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 7

    iget-object v0, p0, Lfreemarker/core/e;->p:Lfreemarker/core/t0;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget v0, p0, Lfreemarker/core/e;->l:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lfreemarker/core/Environment;->J0()Lfreemarker/core/Environment$Namespace;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p1, Lfreemarker/core/BugException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unexpected scope type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lfreemarker/core/e;->l:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lfreemarker/core/Environment;->A0()Lfreemarker/core/Environment$Namespace;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    :try_start_0
    check-cast v0, Lfreemarker/core/Environment$Namespace;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_12

    :goto_0
    iget v2, p0, Lfreemarker/core/e;->n:I

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_5

    iget-object v1, p0, Lfreemarker/core/e;->o:Lfreemarker/core/t0;

    invoke-virtual {v1, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->J()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lmga;->Y4:Lzfa;

    goto/16 :goto_4

    :cond_4
    iget-object p0, p0, Lfreemarker/core/e;->o:Lfreemarker/core/t0;

    invoke-static {p0, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/t0;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    throw p0

    :cond_5
    if-nez v0, :cond_6

    iget-object v2, p0, Lfreemarker/core/e;->m:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lfreemarker/core/Environment;->R0(Ljava/lang/String;)Lzfa;

    move-result-object v2

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lfreemarker/core/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object v2

    :goto_1
    iget v3, p0, Lfreemarker/core/e;->n:I

    const v4, 0x10001

    if-ne v3, v4, :cond_b

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->J()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v2, Lmga;->Y4:Lzfa;

    :cond_7
    move-object v4, v2

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lfreemarker/core/e;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lfreemarker/core/e;->m0()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    throw p0

    :goto_2
    iget-object v1, p0, Lfreemarker/core/e;->o:Lfreemarker/core/t0;

    invoke-virtual {v1, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->J()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lmga;->Y4:Lzfa;

    :cond_9
    move-object v6, v1

    goto :goto_3

    :cond_a
    iget-object p0, p0, Lfreemarker/core/e;->o:Lfreemarker/core/t0;

    invoke-static {p0, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/t0;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    throw p0

    :goto_3
    iget-object v2, p0, Lfreemarker/core/e;->p:Lfreemarker/core/t0;

    const/4 v3, 0x0

    iget-object v5, p0, Lfreemarker/core/e;->o:Lfreemarker/core/t0;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lfreemarker/core/a;->X(Lfreemarker/core/Environment;Lfreemarker/core/t1;Lfreemarker/core/t0;Lzfa;Lfreemarker/core/t0;Lzfa;)Lzfa;

    move-result-object v1

    goto :goto_4

    :cond_b
    instance-of v3, v2, Lhga;

    if-eqz v3, :cond_10

    check-cast v2, Lhga;

    invoke-static {v2, v1}, Lfreemarker/core/q0;->g(Lhga;Lfreemarker/core/t0;)Ljava/lang/Number;

    move-result-object v1

    iget v2, p0, Lfreemarker/core/e;->n:I

    const v3, 0x10002

    if-ne v2, v3, :cond_c

    invoke-virtual {p0}, Lifa;->U()Lifa;

    move-result-object v2

    sget-object v3, Lfreemarker/core/e;->q:Ljava/lang/Number;

    invoke-static {p1, v2, v1, v3}, Lfreemarker/core/a;->Y(Lfreemarker/core/Environment;Lfreemarker/core/t1;Ljava/lang/Number;Ljava/lang/Number;)Lzfa;

    move-result-object v1

    goto :goto_4

    :cond_c
    const v3, 0x10003

    if-ne v2, v3, :cond_d

    invoke-virtual {p0}, Lifa;->U()Lifa;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lfreemarker/core/e;->q:Ljava/lang/Number;

    invoke-static {p1, v2, v1, v3, v4}, Lfreemarker/core/d;->X(Lfreemarker/core/Environment;Lfreemarker/core/t1;Ljava/lang/Number;ILjava/lang/Number;)Lzfa;

    move-result-object v1

    goto :goto_4

    :cond_d
    iget-object v2, p0, Lfreemarker/core/e;->o:Lfreemarker/core/t0;

    invoke-virtual {v2, p1}, Lfreemarker/core/t0;->R(Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object v2

    iget v3, p0, Lfreemarker/core/e;->n:I

    invoke-static {p1, p0, v1, v3, v2}, Lfreemarker/core/d;->X(Lfreemarker/core/Environment;Lfreemarker/core/t1;Ljava/lang/Number;ILjava/lang/Number;)Lzfa;

    move-result-object v1

    :cond_e
    :goto_4
    if-nez v0, :cond_f

    iget-object p0, p0, Lfreemarker/core/e;->m:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lfreemarker/core/Environment;->Q1(Ljava/lang/String;Lzfa;)V

    goto :goto_5

    :cond_f
    iget-object p0, p0, Lfreemarker/core/e;->m:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    return-void

    :cond_10
    if-nez v2, :cond_11

    iget-object v0, p0, Lfreemarker/core/e;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lfreemarker/core/e;->m0()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    throw p0

    :cond_11
    new-instance v0, Lfreemarker/core/NonNumericalException;

    iget-object p0, p0, Lfreemarker/core/e;->m:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v1, p1}, Lfreemarker/core/NonNumericalException;-><init>(Ljava/lang/String;Lzfa;[Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw v0

    :cond_12
    iget-object p0, p0, Lfreemarker/core/e;->p:Lfreemarker/core/t0;

    invoke-static {p0, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/t0;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    throw p0

    :catch_0
    new-instance v1, Lfreemarker/core/NonNamespaceException;

    iget-object p0, p0, Lfreemarker/core/e;->p:Lfreemarker/core/t0;

    invoke-direct {v1, p0, v0, p1}, Lfreemarker/core/NonNamespaceException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method public J(Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lifa;->U()Lifa;

    move-result-object v1

    instance-of v1, v1, Lbj;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/e;->r()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 v2, 0x20

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v3, p0, Lfreemarker/core/e;->m:Ljava/lang/String;

    invoke-static {v3}, Ld0d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lfreemarker/core/e;->o:Lfreemarker/core/t0;

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/e;->m0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lfreemarker/core/e;->o:Lfreemarker/core/t0;

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lfreemarker/core/e;->o:Lfreemarker/core/t0;

    invoke-virtual {v2}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz v1, :cond_6

    iget-object v1, p0, Lfreemarker/core/e;->p:Lfreemarker/core/t0;

    if-eqz v1, :cond_5

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/e;->p:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-eqz p1, :cond_6

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m0()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lfreemarker/core/e;->n:I

    const/high16 v1, 0x10000

    const-string v2, "="

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    const v1, 0x10001

    if-ne v0, v1, :cond_1

    const-string p0, "+="

    return-object p0

    :cond_1
    const v1, 0x10002

    if-ne v0, v1, :cond_2

    const-string p0, "++"

    return-object p0

    :cond_2
    const v1, 0x10003

    if-ne v0, v1, :cond_3

    const-string p0, "--"

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget p0, p0, Lfreemarker/core/e;->n:I

    invoke-static {p0}, Lfreemarker/core/d;->Y(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public n0(Lfreemarker/core/t0;)V
    .locals 2

    iget v0, p0, Lfreemarker/core/e;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lfreemarker/core/BugException;

    invoke-direct {p0}, Lfreemarker/core/BugException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lfreemarker/core/e;->p:Lfreemarker/core/t0;

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lfreemarker/core/e;->l:I

    invoke-static {p0}, Lfreemarker/core/e;->l0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    sget-object p0, Ljw7;->l:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Ljw7;->k:Ljw7;

    return-object p0

    :cond_2
    sget-object p0, Ljw7;->j:Ljw7;

    return-object p0

    :cond_3
    sget-object p0, Ljw7;->i:Ljw7;

    return-object p0

    :cond_4
    sget-object p0, Ljw7;->h:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/e;->p:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/Integer;

    iget p0, p0, Lfreemarker/core/e;->l:I

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_2
    iget-object p0, p0, Lfreemarker/core/e;->o:Lfreemarker/core/t0;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/e;->m0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lfreemarker/core/e;->m:Ljava/lang/String;

    return-object p0
.end method
