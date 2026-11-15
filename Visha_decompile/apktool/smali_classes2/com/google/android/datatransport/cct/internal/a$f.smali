.class public final Lcom/google/android/datatransport/cct/internal/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Lcom/google/android/datatransport/cct/internal/a$f;

.field public static final b:Lvp3;

.field public static final c:Lvp3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/internal/a$f;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/a$f;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$f;->a:Lcom/google/android/datatransport/cct/internal/a$f;

    const-string v0, "networkType"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$f;->b:Lvp3;

    const-string v0, "mobileSubtype"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$f;->c:Lvp3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    check-cast p2, Lzb7;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/a$f;->b(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;Lzb7;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;Lzb7;)V
    .locals 1

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$f;->b:Lvp3;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;->c()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$f;->c:Lvp3;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;->b()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    return-void
.end method
