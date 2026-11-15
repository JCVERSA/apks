.class public final Lcom/google/android/gms/dynamite/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$a$a;)Lcom/google/android/gms/dynamite/DynamiteModule$a$b;
    .locals 2

    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;

    invoke-direct {p0}, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->b(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->b:I

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->c:I

    goto :goto_0

    :cond_0
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$a$a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->a:I

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$a$b;->c:I

    :cond_1
    :goto_0
    return-object p0
.end method
