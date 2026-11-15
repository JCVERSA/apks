.class public final Lcom/google/android/gms/internal/measurement/zzgy;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzhh;


# instance fields
.field private final zza:Landroidx/collection/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/x0;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/collection/x0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/x0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgy;->zza:Landroidx/collection/x0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgy;->zza:Landroidx/collection/x0;

    .line 12
    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    :cond_1
    move-object p1, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/collection/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroidx/collection/x0;

    .line 22
    .line 23
    :goto_1
    if-nez p1, :cond_3

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_3
    if-eqz p3, :cond_4

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    :cond_4
    invoke-virtual {p1, p4}, Landroidx/collection/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    return-object p1
.end method
