.class public abstract Lcom/google/android/datatransport/runtime/m;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Lcom/google/firebase/encoders/proto/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/encoders/proto/e;->a()Lcom/google/firebase/encoders/proto/e$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/datatransport/runtime/a;->a:Lec/a;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/proto/e$a;->d(Lec/a;)Lcom/google/firebase/encoders/proto/e$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/encoders/proto/e$a;->c()Lcom/google/firebase/encoders/proto/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/android/datatransport/runtime/m;->a:Lcom/google/firebase/encoders/proto/e;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Ljava/lang/Object;)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/m;->a:Lcom/google/firebase/encoders/proto/e;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/firebase/encoders/proto/e;->c(Ljava/lang/Object;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
