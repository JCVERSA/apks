.class public abstract La9b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La9b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()La9b$a;
    .locals 2

    new-instance v0, Lp30$b;

    invoke-direct {v0}, Lp30$b;-><init>()V

    sget-object v1, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    invoke-virtual {v0, v1}, Lp30$b;->d(Lcom/google/android/datatransport/Priority;)La9b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()[B
.end method

.method public abstract d()Lcom/google/android/datatransport/Priority;
.end method

.method public e()Z
    .locals 0

    invoke-virtual {p0}, La9b;->c()[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f(Lcom/google/android/datatransport/Priority;)La9b;
    .locals 2

    invoke-static {}, La9b;->a()La9b$a;

    move-result-object v0

    invoke-virtual {p0}, La9b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La9b$a;->b(Ljava/lang/String;)La9b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, La9b$a;->d(Lcom/google/android/datatransport/Priority;)La9b$a;

    move-result-object p1

    invoke-virtual {p0}, La9b;->c()[B

    move-result-object p0

    invoke-virtual {p1, p0}, La9b$a;->c([B)La9b$a;

    move-result-object p0

    invoke-virtual {p0}, La9b$a;->a()La9b;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, La9b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, La9b;->d()Lcom/google/android/datatransport/Priority;

    move-result-object v1

    invoke-virtual {p0}, La9b;->c()[B

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, La9b;->c()[B

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    :goto_0
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "TransportContext(%s, %s, %s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
