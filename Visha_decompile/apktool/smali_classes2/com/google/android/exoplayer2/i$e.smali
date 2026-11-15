.class public final Lcom/google/android/exoplayer2/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwl6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/google/android/exoplayer2/a0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/i$e;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/i$e;->b:Lcom/google/android/exoplayer2/a0;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/i$e;Lcom/google/android/exoplayer2/a0;)Lcom/google/android/exoplayer2/a0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/i$e;->b:Lcom/google/android/exoplayer2/a0;

    return-object p1
.end method


# virtual methods
.method public getTimeline()Lcom/google/android/exoplayer2/a0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$e;->b:Lcom/google/android/exoplayer2/a0;

    return-object p0
.end method

.method public getUid()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$e;->a:Ljava/lang/Object;

    return-object p0
.end method
