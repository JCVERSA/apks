.class public final synthetic Lm2g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/k;->h()Lsun/misc/Unsafe;

    move-result-object p0

    return-object p0
.end method
