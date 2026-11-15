.class public final synthetic Lqif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh9e;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lc9e;
    .locals 7

    sget p0, Lrif;->x:I

    new-instance p0, Lmfe;

    invoke-direct {p0}, Lmfe;-><init>()V

    new-instance p1, Lxde;

    invoke-direct {p1}, Lxde;-><init>()V

    new-instance p2, Lgfe;

    sget-object v1, Lvge;->a:Lvge;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lgfe;-><init>(Lvge;ILfch;Lsfe;Ljava/util/List;Lrae;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lc9e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    return-object v0
.end method
