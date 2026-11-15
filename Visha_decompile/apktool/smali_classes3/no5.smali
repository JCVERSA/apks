.class public abstract Lno5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;

.field public static final b:Lh94;

.field public static final c:Lsd4;

.field public static final d:Ljf9;

.field public static final e:Lcom/google/android/gms/common/api/a$g;

.field public static final f:Lcom/google/android/gms/common/api/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lno5;->e:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lj1f;

    invoke-direct {v1}, Lj1f;-><init>()V

    sput-object v1, Lno5;->f:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "LocationServices.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lno5;->a:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lhrj;

    invoke-direct {v0}, Lhrj;-><init>()V

    sput-object v0, Lno5;->b:Lh94;

    new-instance v0, Ljbe;

    invoke-direct {v0}, Ljbe;-><init>()V

    sput-object v0, Lno5;->c:Lsd4;

    new-instance v0, Lu1f;

    invoke-direct {v0}, Lu1f;-><init>()V

    sput-object v0, Lno5;->d:Ljf9;

    return-void
.end method
