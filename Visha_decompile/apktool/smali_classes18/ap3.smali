.class public final Lap3;
.super Lo3;
.source "SourceFile"


# instance fields
.field public final b:Lap3$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo3;-><init>()V

    new-instance v0, Lap3$a;

    invoke-direct {v0}, Lap3$a;-><init>()V

    iput-object v0, p0, Lap3;->b:Lap3$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Random;
    .locals 1

    iget-object p0, p0, Lap3;->b:Lap3$a;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
