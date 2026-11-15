.class public Lwk$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwk$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:D

.field public final synthetic e:Lwk$b;


# direct methods
.method public constructor <init>(Lwk$b;)V
    .locals 0

    iput-object p1, p0, Lwk$b$a;->e:Lwk$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    iput p1, p0, Lwk$b$a;->a:I

    iput p2, p0, Lwk$b$a;->b:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lwk$b$a;->d:D

    const/4 p1, 0x0

    iput p1, p0, Lwk$b$a;->c:I

    return-void
.end method

.method public b()D
    .locals 4

    iget-object v0, p0, Lwk$b$a;->e:Lwk$b;

    iget-object v0, v0, Lwk$b;->b:Lwk;

    invoke-static {v0}, Lwk;->a(Lwk;)[D

    move-result-object v0

    iget v1, p0, Lwk$b$a;->b:I

    add-int/lit8 v1, v1, 0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lwk$b$a;->e:Lwk$b;

    iget-object v2, v2, Lwk$b;->b:Lwk;

    invoke-static {v2}, Lwk;->a(Lwk;)[D

    move-result-object v2

    iget p0, p0, Lwk$b$a;->a:I

    aget-wide v2, v2, p0

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lwk$b$a;->a:I

    iget p0, p0, Lwk$b$a;->b:I

    add-int/2addr v0, p0

    shr-int/lit8 p0, v0, 0x1

    return p0
.end method
