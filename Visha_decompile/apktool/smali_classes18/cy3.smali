.class public final Lcy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc9;


# instance fields
.field public final a:Lpc9;

.field public final b:Le74;

.field public final c:Le74;


# direct methods
.method public constructor <init>(Lpc9;Le74;Le74;)V
    .locals 1

    const-string v0, "sequence"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iterator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcy3;->a:Lpc9;

    iput-object p2, p0, Lcy3;->b:Le74;

    iput-object p3, p0, Lcy3;->c:Le74;

    return-void
.end method

.method public static final synthetic b(Lcy3;)Le74;
    .locals 0

    iget-object p0, p0, Lcy3;->c:Le74;

    return-object p0
.end method

.method public static final synthetic c(Lcy3;)Lpc9;
    .locals 0

    iget-object p0, p0, Lcy3;->a:Lpc9;

    return-object p0
.end method

.method public static final synthetic d(Lcy3;)Le74;
    .locals 0

    iget-object p0, p0, Lcy3;->b:Le74;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcy3$a;

    invoke-direct {v0, p0}, Lcy3$a;-><init>(Lcy3;)V

    return-object v0
.end method
