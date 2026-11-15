.class public final Luda;
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

    const-string v0, "predicate"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luda;->a:Lpc9;

    iput-object p2, p0, Luda;->b:Le74;

    return-void
.end method

.method public static final synthetic b(Luda;)Le74;
    .locals 0

    iget-object p0, p0, Luda;->b:Le74;

    return-object p0
.end method

.method public static final synthetic c(Luda;)Lpc9;
    .locals 0

    iget-object p0, p0, Luda;->a:Lpc9;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Luda$a;

    invoke-direct {v0, p0}, Luda$a;-><init>(Luda;)V

    return-object v0
.end method
