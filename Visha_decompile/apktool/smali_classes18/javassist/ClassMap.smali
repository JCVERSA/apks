.class public Ljavassist/ClassMap;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private parent:Ljavassist/ClassMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/ClassMap;->parent:Ljavassist/ClassMap;

    return-void
.end method

.method public constructor <init>(Ljavassist/ClassMap;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljavassist/ClassMap;->parent:Ljavassist/ClassMap;

    return-void
.end method

.method public static toJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ln82;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJvmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ln82;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fix(Lbm1;)V
    .locals 0

    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public fix(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-super {p0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Ljavassist/ClassMap;->parent:Ljavassist/ClassMap;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljavassist/ClassMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 6
    :cond_2
    :goto_0
    invoke-static {p2}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public put(Lbm1;Lbm1;)V
    .locals 0

    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public final put0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public putIfNone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
