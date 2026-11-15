.class public final Lj7b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc9;


# instance fields
.field public final a:Lpc9;

.field public final b:Le74;


# direct methods
.method public constructor <init>(Lpc9;Le74;)V
    .locals 1

    const-string v0, "sequence"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj7b;->a:Lpc9;

    iput-object p2, p0, Lj7b;->b:Le74;

    return-void
.end method

.method public static final synthetic b(Lj7b;)Lpc9;
    .locals 0

    iget-object p0, p0, Lj7b;->a:Lpc9;

    return-object p0
.end method

.method public static final synthetic c(Lj7b;)Le74;
    .locals 0

    iget-object p0, p0, Lj7b;->b:Le74;

    return-object p0
.end method


# virtual methods
.method public final d(Le74;)Lpc9;
    .locals 2

    const-string v0, "iterator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcy3;

    iget-object v1, p0, Lj7b;->a:Lpc9;

    iget-object p0, p0, Lj7b;->b:Le74;

    invoke-direct {v0, v1, p0, p1}, Lcy3;-><init>(Lpc9;Le74;Le74;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lj7b$a;

    invoke-direct {v0, p0}, Lj7b$a;-><init>(Lj7b;)V

    return-object v0
.end method
