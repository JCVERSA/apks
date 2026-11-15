.class public final Lp6a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leh5;

.field public final b:Lp6a;


# direct methods
.method public constructor <init>(Leh5;Lp6a;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp6a;->a:Leh5;

    iput-object p2, p0, Lp6a;->b:Lp6a;

    return-void
.end method


# virtual methods
.method public final a()Lp6a;
    .locals 0

    iget-object p0, p0, Lp6a;->b:Lp6a;

    return-object p0
.end method

.method public final b()Leh5;
    .locals 0

    iget-object p0, p0, Lp6a;->a:Leh5;

    return-object p0
.end method
