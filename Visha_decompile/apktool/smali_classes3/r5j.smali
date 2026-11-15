.class public final Lr5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoi;


# static fields
.field public static final a:Lcoi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr5j;

    invoke-direct {v0}, Lr5j;-><init>()V

    sput-object v0, Lr5j;->a:Lcoi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzjs;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
