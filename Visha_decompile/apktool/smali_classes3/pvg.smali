.class public final synthetic Lpvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpqh;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/b5;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/b5;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpvg;->a:Lcom/google/android/gms/internal/ads/b5;

    iput-boolean p2, p0, Lpvg;->b:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpvg;->a:Lcom/google/android/gms/internal/ads/b5;

    iget-boolean p0, p0, Lpvg;->b:Z

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/b5;->a(Lcom/google/android/gms/internal/ads/b5;ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method
