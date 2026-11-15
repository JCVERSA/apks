.class public final Lxl8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxk8;

.field public final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lxk8;Ljava/lang/Class;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxl8;->a:Lxk8;

    iput-object p2, p0, Lxl8;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()Lxk8;
    .locals 0

    iget-object p0, p0, Lxl8;->a:Lxk8;

    return-object p0
.end method

.method public final b()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lxl8;->b:Ljava/lang/Class;

    return-object p0
.end method
