.class public final Lsh8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsh8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget-wide v0, p0, Lsh8$a;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lsh8$a;->a:J

    return-void
.end method

.method public final b(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lsh8$a;->a(J)V

    iget p1, p0, Lsh8$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsh8$a;->b:I

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lsh8$a;->a:J

    return-wide v0
.end method

.method public final d()J
    .locals 5

    iget v0, p0, Lsh8$a;->b:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lsh8$a;->a:J

    int-to-long v3, v0

    div-long v0, v1, v3

    :goto_0
    return-wide v0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lsh8$a;->b:I

    return p0
.end method

.method public final f()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsh8$a;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lsh8$a;->b:I

    return-void
.end method
