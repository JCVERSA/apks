.class public Llv0;
.super Lfreemarker/ext/dom/d;
.source "SourceFile"

# interfaces
.implements Lmga;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/CharacterData;)V
    .locals 0

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/d;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    instance-of p0, p0, Lorg/w3c/dom/Comment;

    if-eqz p0, :cond_0

    const-string p0, "@comment"

    goto :goto_0

    :cond_0
    const-string p0, "@text"

    :goto_0
    return-object p0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/dom/d;->b:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/CharacterData;

    invoke-interface {p0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
