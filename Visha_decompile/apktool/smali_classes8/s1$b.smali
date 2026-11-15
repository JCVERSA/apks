.class public Ls1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1;->B()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ls1;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 0

    iput-object p1, p0, Ls1$b;->b:Ls1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Ls1$b;->a:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget v0, p0, Ls1$b;->a:I

    iget-object p0, p0, Ls1$b;->b:Ls1;

    iget-object p0, p0, Ls1;->b:[Lx0;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ls1$b;->a:I

    iget-object v1, p0, Ls1$b;->b:Ls1;

    iget-object v1, v1, Ls1;->b:[Lx0;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ls1$b;->a:I

    aget-object p0, v1, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
