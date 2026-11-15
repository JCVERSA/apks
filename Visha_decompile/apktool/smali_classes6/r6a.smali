.class public final Lr6a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr6a$a;
    }
.end annotation


# instance fields
.field public final a:Lr6a$a;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr6a$a;

    invoke-direct {v0}, Lr6a$a;-><init>()V

    iput-object v0, p0, Lr6a;->a:Lr6a$a;

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v2}, Lr6a;->b(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lr6a;->a:Lr6a$a;

    add-int/lit8 p2, p2, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ge v1, p2, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lr6a$a;->c(C)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lr6a$a;->a(C)Lr6a$a;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr6a$a;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lr6a$a;->b()I

    move-result v0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    iget-object p0, p0, Lr6a;->a:Lr6a$a;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lr6a$a;->a(C)Lr6a$a;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lr6a$a;

    invoke-direct {v3}, Lr6a$a;-><init>()V

    invoke-virtual {p0, v2, v3}, Lr6a$a;->e(CLr6a$a;)V

    :cond_0
    move-object p0, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lr6a$a;->f(Z)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lr6a$a;->g(I)V

    return-void
.end method
