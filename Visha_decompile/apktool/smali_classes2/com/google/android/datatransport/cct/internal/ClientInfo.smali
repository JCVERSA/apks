.class public abstract Lcom/google/android/datatransport/cct/internal/ClientInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/internal/ClientInfo$a;,
        Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/cct/internal/ClientInfo$a;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lob;
.end method

.method public abstract c()Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;
.end method
