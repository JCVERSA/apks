.class public Lqnb$b;
.super Lqnb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lqnb;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lqnb$b;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lqnb$b;->c:Z

    invoke-virtual {p0}, Lqnb$b;->r()Z

    move-result p1

    iput-boolean p1, p0, Lqnb$b;->d:Z

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqnb$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public r()Z
    .locals 0

    iget-boolean p0, p0, Lqnb$b;->c:Z

    return p0
.end method

.method public s()Z
    .locals 0

    iget-boolean p0, p0, Lqnb$b;->d:Z

    return p0
.end method

.method public t(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lqnb$b;->u(Z)V

    return-void
.end method

.method public u(Z)V
    .locals 1

    iget-boolean v0, p0, Lqnb$b;->d:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lqnb$b;->d:Z

    invoke-virtual {p0, p0}, Lqnb;->d(Lqnb;)V

    return-void
.end method
