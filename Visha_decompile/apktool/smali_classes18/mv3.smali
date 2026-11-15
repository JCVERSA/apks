.class public final Lmv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc9;


# instance fields
.field public final a:Lpc9;

.field public final b:Z

.field public final c:Le74;


# direct methods
.method public constructor <init>(Lpc9;ZLe74;)V
    .locals 1

    const-string v0, "sequence"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmv3;->a:Lpc9;

    iput-boolean p2, p0, Lmv3;->b:Z

    iput-object p3, p0, Lmv3;->c:Le74;

    return-void
.end method

.method public static final synthetic b(Lmv3;)Le74;
    .locals 0

    iget-object p0, p0, Lmv3;->c:Le74;

    return-object p0
.end method

.method public static final synthetic c(Lmv3;)Z
    .locals 0

    iget-boolean p0, p0, Lmv3;->b:Z

    return p0
.end method

.method public static final synthetic d(Lmv3;)Lpc9;
    .locals 0

    iget-object p0, p0, Lmv3;->a:Lpc9;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lmv3$a;

    invoke-direct {v0, p0}, Lmv3$a;-><init>(Lmv3;)V

    return-object v0
.end method
