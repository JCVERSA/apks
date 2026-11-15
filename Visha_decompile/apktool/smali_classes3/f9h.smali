.class public final Lf9h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lf9h;
    .locals 1

    sget-object v0, Le9h;->a:Lf9h;

    return-object v0
.end method

.method public static b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcye;->a:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zza()Luxe;

    move-result-object v0

    invoke-virtual {v0}, Luxe;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lf9h;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
