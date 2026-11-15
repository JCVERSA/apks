.class public final Lj1f;
.super Lcom/google/android/gms/common/api/a$a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Landroid/content/Context;Landroid/os/Looper;Lay0;Ljava/lang/Object;Lcom/google/android/gms/common/api/c$a;Lcom/google/android/gms/common/api/c$b;)Lcom/google/android/gms/common/api/a$f;
    .locals 7

    check-cast p4, Lcom/google/android/gms/common/api/a$d$a;

    new-instance p0, Lzue;

    const-string v5, "locationServices"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lzue;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/c$a;Lcom/google/android/gms/common/api/c$b;Ljava/lang/String;Lay0;)V

    return-object p0
.end method
