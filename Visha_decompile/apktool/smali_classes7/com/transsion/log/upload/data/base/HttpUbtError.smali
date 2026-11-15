.class public final Lcom/transsion/log/upload/data/base/HttpUbtError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/log/upload/data/base/HttpUbtError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/log/upload/data/base/HttpUbtError;",
        "",
        "statusCode",
        "",
        "exception",
        "Lcom/transsion/log/upload/data/base/HttpUbtException;",
        "<init>",
        "(ILcom/transsion/log/upload/data/base/HttpUbtException;)V",
        "getStatusCode",
        "()I",
        "getException",
        "()Lcom/transsion/log/upload/data/base/HttpUbtException;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "Companion",
        "UBT_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/log/upload/data/base/HttpUbtError$Companion;

.field public static final STATUS_CODE_FAIL:I = 0x3e8

.field public static final STATUS_CODE_PARSE_FAIL:I = 0x3e9

.field public static final STATUS_CODE_SERVICE_ERROR:I = 0x3ea

.field public static final STATUS_CODE_SUCCESS:I = 0x7d0


# instance fields
.field private final exception:Lcom/transsion/log/upload/data/base/HttpUbtException;

.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/log/upload/data/base/HttpUbtError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/log/upload/data/base/HttpUbtError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/log/upload/data/base/HttpUbtError;->Companion:Lcom/transsion/log/upload/data/base/HttpUbtError$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/transsion/log/upload/data/base/HttpUbtException;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->statusCode:I

    iput-object p2, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->exception:Lcom/transsion/log/upload/data/base/HttpUbtException;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/transsion/log/upload/data/base/HttpUbtException;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/log/upload/data/base/HttpUbtError;-><init>(ILcom/transsion/log/upload/data/base/HttpUbtException;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/log/upload/data/base/HttpUbtError;ILcom/transsion/log/upload/data/base/HttpUbtException;ILjava/lang/Object;)Lcom/transsion/log/upload/data/base/HttpUbtError;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->statusCode:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->exception:Lcom/transsion/log/upload/data/base/HttpUbtException;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/log/upload/data/base/HttpUbtError;->copy(ILcom/transsion/log/upload/data/base/HttpUbtException;)Lcom/transsion/log/upload/data/base/HttpUbtError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->statusCode:I

    return p0
.end method

.method public final component2()Lcom/transsion/log/upload/data/base/HttpUbtException;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->exception:Lcom/transsion/log/upload/data/base/HttpUbtException;

    return-object p0
.end method

.method public final copy(ILcom/transsion/log/upload/data/base/HttpUbtException;)Lcom/transsion/log/upload/data/base/HttpUbtError;
    .locals 0

    const-string p0, "exception"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/log/upload/data/base/HttpUbtError;

    invoke-direct {p0, p1, p2}, Lcom/transsion/log/upload/data/base/HttpUbtError;-><init>(ILcom/transsion/log/upload/data/base/HttpUbtException;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/log/upload/data/base/HttpUbtError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/log/upload/data/base/HttpUbtError;

    iget v1, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->statusCode:I

    iget v3, p1, Lcom/transsion/log/upload/data/base/HttpUbtError;->statusCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->exception:Lcom/transsion/log/upload/data/base/HttpUbtException;

    iget-object p1, p1, Lcom/transsion/log/upload/data/base/HttpUbtError;->exception:Lcom/transsion/log/upload/data/base/HttpUbtException;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getException()Lcom/transsion/log/upload/data/base/HttpUbtException;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->exception:Lcom/transsion/log/upload/data/base/HttpUbtException;

    return-object p0
.end method

.method public final getStatusCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->statusCode:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->statusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->exception:Lcom/transsion/log/upload/data/base/HttpUbtException;

    invoke-virtual {p0}, Lcom/transsion/log/upload/data/base/HttpUbtException;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->statusCode:I

    iget-object p0, p0, Lcom/transsion/log/upload/data/base/HttpUbtError;->exception:Lcom/transsion/log/upload/data/base/HttpUbtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpUbtError(statusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", exception="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
