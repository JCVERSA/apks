.class public Lxzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxzc;->a:[Ljava/lang/Object;

    iput p2, p0, Lxzc;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lxzc;->c:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget v0, p0, Lxzc;->c:I

    iget p0, p0, Lxzc;->b:I

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

    iget v0, p0, Lxzc;->c:I

    iget v1, p0, Lxzc;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lxzc;->a:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lxzc;->c:I

    aget-object p0, v1, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
