.class public final Lm0i;
.super Ln1i;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln1i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ln1i;
    .locals 0

    iput-object p1, p0, Lm0i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b(I)Ln1i;
    .locals 0

    iput p1, p0, Lm0i;->a:I

    const/4 p1, 0x1

    iput-byte p1, p0, Lm0i;->c:B

    return-object p0
.end method

.method public final c()Lo1i;
    .locals 3

    iget-byte v0, p0, Lm0i;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lo0i;

    iget v1, p0, Lm0i;->a:I

    iget-object p0, p0, Lm0i;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lo0i;-><init>(ILjava/lang/String;Ln0i;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required properties: statusCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
