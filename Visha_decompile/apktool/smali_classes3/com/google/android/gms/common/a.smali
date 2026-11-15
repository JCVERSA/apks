.class public abstract Lcom/google/android/gms/common/a;
.super Lcom/google/android/gms/common/b;
.source "SourceFile"


# static fields
.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/common/b;->a:I

    sput v0, Lcom/google/android/gms/common/a;->f:I

    return-void
.end method

.method public static f(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/common/b;->f(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method
