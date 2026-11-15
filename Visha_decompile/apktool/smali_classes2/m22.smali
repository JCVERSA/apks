.class public final synthetic Lm22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk3;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/k;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm22;->b:Lcom/google/android/exoplayer2/k;

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lnk3;
    .locals 0

    iget-object p0, p0, Lm22;->b:Lcom/google/android/exoplayer2/k;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/d;->d(Lcom/google/android/exoplayer2/k;)[Lnk3;

    move-result-object p0

    return-object p0
.end method
