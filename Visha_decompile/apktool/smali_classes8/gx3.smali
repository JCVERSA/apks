.class public Lgx3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd8;


# instance fields
.field public a:Li53;

.field public b:Lb53;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgx3;->a:Li53;

    iput-object v0, p0, Lgx3;->b:Lb53;

    const/4 v0, -0x1

    iput v0, p0, Lgx3;->c:I

    return-void
.end method


# virtual methods
.method public a()Lb53;
    .locals 0

    iget-object p0, p0, Lgx3;->b:Lb53;

    return-object p0
.end method

.method public b()Li53;
    .locals 0

    iget-object p0, p0, Lgx3;->a:Li53;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lgx3;->c:I

    return p0
.end method

.method public d(Lb53;)V
    .locals 0

    iput-object p1, p0, Lgx3;->b:Lb53;

    return-void
.end method

.method public e(Li53;)V
    .locals 0

    iput-object p1, p0, Lgx3;->a:Li53;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lgx3;->c:I

    return-void
.end method
