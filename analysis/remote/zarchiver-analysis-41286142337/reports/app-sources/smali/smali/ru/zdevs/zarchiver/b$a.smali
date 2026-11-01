.class public final Lru/zdevs/zarchiver/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lru/zdevs/zarchiver/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lh0/h;

.field public final b:C

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Lh0/h;CIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/b$a;->a:Lh0/h;

    .line 5
    .line 6
    iput-char p2, p0, Lru/zdevs/zarchiver/b$a;->b:C

    .line 7
    .line 8
    iput p3, p0, Lru/zdevs/zarchiver/b$a;->c:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lru/zdevs/zarchiver/b$a;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lru/zdevs/zarchiver/b$a;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v1, p1, Lru/zdevs/zarchiver/b$a;->d:Z

    .line 8
    .line 9
    iget-boolean v2, p0, Lru/zdevs/zarchiver/b$a;->d:Z

    .line 10
    .line 11
    if-eq v2, v1, :cond_2

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, -0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lru/zdevs/zarchiver/b$a;->a:Lh0/h;

    .line 19
    .line 20
    iget-object p1, p1, Lru/zdevs/zarchiver/b$a;->a:Lh0/h;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lh0/h;->b(Lh0/h;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/zdevs/zarchiver/b$a;->a:Lh0/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/zdevs/zarchiver/b$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-char v2, p0, Lru/zdevs/zarchiver/b$a;->b:C

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "0x%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
