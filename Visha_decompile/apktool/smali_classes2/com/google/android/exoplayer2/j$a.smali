.class public Lcom/google/android/exoplayer2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/w$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/j;->m(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/j;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/j$a;->a:Lcom/google/android/exoplayer2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSleep()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j$a;->a:Lcom/google/android/exoplayer2/j;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/j;->f(Lcom/google/android/exoplayer2/j;Z)Z

    return-void
.end method

.method public onWakeup()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/j$a;->a:Lcom/google/android/exoplayer2/j;

    invoke-static {p0}, Lcom/google/android/exoplayer2/j;->g(Lcom/google/android/exoplayer2/j;)Lxn4;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lxn4;->sendEmptyMessage(I)Z

    return-void
.end method
