.class public Lcom/transsnet/loginapi/bean/DefaultSearch;
.super Lcom/transsnet/loginapi/bean/SearchFilter;
.source "source.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/loginapi/bean/SearchFilter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAlpha(Ljava/lang/String;)C
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x23

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/16 v0, 0x41

    .line 15
    .line 16
    if-lt p1, v0, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x5a

    .line 19
    .line 20
    if-gt p1, v0, :cond_0

    .line 21
    .line 22
    return p1

    .line 23
    :cond_0
    const/16 v0, 0x61

    .line 24
    .line 25
    if-lt p1, v0, :cond_1

    .line 26
    .line 27
    const/16 v0, 0x7a

    .line 28
    .line 29
    if-gt p1, v0, :cond_1

    .line 30
    .line 31
    add-int/lit8 p1, p1, -0x20

    .line 32
    .line 33
    int-to-char p1, p1

    .line 34
    return p1

    .line 35
    :cond_1
    return v1
.end method

.method public getFullSpell(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x23

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsnet/loginapi/bean/DefaultSearch;->getAlpha(Ljava/lang/String;)C

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string p1, "|"

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public getInputString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
