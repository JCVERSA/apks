.class public Lwy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lto8;
.implements Lwha;


# instance fields
.field public final a:Lqw0;

.field public final b:Lwy4;

.field public final c:Lqw0;


# direct methods
.method public constructor <init>(Lqw0;Lwy4;)V
    .locals 1

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwy4;->a:Lqw0;

    if-nez p2, :cond_0

    move-object p2, p0

    :cond_0
    iput-object p2, p0, Lwy4;->b:Lwy4;

    iput-object p1, p0, Lwy4;->c:Lqw0;

    return-void
.end method


# virtual methods
.method public b()Lsm9;
    .locals 1

    iget-object p0, p0, Lwy4;->a:Lqw0;

    invoke-interface {p0}, Lqw0;->q()Lsm9;

    move-result-object p0

    const-string v0, "classDescriptor.defaultType"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lwy4;->a:Lqw0;

    instance-of v0, p1, Lwy4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lwy4;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lwy4;->a:Lqw0;

    :cond_1
    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getType()Leh5;
    .locals 0

    invoke-virtual {p0}, Lwy4;->b()Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lwy4;->a:Lqw0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final k()Lqw0;
    .locals 0

    iget-object p0, p0, Lwy4;->a:Lqw0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lwy4;->b()Lsm9;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
