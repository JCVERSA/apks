.class final Lcom/google/android/datatransport/cct/internal/i;
.super Lcom/google/android/datatransport/cct/internal/p;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/internal/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/datatransport/cct/internal/o;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/cct/internal/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/p;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/i;->a:Lcom/google/android/datatransport/cct/internal/o;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/datatransport/cct/internal/o;Lcom/google/android/datatransport/cct/internal/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/cct/internal/i;-><init>(Lcom/google/android/datatransport/cct/internal/o;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/cct/internal/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/i;->a:Lcom/google/android/datatransport/cct/internal/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/cct/internal/p;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/datatransport/cct/internal/p;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/i;->a:Lcom/google/android/datatransport/cct/internal/o;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/p;->b()Lcom/google/android/datatransport/cct/internal/o;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    return v0

    .line 30
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/i;->a:Lcom/google/android/datatransport/cct/internal/o;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    const v1, 0xf4243

    .line 12
    .line 13
    .line 14
    xor-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ExternalPrivacyContext{prequest="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/i;->a:Lcom/google/android/datatransport/cct/internal/o;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "}"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
