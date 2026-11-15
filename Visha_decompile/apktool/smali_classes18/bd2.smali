.class public final Lbd2;
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

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keySelector"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd2;->a:Lpc9;

    iput-object p2, p0, Lbd2;->b:Le74;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lad2;

    iget-object v1, p0, Lbd2;->a:Lpc9;

    invoke-interface {v1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object p0, p0, Lbd2;->b:Le74;

    invoke-direct {v0, v1, p0}, Lad2;-><init>(Ljava/util/Iterator;Le74;)V

    return-object v0
.end method
