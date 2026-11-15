.class public final Luw8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li85;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luw8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lbq8;


# direct methods
.method public constructor <init>(Lbq8;)V
    .locals 1

    const-string v0, "javaElement"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luw8$a;->b:Lbq8;

    return-void
.end method


# virtual methods
.method public b()Lzt9;
    .locals 1

    sget-object p0, Lzt9;->a:Lzt9;

    const-string v0, "NO_SOURCE_FILE"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic c()Lk75;
    .locals 0

    invoke-virtual {p0}, Luw8$a;->d()Lbq8;

    move-result-object p0

    return-object p0
.end method

.method public d()Lbq8;
    .locals 0

    iget-object p0, p0, Luw8$a;->b:Lbq8;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Luw8$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Luw8$a;->d()Lbq8;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
