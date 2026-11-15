.class public Lcom/transsion/apiinvoke/invoke/TypeValuePair;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x461bb1f4250711e8L


# instance fields
.field private name:Ljava/lang/String;

.field private type:Ljava/lang/Class;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->value:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->name:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "TT;)",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->create(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair<",
            "TT;>;"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;-><init>()V

    .line 5
    iput-object p0, v0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->type:Ljava/lang/Class;

    if-nez p0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->type:Ljava/lang/Class;

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    iput-object p1, v0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->value:Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    iput-object p2, v0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->name:Ljava/lang/String;

    :cond_3
    return-object v0
.end method

.method public static createNoNull(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->create(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    return-object p0
.end method

.method public static createTypeMapping(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->empty()Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->create(Ljava/lang/Class;Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lcom/transsion/apiinvoke/invoke/TypeValuePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;-><init>()V

    return-object v0
.end method

.method private static isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isPrimitive(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 5
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    const-string v0, "TYPE"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public getValueType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->type:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->isPrimitive(Ljava/lang/Class;)Z

    move-result p0

    return p0

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->isPrimitive(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeValuePair{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
