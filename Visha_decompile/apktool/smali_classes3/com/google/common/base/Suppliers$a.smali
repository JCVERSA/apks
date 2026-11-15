.class public Lcom/google/common/base/Suppliers$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final e:Lw6a;


# instance fields
.field public final b:Ljava/lang/Object;

.field public volatile c:Lw6a;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx6a;

    invoke-direct {v0}, Lx6a;-><init>()V

    sput-object v0, Lcom/google/common/base/Suppliers$a;->e:Lw6a;

    return-void
.end method

.method public constructor <init>(Lw6a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/Suppliers$a;->b:Ljava/lang/Object;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw6a;

    iput-object p1, p0, Lcom/google/common/base/Suppliers$a;->c:Lw6a;

    return-void
.end method

.method public static synthetic a()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/google/common/base/Suppliers$a;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/Void;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/base/Suppliers$a;->c:Lw6a;

    sget-object v1, Lcom/google/common/base/Suppliers$a;->e:Lw6a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/base/Suppliers$a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/common/base/Suppliers$a;->c:Lw6a;

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/google/common/base/Suppliers$a;->c:Lw6a;

    invoke-interface {v2}, Lw6a;->get()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/base/Suppliers$a;->d:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/base/Suppliers$a;->c:Lw6a;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/google/common/base/Suppliers$a;->d:Ljava/lang/Object;

    invoke-static {p0}, Lt37;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/common/base/Suppliers$a;->c:Lw6a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suppliers.memoize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/common/base/Suppliers$a;->e:Lw6a;

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<supplier that returned "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/base/Suppliers$a;->d:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
