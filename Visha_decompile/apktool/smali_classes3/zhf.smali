.class public final Lzhf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lzhf;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lzhf;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lzhf;-><init>(IIF)V

    sput-object v0, Lzhf;->d:Lzhf;

    sget v0, Lkfh;->a:I

    const/16 v0, 0x24

    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lzhf;->a:I

    iput p2, p0, Lzhf;->b:I

    iput p3, p0, Lzhf;->c:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lzhf;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lzhf;

    iget v1, p0, Lzhf;->a:I

    iget v3, p1, Lzhf;->a:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lzhf;->b:I

    iget v3, p1, Lzhf;->b:I

    if-ne v1, v3, :cond_1

    iget p0, p0, Lzhf;->c:F

    iget p1, p1, Lzhf;->c:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lzhf;->a:I

    add-int/lit16 v0, v0, 0xd9

    iget v1, p0, Lzhf;->c:F

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lzhf;->b:I

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
