.class public final Lbdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbdh;->a:Ljava/lang/String;

    iput p2, p0, Lbdh;->b:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x1f

    return p0
.end method

.method public final zzb()Lim5;
    .locals 2

    new-instance v0, Lcdh;

    iget-object v1, p0, Lbdh;->a:Ljava/lang/String;

    iget p0, p0, Lbdh;->b:I

    invoke-direct {v0, v1, p0}, Lcdh;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
