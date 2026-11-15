.class public Lcom/transsion/json/u;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lcom/transsion/json/a;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/json/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/json/u;->a:Lcom/transsion/json/a;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/transsion/json/u;->b:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/json/u;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/transsion/json/u;->b:I

    .line 11
    .line 12
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/json/u;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public c()Lcom/transsion/json/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/json/u;->a:Lcom/transsion/json/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/json/u;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/transsion/json/u;->b:I

    .line 6
    .line 7
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/json/u;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
