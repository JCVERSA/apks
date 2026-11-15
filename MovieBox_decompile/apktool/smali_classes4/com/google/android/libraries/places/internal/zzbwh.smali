.class public final Lcom/google/android/libraries/places/internal/zzbwh;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final zza(Lcom/google/android/libraries/places/internal/zzbwq;)Lcom/google/android/libraries/places/internal/zzbwc;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwk;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbwk;-><init>(Lcom/google/android/libraries/places/internal/zzbwq;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final zzb(Lcom/google/android/libraries/places/internal/zzbws;)Lcom/google/android/libraries/places/internal/zzbwd;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwl;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbwl;-><init>(Lcom/google/android/libraries/places/internal/zzbws;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final zzc(Ljava/net/Socket;)Lcom/google/android/libraries/places/internal/zzbwq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/libraries/places/internal/zzbwi;->zza:I

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwr;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbwr;-><init>(Ljava/net/Socket;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbwj;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v2, "getOutputStream(...)"

    .line 20
    .line 21
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcom/google/android/libraries/places/internal/zzbwj;-><init>(Ljava/io/OutputStream;Lcom/google/android/libraries/places/internal/zzbwv;)V

    .line 25
    .line 26
    .line 27
    const-string p0, "sink"

    .line 28
    .line 29
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Lcom/google/android/libraries/places/internal/zzbvx;

    .line 33
    .line 34
    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbvx;-><init>(Lcom/google/android/libraries/places/internal/zzbvz;Lcom/google/android/libraries/places/internal/zzbwq;)V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method

.method public static final zzd(Ljava/net/Socket;)Lcom/google/android/libraries/places/internal/zzbws;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/libraries/places/internal/zzbwi;->zza:I

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwr;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbwr;-><init>(Ljava/net/Socket;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbwg;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v2, "getInputStream(...)"

    .line 20
    .line 21
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcom/google/android/libraries/places/internal/zzbwg;-><init>(Ljava/io/InputStream;Lcom/google/android/libraries/places/internal/zzbwv;)V

    .line 25
    .line 26
    .line 27
    const-string p0, "source"

    .line 28
    .line 29
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Lcom/google/android/libraries/places/internal/zzbvy;

    .line 33
    .line 34
    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbvy;-><init>(Lcom/google/android/libraries/places/internal/zzbvz;Lcom/google/android/libraries/places/internal/zzbws;)V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method
