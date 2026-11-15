.class final Lcom/google/android/libraries/places/internal/zzbwr;
.super Lcom/google/android/libraries/places/internal/zzbvz;
.source "source.java"


# instance fields
.field private final zzd:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1

    .line 1
    const-string v0, "socket"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbvz;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwr;->zzd:Ljava/net/Socket;

    .line 10
    .line 11
    return-void
.end method
