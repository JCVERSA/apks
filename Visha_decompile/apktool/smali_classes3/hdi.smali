.class public final Lhdi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljdi;

.field public b:Ljava/lang/String;

.field public c:Lidi;

.field public d:Ljai;


# direct methods
.method public synthetic constructor <init>(Lkdi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljai;)Lhdi;
    .locals 0

    iput-object p1, p0, Lhdi;->d:Ljai;

    return-object p0
.end method

.method public final b(Lidi;)Lhdi;
    .locals 0

    iput-object p1, p0, Lhdi;->c:Lidi;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lhdi;
    .locals 0

    iput-object p1, p0, Lhdi;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljdi;)Lhdi;
    .locals 0

    iput-object p1, p0, Lhdi;->a:Ljdi;

    return-object p0
.end method

.method public final e()Lldi;
    .locals 7

    iget-object v0, p0, Lhdi;->a:Ljdi;

    if-nez v0, :cond_0

    sget-object v0, Ljdi;->c:Ljdi;

    iput-object v0, p0, Lhdi;->a:Ljdi;

    :cond_0
    iget-object v0, p0, Lhdi;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lhdi;->c:Lidi;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lhdi;->d:Ljai;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lp9i;->a()Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lidi;->b:Lidi;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lwbi;

    if-nez v2, :cond_6

    :cond_1
    sget-object v2, Lidi;->d:Lidi;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lpci;

    if-nez v2, :cond_6

    :cond_2
    sget-object v2, Lidi;->c:Lidi;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Loei;

    if-nez v2, :cond_6

    :cond_3
    sget-object v2, Lidi;->e:Lidi;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v1, Lbbi;

    if-nez v2, :cond_6

    :cond_4
    sget-object v2, Lidi;->f:Lidi;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v1, Llbi;

    if-nez v2, :cond_6

    :cond_5
    sget-object v2, Lidi;->g:Lidi;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, v1, Ljci;

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Lldi;

    iget-object v2, p0, Lhdi;->a:Ljdi;

    iget-object v3, p0, Lhdi;->b:Ljava/lang/String;

    iget-object v4, p0, Lhdi;->c:Lidi;

    iget-object v5, p0, Lhdi;->d:Ljai;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lldi;-><init>(Ljdi;Ljava/lang/String;Lidi;Ljai;Lkdi;)V

    return-object v0

    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    iget-object v1, p0, Lhdi;->c:Lidi;

    invoke-virtual {v1}, Lidi;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lhdi;->d:Ljai;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot use parsing strategy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " when new keys are picked according to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "dekParametersForNewKeys must not have ID Requirements"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "dekParametersForNewKeys must be set"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "dekParsingStrategy must be set"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "kekUri must be set"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
