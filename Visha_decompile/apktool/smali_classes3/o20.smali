.class public abstract Lo20;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;

.field public static final b:Ltj8;

.field public static final c:Lcom/google/android/gms/common/api/a$g;

.field public static final d:Lcom/google/android/gms/common/api/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lo20;->c:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Ls5e;

    invoke-direct {v1}, Ls5e;-><init>()V

    sput-object v1, Lo20;->d:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lo20;->a:Lcom/google/android/gms/common/api/a;

    new-instance v0, Ljaf;

    invoke-direct {v0}, Ljaf;-><init>()V

    sput-object v0, Lo20;->b:Ltj8;

    return-void
.end method
