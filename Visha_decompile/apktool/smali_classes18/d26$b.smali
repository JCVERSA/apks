.class public final Ld26$b;
.super Lr2;
.source "SourceFile"

# interfaces
.implements Lb26;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld26;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
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

    iput-object p1, p0, Ld26$b;->b:Ld26;

    invoke-direct {p0}, Lr2;-><init>()V

    return-void
.end method

.method public static synthetic f(Ld26$b;I)La26;
    .locals 0

    invoke-static {p0, p1}, Ld26$b;->m(Ld26$b;I)La26;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Ld26$b;I)La26;
    .locals 0

    invoke-virtual {p0, p1}, Ld26$b;->l(I)La26;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, La26;

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, La26;

    invoke-virtual {p0, p1}, Ld26$b;->k(La26;)Z

    move-result p0

    return p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Ld26$b;->b:Ld26;

    invoke-static {p0}, Ld26;->d(Ld26;)Ljava/util/regex/MatchResult;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    invoke-static {p0}, Ly71;->l(Ljava/util/Collection;)Lu15;

    move-result-object v0

    invoke-static {v0}, Li81;->b0(Ljava/lang/Iterable;)Lpc9;

    move-result-object v0

    new-instance v1, Le26;

    invoke-direct {v1, p0}, Le26;-><init>(Ld26$b;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->R(Lpc9;Le74;)Lpc9;

    move-result-object p0

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge k(La26;)Z
    .locals 0

    invoke-super {p0, p1}, Lr2;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public l(I)La26;
    .locals 2

    iget-object v0, p0, Ld26$b;->b:Ld26;

    invoke-static {v0}, Ld26;->d(Ld26;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0, p1}, Lhr8;->d(Ljava/util/regex/MatchResult;I)Lu15;

    move-result-object v0

    invoke-virtual {v0}, Lu15;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v1, La26;

    iget-object p0, p0, Ld26$b;->b:Ld26;

    invoke-static {p0}, Ld26;->d(Ld26;)Ljava/util/regex/MatchResult;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "group(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, La26;-><init>(Ljava/lang/String;Lu15;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
