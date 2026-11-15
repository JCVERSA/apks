.class public final Lpd3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcob;

.field public final b:Ldy9;

.field public final c:Ll84;

.field public final d:Lqgc;


# direct methods
.method public constructor <init>(Lcob;Ldy9;Ll84;Lqgc;)V
    .locals 1

    const-string v0, "variableProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storedValueProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "warningSender"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpd3;->a:Lcob;

    iput-object p2, p0, Lpd3;->b:Ldy9;

    iput-object p3, p0, Lpd3;->c:Ll84;

    iput-object p4, p0, Lpd3;->d:Lqgc;

    return-void
.end method


# virtual methods
.method public final a()Ll84;
    .locals 0

    iget-object p0, p0, Lpd3;->c:Ll84;

    return-object p0
.end method

.method public final b()Ldy9;
    .locals 0

    iget-object p0, p0, Lpd3;->b:Ldy9;

    return-object p0
.end method

.method public final c()Lcob;
    .locals 0

    iget-object p0, p0, Lpd3;->a:Lcob;

    return-object p0
.end method

.method public final d()Lqgc;
    .locals 0

    iget-object p0, p0, Lpd3;->d:Lqgc;

    return-object p0
.end method
