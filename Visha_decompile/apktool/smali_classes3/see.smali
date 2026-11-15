.class public final Lsee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llu8;


# static fields
.field public static final d:Landroid/accounts/Account;


# instance fields
.field public final b:Lcom/google/android/gms/common/api/Status;

.field public final c:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "DUMMY_NAME"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lsee;->d:Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsee;->b:Lcom/google/android/gms/common/api/Status;

    if-nez p2, :cond_0

    sget-object p2, Lsee;->d:Landroid/accounts/Account;

    :cond_0
    iput-object p2, p0, Lsee;->c:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, Lsee;->b:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method
