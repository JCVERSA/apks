.class public final synthetic Lmi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/j;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi3;->b:Lcom/google/android/exoplayer2/j;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmi3;->b:Lcom/google/android/exoplayer2/j;

    invoke-static {p0}, Lcom/google/android/exoplayer2/j;->c(Lcom/google/android/exoplayer2/j;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
