.class public final Lygj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lygj;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lugj;

    invoke-direct {v0}, Lugj;-><init>()V

    invoke-virtual {v0}, Lugj;->d()Lygj;

    move-result-object v0

    sput-object v0, Lygj;->d:Lygj;

    return-void
.end method

.method public synthetic constructor <init>(Lugj;Lwgj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lugj;->e(Lugj;)Z

    move-result p2

    iput-boolean p2, p0, Lygj;->a:Z

    invoke-static {p1}, Lugj;->f(Lugj;)Z

    move-result p2

    iput-boolean p2, p0, Lygj;->b:Z

    invoke-static {p1}, Lugj;->g(Lugj;)Z

    move-result p1

    iput-boolean p1, p0, Lygj;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lygj;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lygj;

    iget-boolean v2, p0, Lygj;->a:Z

    iget-boolean v3, p1, Lygj;->a:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lygj;->b:Z

    iget-boolean v3, p1, Lygj;->b:Z

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Lygj;->c:Z

    iget-boolean p1, p1, Lygj;->c:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lygj;->a:Z

    iget-boolean v1, p0, Lygj;->b:Z

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v1

    add-int/2addr v0, v1

    iget-boolean p0, p0, Lygj;->c:Z

    add-int/2addr v0, p0

    return v0
.end method
