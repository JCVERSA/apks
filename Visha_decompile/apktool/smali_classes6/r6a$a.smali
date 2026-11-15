.class public final Lr6a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr6a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:[Lr6a$a;

.field public b:Ljava/util/Map;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Lr6a$a;

    iput-object v0, p0, Lr6a$a;->a:[Lr6a$a;

    return-void
.end method


# virtual methods
.method public final a(C)Lr6a$a;
    .locals 1

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lr6a$a;->a:[Lr6a$a;

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lr6a$a;->b:Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr6a$a;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lr6a$a;->d:I

    return p0
.end method

.method public final c(C)Z
    .locals 3

    const/16 v0, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lr6a$a;->a:[Lr6a$a;

    aget-object p0, p0, p1

    if-eqz p0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lr6a$a;->b:Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lr6a$a;->c:Z

    return p0
.end method

.method public final e(CLr6a$a;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lr6a$a;->a:[Lr6a$a;

    aput-object p2, p0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr6a$a;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lr6a$a;->b:Ljava/util/Map;

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iget-object p0, p0, Lr6a$a;->b:Ljava/util/Map;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lr6a$a;->c:Z

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lr6a$a;->d:I

    return-void
.end method
