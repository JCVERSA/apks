.class public final Lbe8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvbb;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lvbb;Ljava/util/List;)V
    .locals 1

    const-string v0, "parametersInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbe8;->a:Lvbb;

    iput-object p2, p0, Lbe8;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lbe8;->b:Ljava/util/List;

    return-object p0
.end method

.method public final b()Lvbb;
    .locals 0

    iget-object p0, p0, Lbe8;->a:Lvbb;

    return-object p0
.end method
