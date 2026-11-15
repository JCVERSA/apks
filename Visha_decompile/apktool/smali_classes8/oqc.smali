.class public Loqc;
.super Lj1;
.source "SourceFile"

# interfaces
.implements Lv0;


# instance fields
.field public b:Lp1;


# direct methods
.method public constructor <init>(Lh1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Loqc;->b:Lp1;

    return-void
.end method

.method public constructor <init>(Ll1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Loqc;->b:Lp1;

    return-void
.end method

.method public constructor <init>(Lp1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Loqc;->b:Lp1;

    return-void
.end method

.method public constructor <init>(Lqqc;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Loqc;->b:Lp1;

    invoke-virtual {p1}, Lqqc;->j()Lp1;

    move-result-object p1

    iput-object p1, p0, Loqc;->b:Lp1;

    return-void
.end method

.method public static m(Ljava/lang/Object;)Loqc;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Loqc;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lp1;

    if-eqz v0, :cond_1

    new-instance v0, Loqc;

    check-cast p0, Lp1;

    invoke-direct {v0, p0}, Loqc;-><init>(Lp1;)V

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Loqc;

    check-cast p0, [B

    invoke-static {p0}, Lp1;->t([B)Lp1;

    move-result-object p0

    invoke-direct {v0, p0}, Loqc;-><init>(Lp1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse encoded data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    check-cast p0, Loqc;

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Loqc;->b:Lp1;

    return-object p0
.end method

.method public n()Lp1;
    .locals 0

    iget-object p0, p0, Loqc;->b:Lp1;

    return-object p0
.end method

.method public o()Z
    .locals 0

    iget-object p0, p0, Loqc;->b:Lp1;

    instance-of p0, p0, Lh1;

    return p0
.end method

.method public p()Z
    .locals 0

    iget-object p0, p0, Loqc;->b:Lp1;

    instance-of p0, p0, Ll1;

    return p0
.end method
