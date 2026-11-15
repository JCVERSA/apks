.class public final synthetic Lzvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpqh;


# instance fields
.field public final synthetic a:Ldwg;

.field public final synthetic b:Lcom/google/android/gms/ads/internal/util/client/zzu;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldwg;Lcom/google/android/gms/ads/internal/util/client/zzu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzvg;->a:Ldwg;

    iput-object p2, p0, Lzvg;->b:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iput-object p3, p0, Lzvg;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lzvg;->a:Ldwg;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lzvg;->b:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iget-object p0, p0, Lzvg;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0}, Ldwg;->k(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/ads/internal/util/client/zzu;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
