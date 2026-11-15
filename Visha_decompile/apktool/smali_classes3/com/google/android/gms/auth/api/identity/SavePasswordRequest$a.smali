.class public final Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/auth/api/identity/SignInPassword;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/auth/api/identity/SignInPassword;)Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;->a:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c(I)Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;->c:I

    return-object p0
.end method
