.class public Lcom/transsion/video_edit/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/video_edit/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/video_edit/b$a;->a:I

    iput-wide p2, p0, Lcom/transsion/video_edit/b$a;->b:J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    iget v0, p0, Lcom/transsion/video_edit/b$a;->a:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget-wide v0, p0, Lcom/transsion/video_edit/b$a;->b:J

    long-to-float p0, v0

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public b(I)J
    .locals 4

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/transsion/video_edit/b$a;->b:J

    mul-long/2addr v0, v2

    long-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/video_edit/b$a;->a:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-long p0, p1

    return-wide p0
.end method
