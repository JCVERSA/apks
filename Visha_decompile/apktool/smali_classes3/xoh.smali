.class public final Lxoh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwoh;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwoh;

    invoke-direct {v0}, Lwoh;-><init>()V

    iput-object v0, p0, Lxoh;->a:Lwoh;

    return-void
.end method


# virtual methods
.method public final a()Lwoh;
    .locals 2

    iget-object p0, p0, Lxoh;->a:Lwoh;

    invoke-virtual {p0}, Lwoh;->a()Lwoh;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lwoh;->b:Z

    iput-boolean v1, p0, Lwoh;->c:Z

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\tPool does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lxoh;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tNew pools created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lxoh;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tPools removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lxoh;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tEntries added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lxoh;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tNo entries retrieved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lxoh;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Lxoh;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lxoh;->f:I

    return-void
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Lxoh;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lxoh;->b:I

    iget-object p0, p0, Lxoh;->a:Lwoh;

    iput-boolean v1, p0, Lwoh;->b:Z

    return-void
.end method

.method public final e()V
    .locals 1

    iget v0, p0, Lxoh;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lxoh;->e:I

    return-void
.end method

.method public final f()V
    .locals 1

    iget v0, p0, Lxoh;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lxoh;->d:I

    return-void
.end method

.method public final g()V
    .locals 2

    iget v0, p0, Lxoh;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lxoh;->c:I

    iget-object p0, p0, Lxoh;->a:Lwoh;

    iput-boolean v1, p0, Lwoh;->c:Z

    return-void
.end method
