.class public final Lhti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnui;


# static fields
.field public static final b:Lpti;


# instance fields
.field public final a:Lpti;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfti;

    invoke-direct {v0}, Lfti;-><init>()V

    sput-object v0, Lhti;->b:Lpti;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lgti;

    invoke-static {}, Lksi;->c()Lksi;

    move-result-object v1

    sget-object v2, Lxti;->c:Lxti;

    const/4 v2, 0x2

    new-array v2, v2, [Lpti;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-object v1, Lhti;->b:Lpti;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lgti;-><init>([Lpti;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lzsi;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lhti;->a:Lpti;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcui;
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/ads/pa;->a:Lpui;

    const-class v0, Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lxti;->c:Lxti;

    :cond_0
    iget-object p0, p0, Lhti;->a:Lpti;

    invoke-interface {p0, p1}, Lpti;->a(Ljava/lang/Class;)Loti;

    move-result-object v1

    invoke-interface {v1}, Loti;->zzb()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lxti;->c:Lxti;

    invoke-static {}, Luti;->a()Ltti;

    move-result-object v2

    invoke-static {}, Ldti;->a()Lcti;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/pa;->w()Lpui;

    move-result-object v4

    invoke-interface {v1}, Loti;->zzc()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    invoke-static {}, Lhsi;->a()Lfsi;

    move-result-object p0

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lnti;->a()Lmti;

    move-result-object v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ka;->D(Ljava/lang/Class;Loti;Ltti;Lcti;Lpui;Lfsi;Lmti;)Lcom/google/android/gms/internal/ads/ka;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lxti;->c:Lxti;

    invoke-static {}, Lcom/google/android/gms/internal/ads/pa;->w()Lpui;

    move-result-object p0

    invoke-static {}, Lhsi;->a()Lfsi;

    move-result-object p1

    invoke-interface {v1}, Loti;->zza()Lrti;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/la;->h(Lpui;Lfsi;Lrti;)Lcom/google/android/gms/internal/ads/la;

    move-result-object p0

    return-object p0
.end method
