.class Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;
.super Ljava/util/Hashtable;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/ComponentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AntTypeTable"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a78e01357a658fcL


# instance fields
.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->project:Lorg/apache/tools/ant/Project;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    move v2, v1

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lorg/apache/tools/ant/b;

    .line 28
    .line 29
    iget-object v3, p0, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->project:Lorg/apache/tools/ant/Project;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/b;->h(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-ne v2, p1, :cond_0

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v1, v2

    .line 40
    :cond_2
    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method create(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->project:Lorg/apache/tools/ant/Project;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/b;->c(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    return-object p1
.end method

.method public findMatches(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/tools/ant/b;

    .line 25
    .line 26
    invoke-virtual {v2}, Lorg/apache/tools/ant/b;->i()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->getTypeClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/apache/tools/ant/b;

    .line 6
    .line 7
    return-object p1
.end method

.method getExposedClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->project:Lorg/apache/tools/ant/Project;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/b;->h(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    return-object p1
.end method

.method getTypeClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper$AntTypeTable;->project:Lorg/apache/tools/ant/Project;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/b;->j(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    return-object p1
.end method
