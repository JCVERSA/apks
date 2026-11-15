.class public abstract Lwzh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lvzh;

.field public final g:Luzh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lwzh;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lvzh;->b(Landroid/content/Context;)Lvzh;

    move-result-object v0

    iput-object v0, p0, Lwzh;->f:Lvzh;

    invoke-static {p1}, Luzh;->a(Landroid/content/Context;)Luzh;

    move-result-object p1

    iput-object p1, p0, Lwzh;->g:Luzh;

    iput-object p2, p0, Lwzh;->a:Ljava/lang/String;

    const-string p1, "_3p"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lwzh;->b:Ljava/lang/String;

    iput-object p3, p0, Lwzh;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwzh;->d:Ljava/lang/String;

    iput-object p4, p0, Lwzh;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Z)J
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lwzh;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lwzh;->c:Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lwzh;->f:Lvzh;

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lvzh;->a(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;JZ)Ltzh;
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lwzh;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lwzh;->e(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwzh;->f:Lvzh;

    const-string v3, "paid_3p_hash_key"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lvzh;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2, v2}, Lwzh;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lwzh;->c(Ljava/lang/String;Ljava/lang/String;)Ltzh;

    move-result-object p0

    return-object p0

    :catch_0
    :goto_0
    new-instance p0, Ltzh;

    invoke-direct {p0}, Ltzh;-><init>()V

    return-object p0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_9

    invoke-virtual {p0, v0}, Lwzh;->a(Z)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    cmp-long v5, v1, v3

    if-gez v5, :cond_6

    iget-object p3, p0, Lwzh;->f:Lvzh;

    if-eqz v0, :cond_5

    iget-object p4, p0, Lwzh;->d:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object p4, p0, Lwzh;->c:Ljava/lang/String;

    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, p4, v1}, Lvzh;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    add-long/2addr v3, p3

    cmp-long p3, v1, v3

    if-ltz p3, :cond_7

    invoke-virtual {p0, p1, p2}, Lwzh;->c(Ljava/lang/String;Ljava/lang/String;)Ltzh;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_4
    invoke-virtual {p0, v0}, Lwzh;->e(Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_8

    if-nez p5, :cond_8

    invoke-virtual {p0, p1, p2}, Lwzh;->c(Ljava/lang/String;Ljava/lang/String;)Ltzh;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p1, Ltzh;

    invoke-virtual {p0, v0}, Lwzh;->a(Z)J

    move-result-wide p4

    invoke-direct {p1, p3, p4, p5}, Ltzh;-><init>(Ljava/lang/String;J)V

    return-object p1

    :cond_9
    iget-object p0, p0, Lwzh;->e:Ljava/lang/String;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, ": Invalid negative current timestamp. Updating PAID failed"

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ltzh;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lwzh;->d(Ljava/lang/String;Z)Ltzh;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwzh;->f:Lvzh;

    const-string v2, "paid_3p_hash_key"

    invoke-virtual {v1, v2, v0}, Lvzh;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0}, Lwzh;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lwzh;->d(Ljava/lang/String;Z)Ltzh;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;Z)Ltzh;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lwzh;->f:Lvzh;

    if-eqz p2, :cond_0

    iget-object v3, p0, Lwzh;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lwzh;->c:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvzh;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    iget-object p0, p0, Lwzh;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lwzh;->a:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, p0, p1}, Lvzh;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ltzh;

    invoke-direct {p0, p1, v0, v1}, Ltzh;-><init>(Ljava/lang/String;J)V

    return-object p0

    :cond_2
    iget-object p0, p0, Lwzh;->e:Ljava/lang/String;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, ": Invalid negative current timestamp. Updating PAID failed"

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lwzh;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lwzh;->a:Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lwzh;->f:Lvzh;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lvzh;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lwzh;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lwzh;->c:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lwzh;->f:Lvzh;

    invoke-virtual {v1, v0}, Lvzh;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lwzh;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lwzh;->a:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, p0}, Lvzh;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Z)Z
    .locals 0

    iget-object p1, p0, Lwzh;->f:Lvzh;

    iget-object p0, p0, Lwzh;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lvzh;->g(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lwzh;->e:Ljava/lang/String;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Invalid argument to generate PAIDv1 on 3p traffic, Ad ID is not null, package name is "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "not null"

    const-string v1, "null"

    if-nez p2, :cond_2

    move-object p2, v1

    goto :goto_1

    :cond_2
    move-object p2, p0

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", hashKey is "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    move-object p0, v1

    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
