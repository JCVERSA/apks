.class public Lorg/jsoup/nodes/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lorg/jsoup/nodes/b;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/b;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/b$a;->c:Lorg/jsoup/nodes/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/jsoup/nodes/b$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Lorg/jsoup/nodes/a;
    .locals 5

    new-instance v0, Lorg/jsoup/nodes/a;

    iget-object v1, p0, Lorg/jsoup/nodes/b$a;->c:Lorg/jsoup/nodes/b;

    iget-object v2, v1, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/nodes/b$a;->b:I

    aget-object v2, v2, v3

    iget-object v4, v1, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-direct {v0, v2, v3, v1}, Lorg/jsoup/nodes/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    iget v1, p0, Lorg/jsoup/nodes/b$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/nodes/b$a;->b:I

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    :goto_0
    iget v0, p0, Lorg/jsoup/nodes/b$a;->b:I

    iget-object v1, p0, Lorg/jsoup/nodes/b$a;->c:Lorg/jsoup/nodes/b;

    invoke-static {v1}, Lorg/jsoup/nodes/b;->c(Lorg/jsoup/nodes/b;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/b$a;->c:Lorg/jsoup/nodes/b;

    iget-object v1, v0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/nodes/b$a;->b:I

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lorg/jsoup/nodes/b;->f(Lorg/jsoup/nodes/b;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/nodes/b$a;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/jsoup/nodes/b$a;->b:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/jsoup/nodes/b$a;->b:I

    iget-object p0, p0, Lorg/jsoup/nodes/b$a;->c:Lorg/jsoup/nodes/b;

    invoke-static {p0}, Lorg/jsoup/nodes/b;->c(Lorg/jsoup/nodes/b;)I

    move-result p0

    if-ge v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/b$a;->a()Lorg/jsoup/nodes/a;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/nodes/b$a;->c:Lorg/jsoup/nodes/b;

    iget v1, p0, Lorg/jsoup/nodes/b$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jsoup/nodes/b$a;->b:I

    invoke-static {v0, v1}, Lorg/jsoup/nodes/b;->i(Lorg/jsoup/nodes/b;I)V

    return-void
.end method
