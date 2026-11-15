.class public Lvv8$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpo0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvv8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final b:Lvv8$c;

.field public c:Lpo0$a;

.field public d:I

.field public final synthetic e:Lvv8;


# direct methods
.method public constructor <init>(Lvv8;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lvv8$d;->e:Lvv8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lvv8$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lvv8$c;-><init>(Lpo0;Lvv8$a;)V

    iput-object v0, p0, Lvv8$d;->b:Lvv8$c;

    .line 4
    invoke-virtual {v0}, Lvv8$c;->c()Lqm5;

    move-result-object v0

    invoke-virtual {v0}, Lqm5;->C()Lpo0$a;

    move-result-object v0

    iput-object v0, p0, Lvv8$d;->c:Lpo0$a;

    .line 5
    invoke-virtual {p1}, Lvv8;->size()I

    move-result p1

    iput p1, p0, Lvv8$d;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lvv8;Lvv8$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lvv8$d;-><init>(Lvv8;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Byte;
    .locals 0

    invoke-virtual {p0}, Lvv8$d;->nextByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget p0, p0, Lvv8$d;->d:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lvv8$d;->a()Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public nextByte()B
    .locals 1

    iget-object v0, p0, Lvv8$d;->c:Lpo0$a;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvv8$d;->b:Lvv8$c;

    invoke-virtual {v0}, Lvv8$c;->c()Lqm5;

    move-result-object v0

    invoke-virtual {v0}, Lqm5;->C()Lpo0$a;

    move-result-object v0

    iput-object v0, p0, Lvv8$d;->c:Lpo0$a;

    :cond_0
    iget v0, p0, Lvv8$d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lvv8$d;->d:I

    iget-object p0, p0, Lvv8$d;->c:Lpo0$a;

    invoke-interface {p0}, Lpo0$a;->nextByte()B

    move-result p0

    return p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
