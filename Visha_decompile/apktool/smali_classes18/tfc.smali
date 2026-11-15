.class public abstract Ltfc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltfc;->a:Ljava/lang/String;

    iput-boolean p2, p0, Ltfc;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ltfc;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "visibility"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lsfc;->a:Lsfc;

    invoke-virtual {v0, p0, p1}, Lsfc;->a(Ltfc;Ltfc;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltfc;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Ltfc;->b:Z

    return p0
.end method

.method public d()Ltfc;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ltfc;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
