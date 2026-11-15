.class public final Llt4$b;
.super Llt4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:Llq0;

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Let8;Lokhttp3/Call$Factory;Lsi1;Llq0;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Llt4;-><init>(Let8;Lokhttp3/Call$Factory;Lsi1;)V

    iput-object p4, p0, Llt4$b;->d:Llq0;

    iput-boolean p5, p0, Llt4$b;->e:Z

    iput-boolean p6, p0, Llt4$b;->f:Z

    return-void
.end method


# virtual methods
.method public c(Ljq0;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llt4$b;->d:Llq0;

    invoke-interface {v0, p1}, Llq0;->adapt(Ljq0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljq0;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    check-cast p2, Lwh1;

    :try_start_0
    iget-boolean v0, p0, Llt4$b;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->d(Ljq0;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-boolean p0, p0, Llt4$b;->e:Z

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->b(Ljq0;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->a(Ljq0;Lwh1;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_0
    invoke-static {p0, p2}, Lretrofit2/KotlinExtensions;->e(Ljava/lang/Throwable;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_1
    throw p0
.end method
