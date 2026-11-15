.class public final Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouterBeanBuilder"
.end annotation


# instance fields
.field private method:Ljava/lang/Integer;

.field private param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

.field private path:Ljava/lang/String;

.field private source:Ljava/lang/Integer;

.field private targetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aRouterBean()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->source:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setSource(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->method:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setMethod(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)V

    iget v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->type:I

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setType(I)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->targetClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setTargetClass(Ljava/lang/Class;)V

    return-object v0
.end method

.method public withMarkParam(JJLjava/lang/String;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    if-eqz v0, :cond_0

    .line 16
    invoke-static {v0, p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->a(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;J)V

    .line 17
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p5}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->b(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p3, p4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->f(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;J)V

    .line 19
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p6}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->g(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public withMarkParam(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    if-eqz v0, :cond_0

    .line 21
    invoke-static {v0, p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->a(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;J)V

    .line 22
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p5}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->b(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p3, p4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->f(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;J)V

    .line 24
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p6}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->g(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p7}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->e(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public withMarkParam(Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    if-eqz v0, :cond_0

    .line 14
    invoke-static {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->c(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->c(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->d(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;I)V

    :cond_0
    return-object p0
.end method

.method public withMarkParam(Ljava/lang/String;ILjava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->c(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->d(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;I)V

    .line 7
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->e(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public withMarkParam(Ljava/lang/String;ILjava/lang/String;J)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    if-eqz v0, :cond_0

    .line 9
    invoke-static {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->c(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->d(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;I)V

    .line 11
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->e(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-static {p1, p4, p5}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->f(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;J)V

    :cond_0
    return-object p0
.end method

.method public withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    return-object p0
.end method

.method public withTargetClass(Ljava/lang/Class;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->targetClass:Ljava/lang/Class;

    return-object p0
.end method

.method public withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->type:I

    return-object p0
.end method
