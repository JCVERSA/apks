.class public final Lp30;
.super La9b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp30$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:Lcom/google/android/datatransport/Priority;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;)V
    .locals 0

    .line 2
    invoke-direct {p0}, La9b;-><init>()V

    .line 3
    iput-object p1, p0, Lp30;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lp30;->b:[B

    .line 5
    iput-object p3, p0, Lp30;->c:Lcom/google/android/datatransport/Priority;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;Lp30$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lp30;-><init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp30;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()[B
    .locals 0

    iget-object p0, p0, Lp30;->b:[B

    return-object p0
.end method

.method public d()Lcom/google/android/datatransport/Priority;
    .locals 0

    iget-object p0, p0, Lp30;->c:Lcom/google/android/datatransport/Priority;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, La9b;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, La9b;

    iget-object v1, p0, Lp30;->a:Ljava/lang/String;

    invoke-virtual {p1}, La9b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp30;->b:[B

    instance-of v3, p1, Lp30;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Lp30;

    iget-object v3, v3, Lp30;->b:[B

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La9b;->c()[B

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lp30;->c:Lcom/google/android/datatransport/Priority;

    invoke-virtual {p1}, La9b;->d()Lcom/google/android/datatransport/Priority;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lp30;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lp30;->b:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lp30;->c:Lcom/google/android/datatransport/Priority;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
