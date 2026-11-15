.class public Lcom/mgtv/data/aphone/core/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/data/aphone/core/d/c;


# static fields
.field private static volatile a:Lcom/mgtv/data/aphone/core/f/a;


# instance fields
.field private b:Lcom/mgtv/data/aphone/core/d/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/mgtv/data/aphone/core/f/a;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/f/a;->a:Lcom/mgtv/data/aphone/core/f/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mgtv/data/aphone/core/f/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/f/a;-><init>()V

    sput-object v0, Lcom/mgtv/data/aphone/core/f/a;->a:Lcom/mgtv/data/aphone/core/f/a;

    :cond_0
    sget-object v0, Lcom/mgtv/data/aphone/core/f/a;->a:Lcom/mgtv/data/aphone/core/f/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/data/aphone/core/f/a;->b:Lcom/mgtv/data/aphone/core/d/c;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/mgtv/data/aphone/core/d/c;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/f/a;->b:Lcom/mgtv/data/aphone/core/d/c;

    invoke-interface {p0}, Lcom/mgtv/data/aphone/core/d/c;->a()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public a(Lcom/mgtv/data/aphone/core/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/data/aphone/core/f/a;->b:Lcom/mgtv/data/aphone/core/d/c;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/f/a;->b:Lcom/mgtv/data/aphone/core/d/c;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/mgtv/data/aphone/core/d/c;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/f/a;->b:Lcom/mgtv/data/aphone/core/d/c;

    invoke-interface {p0}, Lcom/mgtv/data/aphone/core/d/c;->b()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
