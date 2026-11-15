.class public abstract Lcie;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcie;->a:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public static bridge synthetic a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Lcie;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
