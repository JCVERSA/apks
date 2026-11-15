.class public final Lvc7$a;
.super Ljd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lpd7;

.field public final c:[Ljava/lang/Object;

.field public d:I

.field public e:Z

.field public volatile f:Z


# direct methods
.method public constructor <init>(Lpd7;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljd0;-><init>()V

    iput-object p1, p0, Lvc7$a;->b:Lpd7;

    iput-object p2, p0, Lvc7$a;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lvc7$a;->c:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0}, Lvc7$a;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    iget-object p0, p0, Lvc7$a;->b:Lpd7;

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The element at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lpd7;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v4, p0, Lvc7$a;->b:Lpd7;

    invoke-interface {v4, v3}, Lpd7;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lvc7$a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lvc7$a;->b:Lpd7;

    invoke-interface {p0}, Lpd7;->onComplete()V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lvc7$a;->c:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lvc7$a;->d:I

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvc7$a;->f:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lvc7$a;->f:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lvc7$a;->d:I

    iget-object p0, p0, Lvc7$a;->c:[Ljava/lang/Object;

    array-length p0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public poll()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lvc7$a;->d:I

    iget-object v1, p0, Lvc7$a;->c:[Ljava/lang/Object;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lvc7$a;->d:I

    aget-object p0, v1, v0

    const-string v0, "The array element is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lvc7$a;->e:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
