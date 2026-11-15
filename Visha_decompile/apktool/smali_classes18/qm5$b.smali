.class public Lqm5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpo0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqm5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:I

.field public final c:I

.field public final synthetic d:Lqm5;


# direct methods
.method public constructor <init>(Lqm5;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lqm5$b;->d:Lqm5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lqm5$b;->b:I

    .line 4
    invoke-virtual {p1}, Lqm5;->size()I

    move-result p1

    iput p1, p0, Lqm5$b;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lqm5;Lqm5$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lqm5$b;-><init>(Lqm5;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Byte;
    .locals 0

    invoke-virtual {p0}, Lqm5$b;->nextByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lqm5$b;->b:I

    iget p0, p0, Lqm5$b;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lqm5$b;->a()Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public nextByte()B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lqm5$b;->d:Lqm5;

    iget-object v0, v0, Lqm5;->c:[B

    iget v1, p0, Lqm5$b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lqm5$b;->b:I

    aget-byte p0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
