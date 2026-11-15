.class public final Lpd4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc9;


# instance fields
.field public final a:Lc74;

.field public final b:Le74;


# direct methods
.method public constructor <init>(Lc74;Le74;)V
    .locals 1

    const-string v0, "getInitialValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextValue"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpd4;->a:Lc74;

    iput-object p2, p0, Lpd4;->b:Le74;

    return-void
.end method

.method public static final synthetic b(Lpd4;)Lc74;
    .locals 0

    iget-object p0, p0, Lpd4;->a:Lc74;

    return-object p0
.end method

.method public static final synthetic c(Lpd4;)Le74;
    .locals 0

    iget-object p0, p0, Lpd4;->b:Le74;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lpd4$a;

    invoke-direct {v0, p0}, Lpd4$a;-><init>(Lpd4;)V

    return-object v0
.end method
