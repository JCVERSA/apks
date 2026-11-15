.class final Lvz/c$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:[Lvz/c;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    new-array v0, v0, [Lvz/c;

    .line 6
    .line 7
    iput-object v0, p0, Lvz/c$a;->b:[Lvz/c;

    .line 8
    .line 9
    return-void
.end method

.method private a(Lvz/c;)V
    .locals 4

    .line 1
    iget v0, p0, Lvz/c$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lvz/c$a;->b:[Lvz/c;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-lt v0, v2, :cond_0

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    add-int/lit8 v2, v2, 0x6

    .line 10
    .line 11
    new-array v2, v2, [Lvz/c;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lvz/c$a;->b:[Lvz/c;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lvz/c$a;->b:[Lvz/c;

    .line 20
    .line 21
    iget v1, p0, Lvz/c$a;->a:I

    .line 22
    .line 23
    add-int/lit8 v2, v1, 0x1

    .line 24
    .line 25
    iput v2, p0, Lvz/c$a;->a:I

    .line 26
    .line 27
    aput-object p1, v0, v1

    .line 28
    .line 29
    return-void
.end method

.method private c(Lvz/c;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lvz/c$a;->a:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lvz/c$a;->b:[Lvz/c;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    iget-object v2, v2, Lvz/c;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p1, Lvz/c;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v0
.end method


# virtual methods
.method b(Lvz/c;)V
    .locals 1

    .line 1
    :goto_0
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lvz/c$a;->c(Lvz/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lvz/c$a;->a(Lvz/c;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p1, Lvz/c;->c:Lvz/c;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return-void
.end method

.method d()[Lvz/c;
    .locals 4

    .line 1
    iget v0, p0, Lvz/c$a;->a:I

    .line 2
    .line 3
    new-array v1, v0, [Lvz/c;

    .line 4
    .line 5
    iget-object v2, p0, Lvz/c$a;->b:[Lvz/c;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method
