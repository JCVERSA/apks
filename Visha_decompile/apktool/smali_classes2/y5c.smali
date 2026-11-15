.class public final synthetic Ly5c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc6c$a;

.field public final synthetic c:Lcom/google/android/exoplayer2/k;

.field public final synthetic d:Llu1;


# direct methods
.method public synthetic constructor <init>(Lc6c$a;Lcom/google/android/exoplayer2/k;Llu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly5c;->b:Lc6c$a;

    iput-object p2, p0, Ly5c;->c:Lcom/google/android/exoplayer2/k;

    iput-object p3, p0, Ly5c;->d:Llu1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ly5c;->b:Lc6c$a;

    iget-object v1, p0, Ly5c;->c:Lcom/google/android/exoplayer2/k;

    iget-object p0, p0, Ly5c;->d:Llu1;

    invoke-static {v0, v1, p0}, Lc6c$a;->i(Lc6c$a;Lcom/google/android/exoplayer2/k;Llu1;)V

    return-void
.end method
