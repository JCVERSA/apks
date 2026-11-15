.class public Lfreemarker/ext/util/IdentityHashMap$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Lfreemarker/ext/util/IdentityHashMap$b;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lfreemarker/ext/util/IdentityHashMap$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap$b;->b:I

    iput-object p2, p0, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    iput-object p4, p0, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lfreemarker/ext/util/IdentityHashMap$b;

    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap$b;->b:I

    iget-object v2, p0, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    iget-object v3, p0, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->e:Lfreemarker/ext/util/IdentityHashMap$b;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/ext/util/IdentityHashMap$b;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/ext/util/IdentityHashMap$b;

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lfreemarker/ext/util/IdentityHashMap$b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lfreemarker/ext/util/IdentityHashMap$b;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    if-nez p0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->b:I

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    iput-object p1, p0, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap$b;->d:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
