.class public final Lku8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lgu8;

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lgu8;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lku8;->a:Lgu8;

    iput-object p2, p0, Lku8;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lku8;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lku8;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lku8;-><init>(Lgu8;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "error == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lgu8;)Lku8;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lku8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lku8;-><init>(Lgu8;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "response == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
