.class public final Lsl8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lrl8;

.field public final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lrl8;Ljava/lang/Class;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsl8;->a:Lrl8;

    iput-object p2, p0, Lsl8;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()Lrl8;
    .locals 0

    iget-object p0, p0, Lsl8;->a:Lrl8;

    return-object p0
.end method

.method public final b()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lsl8;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lsl8;->b:Ljava/lang/Class;

    iget-object p0, p0, Lsl8;->a:Lrl8;

    invoke-virtual {p0}, Lrl8;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-static {v0, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
