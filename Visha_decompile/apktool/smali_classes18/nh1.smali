.class public final Lnh1;
.super Lt3;
.source "SourceFile"

# interfaces
.implements Lxy4;


# instance fields
.field public final c:Lqw0;

.field public final d:Lby6;


# direct methods
.method public constructor <init>(Lqw0;Leh5;Lby6;Lto8;)V
    .locals 1

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lt3;-><init>(Leh5;Lto8;)V

    iput-object p1, p0, Lnh1;->c:Lqw0;

    iput-object p3, p0, Lnh1;->d:Lby6;

    return-void
.end method


# virtual methods
.method public a()Lby6;
    .locals 0

    iget-object p0, p0, Lnh1;->d:Lby6;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lt3;->getType()Leh5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Ctx { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnh1;->c:Lqw0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
