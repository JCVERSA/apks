.class final Lcom/google/android/libraries/places/internal/zzbjf;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbaq;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza([B)Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x3

    .line 3
    if-lt v0, v1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget-byte v0, p1, v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x30

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    aget-byte v1, p1, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x30

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    aget-byte p1, p1, v2

    .line 17
    .line 18
    add-int/lit8 p1, p1, -0x30

    .line 19
    .line 20
    mul-int/lit8 v0, v0, 0x64

    .line 21
    .line 22
    mul-int/lit8 v1, v1, 0xa

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    add-int/2addr v0, p1

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/String;

    .line 34
    .line 35
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbar;->zza:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 38
    .line 39
    .line 40
    const-string p1, "Malformed status code "

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public final synthetic zzb(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
