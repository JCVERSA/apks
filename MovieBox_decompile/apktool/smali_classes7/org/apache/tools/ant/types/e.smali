.class public abstract Lorg/apache/tools/ant/types/e;
.super Lorg/apache/tools/ant/q;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected checked:Z

.field protected ref:Lorg/apache/tools/ant/types/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/q;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/e;->checked:Z

    .line 6
    .line 7
    return-void
.end method

.method public static invokeCircularReferenceCheck(Lorg/apache/tools/ant/types/e;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/types/e;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected checkAttributesAllowed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    throw v0
.end method

.method protected checkChildrenAllowed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    throw v0
.end method

.method protected circularReference()Lorg/apache/tools/ant/BuildException;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 2
    .line 3
    const-string v1, "This data type contains a circular reference."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/apache/tools/ant/q;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/apache/tools/ant/types/e;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getDescription()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/q;->setDescription(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getRefid()Lorg/apache/tools/ant/types/r;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getRefid()Lorg/apache/tools/ant/types/r;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/e;->setRefid(Lorg/apache/tools/ant/types/r;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isChecked()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/e;->setChecked(Z)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method protected dieOnCircularReference()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/e;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/e;->checked:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/e;->ref:Lorg/apache/tools/ant/types/r;

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/r;->b(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lorg/apache/tools/ant/types/e;

    if-eqz v1, :cond_2

    .line 7
    invoke-static {p1}, Lorg/apache/tools/ant/util/IdentityStack;->getInstance(Ljava/util/Stack;)Lorg/apache/tools/ant/util/IdentityStack;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/util/IdentityStack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    check-cast v0, Lorg/apache/tools/ant/types/e;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/e;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 11
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->circularReference()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/e;->checked:Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected dieOnCircularReference(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/e;->checked:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/util/IdentityStack;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/IdentityStack;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/types/e;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getCheckedRef()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/e;->getCheckedRef(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getCheckedRef(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/types/e;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .locals 2

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/types/e;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 5
    iget-object v0, p0, Lorg/apache/tools/ant/types/e;->ref:Lorg/apache/tools/ant/types/r;

    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/types/r;->b(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p3, " is not a subclass of "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    invoke-virtual {p0, p1, p3}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    .line 8
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p3, p0, Lorg/apache/tools/ant/types/e;->ref:Lorg/apache/tools/ant/types/r;

    invoke-virtual {p3}, Lorg/apache/tools/ant/types/r;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " doesn\'t denote a "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "No Project specified"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getCheckedRef(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/e;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getDataTypeName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, p0, v1}, Lorg/apache/tools/ant/ComponentHelper;->o(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getRefid()Lorg/apache/tools/ant/types/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/e;->ref:Lorg/apache/tools/ant/types/r;

    .line 2
    .line 3
    return-object v0
.end method

.method protected isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/e;->checked:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReference()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/e;->ref:Lorg/apache/tools/ant/types/r;

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

.method protected noChildrenAllowed()Lorg/apache/tools/ant/BuildException;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 2
    .line 3
    const-string v1, "You must not specify nested elements when using refid"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/e;->checked:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/types/e;->ref:Lorg/apache/tools/ant/types/r;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/e;->checked:Z

    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getDescription()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getDataTypeName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getDataTypeName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    const-string v2, " "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    return-object v0
.end method

.method protected tooManyAttributes()Lorg/apache/tools/ant/BuildException;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 2
    .line 3
    const-string v1, "You must not specify more than one attribute when using refid"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
