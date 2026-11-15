.class public final Lcom/google/common/math/a$d;
.super Lcom/google/common/math/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:D

.field public final b:D

.field public c:Lcom/google/common/math/a;


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/math/a;-><init>()V

    iput-wide p1, p0, Lcom/google/common/math/a$d;->a:D

    iput-wide p3, p0, Lcom/google/common/math/a$d;->b:D

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/math/a$d;->c:Lcom/google/common/math/a;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/google/common/math/a$d;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/math/a$d;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "y = %g * x + %g"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
