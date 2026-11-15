.class public final Ln30;
.super Ldc9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln30$b;
    }
.end annotation


# instance fields
.field public final a:La9b;

.field public final b:Ljava/lang/String;

.field public final c:Lrd3;

.field public final d:Lh7b;

.field public final e:Lka3;


# direct methods
.method public constructor <init>(La9b;Ljava/lang/String;Lrd3;Lh7b;Lka3;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ldc9;-><init>()V

    .line 3
    iput-object p1, p0, Ln30;->a:La9b;

    .line 4
    iput-object p2, p0, Ln30;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Ln30;->c:Lrd3;

    .line 6
    iput-object p4, p0, Ln30;->d:Lh7b;

    .line 7
    iput-object p5, p0, Ln30;->e:Lka3;

    return-void
.end method

.method public synthetic constructor <init>(La9b;Ljava/lang/String;Lrd3;Lh7b;Lka3;Ln30$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Ln30;-><init>(La9b;Ljava/lang/String;Lrd3;Lh7b;Lka3;)V

    return-void
.end method


# virtual methods
.method public b()Lka3;
    .locals 0

    iget-object p0, p0, Ln30;->e:Lka3;

    return-object p0
.end method

.method public c()Lrd3;
    .locals 0

    iget-object p0, p0, Ln30;->c:Lrd3;

    return-object p0
.end method

.method public e()Lh7b;
    .locals 0

    iget-object p0, p0, Ln30;->d:Lh7b;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldc9;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ldc9;

    iget-object v1, p0, Ln30;->a:La9b;

    invoke-virtual {p1}, Ldc9;->f()La9b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ln30;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ldc9;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ln30;->c:Lrd3;

    invoke-virtual {p1}, Ldc9;->c()Lrd3;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ln30;->d:Lh7b;

    invoke-virtual {p1}, Ldc9;->e()Lh7b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Ln30;->e:Lka3;

    invoke-virtual {p1}, Ldc9;->b()Lka3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lka3;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()La9b;
    .locals 0

    iget-object p0, p0, Ln30;->a:La9b;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln30;->b:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Ln30;->a:La9b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Ln30;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ln30;->c:Lrd3;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ln30;->d:Lh7b;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Ln30;->e:Lka3;

    invoke-virtual {p0}, Lka3;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendRequest{transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln30;->a:La9b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln30;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln30;->c:Lrd3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln30;->d:Lh7b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln30;->e:Lka3;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
