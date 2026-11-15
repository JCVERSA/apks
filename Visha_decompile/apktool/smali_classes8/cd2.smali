.class public Lcd2;
.super Lj1;
.source "SourceFile"

# interfaces
.implements Lv0;


# instance fields
.field public b:Lx0;

.field public c:I


# direct methods
.method public constructor <init>(Ly1;)V
    .locals 2

    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ly1;->J()I

    move-result v0

    iput v0, p0, Lcd2;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lld4;->n(Ly1;Z)Lld4;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcd2;->b:Lx0;

    goto :goto_1

    :cond_0
    invoke-static {p1, v1}, Lt1;->x(Ly1;Z)Lt1;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static n(Ly1;Z)Lcd2;
    .locals 0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ly1;->G(Ly1;Z)Ly1;

    move-result-object p0

    invoke-static {p0}, Lcd2;->o(Ljava/lang/Object;)Lcd2;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/Object;)Lcd2;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lcd2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ly1;

    if-eqz v0, :cond_1

    new-instance v0, Lcd2;

    check-cast p0, Ly1;

    invoke-direct {v0, p0}, Lcd2;-><init>(Ly1;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lcd2;

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 3

    new-instance v0, Ldq1;

    iget v1, p0, Lcd2;->c:I

    iget-object p0, p0, Lcd2;->b:Lx0;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Ldq1;-><init>(ZILx0;)V

    return-object v0
.end method

.method public final m(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "    "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lu0a;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DistributionPointName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcd2;->c:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcd2;->b:Lx0;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullName"

    :goto_0
    invoke-virtual {p0, v1, v0, v3, v2}, Lcd2;->m(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcd2;->b:Lx0;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nameRelativeToCRLIssuer"

    goto :goto_0

    :goto_1
    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
