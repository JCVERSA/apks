.class public Lwca$a;
.super Lr17$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lwca;)V
    .locals 0

    invoke-direct {p0, p1}, Lr17$a;-><init>(Lr17;)V

    return-void
.end method


# virtual methods
.method public f()Ljf7;
    .locals 1

    iget-object p0, p0, Lr17$a;->a:Lr17;

    instance-of v0, p0, Lwca;

    if-eqz v0, :cond_0

    check-cast p0, Lwca;

    invoke-static {p0}, Lwca;->s(Lwca;)Ljf7;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
