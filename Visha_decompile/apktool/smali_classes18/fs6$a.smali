.class public final Lfs6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfs6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lfs6$a;

.field public b:Lfs6$a;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lfs6$a;->e()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lfs6$a;->d:Ljava/lang/Object;

    iput-object v0, p0, Lfs6$a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lfs6$a;->c:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lfs6$a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfs6$a;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public b()Lfs6$a;
    .locals 0

    iget-object p0, p0, Lfs6$a;->a:Lfs6$a;

    return-object p0
.end method

.method public c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfs6$a;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public d(Lfs6$a;)V
    .locals 1

    iget-object v0, p1, Lfs6$a;->b:Lfs6$a;

    iput-object v0, p0, Lfs6$a;->b:Lfs6$a;

    iput-object p0, p1, Lfs6$a;->b:Lfs6$a;

    iput-object p1, p0, Lfs6$a;->a:Lfs6$a;

    iget-object p1, p0, Lfs6$a;->b:Lfs6$a;

    iput-object p0, p1, Lfs6$a;->a:Lfs6$a;

    return-void
.end method

.method public e()V
    .locals 0

    iput-object p0, p0, Lfs6$a;->b:Lfs6$a;

    iput-object p0, p0, Lfs6$a;->a:Lfs6$a;

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lfs6$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lfs6$a;->b:Lfs6$a;

    iget-object v1, p0, Lfs6$a;->a:Lfs6$a;

    iput-object v1, v0, Lfs6$a;->a:Lfs6$a;

    iget-object v1, p0, Lfs6$a;->a:Lfs6$a;

    iput-object v0, v1, Lfs6$a;->b:Lfs6$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lfs6$a;->a:Lfs6$a;

    iput-object v0, p0, Lfs6$a;->b:Lfs6$a;

    return-void
.end method
