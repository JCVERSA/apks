.class public final Lgpa$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgpa$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpa$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgpa$b$a$a;->a:Z

    return-void
.end method

.method public static final synthetic a(Z)Lgpa$b$a$a;
    .locals 1

    new-instance v0, Lgpa$b$a$a;

    invoke-direct {v0, p0}, Lgpa$b$a$a;-><init>(Z)V

    return-object v0
.end method

.method public static b(Z)Z
    .locals 0

    return p0
.end method

.method public static c(ZLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lgpa$b$a$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lgpa$b$a$a;

    invoke-virtual {p1}, Lgpa$b$a$a;->f()Z

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public static e(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bool(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-boolean p0, p0, Lgpa$b$a$a;->a:Z

    invoke-static {p0, p1}, Lgpa$b$a$a;->c(ZLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic f()Z
    .locals 0

    iget-boolean p0, p0, Lgpa$b$a$a;->a:Z

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-boolean p0, p0, Lgpa$b$a$a;->a:Z

    invoke-static {p0}, Lgpa$b$a$a;->d(Z)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lgpa$b$a$a;->a:Z

    invoke-static {p0}, Lgpa$b$a$a;->e(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
