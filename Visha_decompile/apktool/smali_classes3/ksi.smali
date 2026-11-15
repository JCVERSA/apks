.class public final Lksi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpti;


# static fields
.field public static final a:Lksi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lksi;

    invoke-direct {v0}, Lksi;-><init>()V

    sput-object v0, Lksi;->a:Lksi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lksi;
    .locals 1

    sget-object v0, Lksi;->a:Lksi;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Loti;
    .locals 2

    const-class p0, Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ia;->I(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->x()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loti;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to get message info for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported message type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/Class;)Z
    .locals 0

    const-class p0, Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method
