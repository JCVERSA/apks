.class public final Lnq8;
.super Lbq8;
.source "SourceFile"

# interfaces
.implements Lx85;


# instance fields
.field public final a:Llq8;

.field public final b:[Ljava/lang/annotation/Annotation;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Llq8;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectAnnotations"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lbq8;-><init>()V

    iput-object p1, p0, Lnq8;->a:Llq8;

    iput-object p2, p0, Lnq8;->b:[Ljava/lang/annotation/Annotation;

    iput-object p3, p0, Lnq8;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lnq8;->d:Z

    return-void
.end method


# virtual methods
.method public O()Llq8;
    .locals 0

    iget-object p0, p0, Lnq8;->a:Llq8;

    return-object p0
.end method

.method public bridge synthetic a(Lo54;)Lk65;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnq8;->a(Lo54;)Lpp8;

    move-result-object p0

    return-object p0
.end method

.method public a(Lo54;)Lpp8;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lnq8;->b:[Ljava/lang/annotation/Annotation;

    invoke-static {p0, p1}, Ltp8;->a([Ljava/lang/annotation/Annotation;Lo54;)Lpp8;

    move-result-object p0

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lnq8;->d:Z

    return p0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnq8;->getAnnotations()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lnq8;->b:[Ljava/lang/annotation/Annotation;

    invoke-static {p0}, Ltp8;->b([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getName()Lby6;
    .locals 0

    iget-object p0, p0, Lnq8;->c:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lby6;->f(Ljava/lang/String;)Lby6;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getType()Lo85;
    .locals 0

    invoke-virtual {p0}, Lnq8;->O()Llq8;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lnq8;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnq8;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "vararg "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnq8;->getName()Lby6;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnq8;->O()Llq8;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
