.class public final Lkq8;
.super Lfq8;
.source "SourceFile"

# interfaces
.implements Lc85;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "recordComponent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lfq8;-><init>()V

    iput-object p1, p0, Lkq8;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public P()Ljava/lang/reflect/Member;
    .locals 1

    sget-object v0, Le65;->a:Le65;

    iget-object p0, p0, Lkq8;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Le65;->c(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-string v0, "Can\'t find `getAccessor` method"

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType()Lo85;
    .locals 1

    sget-object v0, Le65;->a:Le65;

    iget-object p0, p0, Lkq8;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Le65;->d(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lzp8;

    invoke-direct {v0, p0}, Lzp8;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-string v0, "Can\'t find `getType` method"

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
