.class public final synthetic Lmth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lnth;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lnth;IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmth;->a:Lnth;

    iput p2, p0, Lmth;->b:I

    iput-wide p3, p0, Lmth;->c:J

    iput-object p5, p0, Lmth;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 6

    iget-object v0, p0, Lmth;->a:Lnth;

    iget v1, p0, Lmth;->b:I

    iget-wide v2, p0, Lmth;->c:J

    iget-object v4, p0, Lmth;->d:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/ads/internal/util/client/zzt;

    invoke-static/range {v0 .. v5}, Lnth;->c(Lnth;IJLjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzt;)Lim5;

    move-result-object p0

    return-object p0
.end method
