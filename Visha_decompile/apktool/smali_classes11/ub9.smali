.class public Lub9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lub9;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lub9;->b:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lub9;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lub9;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lub9;->c:Z

    return p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lub9;->b:Z

    return p0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lub9;->c:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lub9;->b:Z

    return-void
.end method
