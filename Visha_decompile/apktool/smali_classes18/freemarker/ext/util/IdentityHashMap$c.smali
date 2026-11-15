.class public Lfreemarker/ext/util/IdentityHashMap$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public b:[Lfreemarker/ext/util/IdentityHashMap$b;

.field public c:I

.field public d:Lfreemarker/ext/util/IdentityHashMap$b;

.field public e:Lfreemarker/ext/util/IdentityHashMap$b;

.field public f:I

.field public g:I

.field public final synthetic h:Lfreemarker/ext/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Lfreemarker/ext/util/IdentityHashMap;I)V
    .locals 1

    iput-object p1, p0, Lfreemarker/ext/util/IdentityHashMap$c;->h:Lfreemarker/ext/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lfreemarker/ext/util/IdentityHashMap;->access$200(Lfreemarker/ext/util/IdentityHashMap;)[Lfreemarker/ext/util/IdentityHashMap$b;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->b:[Lfreemarker/ext/util/IdentityHashMap$b;

    array-length v0, v0

    iput v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->d:Lfreemarker/ext/util/IdentityHashMap$b;

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    invoke-static {p1}, Lfreemarker/ext/util/IdentityHashMap;->access$300(Lfreemarker/ext/util/IdentityHashMap;)I

    move-result p1

    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap$c;->g:I

    iput p2, p0, Lfreemarker/ext/util/IdentityHashMap$c;->f:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->d:Lfreemarker/ext/util/IdentityHashMap$b;

    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap$c;->c:I

    iget-object v2, p0, Lfreemarker/ext/util/IdentityHashMap$c;->b:[Lfreemarker/ext/util/IdentityHashMap$b;

    :goto_0
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v2, v1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->d:Lfreemarker/ext/util/IdentityHashMap$b;

    iput v1, p0, Lfreemarker/ext/util/IdentityHashMap$c;->c:I

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->h:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {v0}, Lfreemarker/ext/util/IdentityHashMap;->access$300(Lfreemarker/ext/util/IdentityHashMap;)I

    move-result v0

    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap$c;->g:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->d:Lfreemarker/ext/util/IdentityHashMap$b;

    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap$c;->c:I

    iget-object v2, p0, Lfreemarker/ext/util/IdentityHashMap$c;->b:[Lfreemarker/ext/util/IdentityHashMap$b;

    :goto_0
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v2, v1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->d:Lfreemarker/ext/util/IdentityHashMap$b;

    iput v1, p0, Lfreemarker/ext/util/IdentityHashMap$c;->c:I

    if-eqz v0, :cond_3

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    iget-object v1, v0, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    iput-object v1, p0, Lfreemarker/ext/util/IdentityHashMap$c;->d:Lfreemarker/ext/util/IdentityHashMap$b;

    iget p0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->f:I

    if-nez p0, :cond_1

    iget-object v0, v0, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    iget-object v0, v0, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 7

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->h:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {v0}, Lfreemarker/ext/util/IdentityHashMap;->access$300(Lfreemarker/ext/util/IdentityHashMap;)I

    move-result v0

    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap$c;->g:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->h:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {v0}, Lfreemarker/ext/util/IdentityHashMap;->access$200(Lfreemarker/ext/util/IdentityHashMap;)[Lfreemarker/ext/util/IdentityHashMap$b;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap$c;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    iget v1, v1, Lfreemarker/ext/util/IdentityHashMap$b;->b:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v2, v0, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_2

    iget-object v5, p0, Lfreemarker/ext/util/IdentityHashMap$c;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    if-ne v2, v5, :cond_1

    iget-object v5, p0, Lfreemarker/ext/util/IdentityHashMap$c;->h:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {v5}, Lfreemarker/ext/util/IdentityHashMap;->access$308(Lfreemarker/ext/util/IdentityHashMap;)I

    iget v5, p0, Lfreemarker/ext/util/IdentityHashMap$c;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lfreemarker/ext/util/IdentityHashMap$c;->g:I

    if-nez v4, :cond_0

    iget-object v2, v2, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    aput-object v2, v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, v2, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    iput-object v0, v4, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    :goto_1
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$c;->h:Lfreemarker/ext/util/IdentityHashMap;

    invoke-static {v0}, Lfreemarker/ext/util/IdentityHashMap;->access$110(Lfreemarker/ext/util/IdentityHashMap;)I

    iput-object v3, p0, Lfreemarker/ext/util/IdentityHashMap$c;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    return-void

    :cond_1
    iget-object v4, v2, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
