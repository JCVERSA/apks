.class public final Ld26$a;
.super Lg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld26;->b()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ld26;


# direct methods
.method public constructor <init>(Ld26;)V
    .locals 0

    iput-object p1, p0, Ld26$a;->b:Ld26;

    invoke-direct {p0}, Lg3;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ld26$a;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge contains(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lr2;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld26$a;->b:Ld26;

    invoke-static {p0}, Ld26;->d(Ld26;)Ljava/util/regex/MatchResult;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ld26$a;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Ld26$a;->b:Ld26;

    invoke-static {p0}, Ld26;->d(Ld26;)Ljava/util/regex/MatchResult;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ld26$a;->k(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge k(Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1}, Lg3;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge l(Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1}, Lg3;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ld26$a;->l(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
