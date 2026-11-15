.class public abstract Ln20;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln20$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;

.field public static final b:Lcom/google/android/gms/common/api/a;

.field public static final c:Lcom/google/android/gms/common/api/a;

.field public static final d:Ltj8;

.field public static final e:Ljl1;

.field public static final f:Lbj4;

.field public static final g:Lcom/google/android/gms/common/api/a$g;

.field public static final h:Lcom/google/android/gms/common/api/a$g;

.field public static final i:Lcom/google/android/gms/common/api/a$a;

.field public static final j:Lcom/google/android/gms/common/api/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Ln20;->g:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v1, Ln20;->h:Lcom/google/android/gms/common/api/a$g;

    new-instance v2, La3e;

    invoke-direct {v2}, La3e;-><init>()V

    sput-object v2, Ln20;->i:Lcom/google/android/gms/common/api/a$a;

    new-instance v3, Lg3e;

    invoke-direct {v3}, Lg3e;-><init>()V

    sput-object v3, Ln20;->j:Lcom/google/android/gms/common/api/a$a;

    sget-object v4, Lo20;->a:Lcom/google/android/gms/common/api/a;

    sput-object v4, Ln20;->a:Lcom/google/android/gms/common/api/a;

    new-instance v4, Lcom/google/android/gms/common/api/a;

    const-string v5, "Auth.CREDENTIALS_API"

    invoke-direct {v4, v5, v2, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v4, Ln20;->b:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v2, "Auth.GOOGLE_SIGN_IN_API"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Ln20;->c:Lcom/google/android/gms/common/api/a;

    sget-object v0, Lo20;->b:Ltj8;

    sput-object v0, Ln20;->d:Ltj8;

    new-instance v0, Lz3e;

    invoke-direct {v0}, Lz3e;-><init>()V

    sput-object v0, Ln20;->e:Ljl1;

    new-instance v0, Ll3e;

    invoke-direct {v0}, Ll3e;-><init>()V

    sput-object v0, Ln20;->f:Lbj4;

    return-void
.end method
