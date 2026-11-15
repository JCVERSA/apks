.class public final synthetic Laq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/b$a;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/b$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laq;->b:Lcom/google/android/exoplayer2/b$a;

    iput p2, p0, Laq;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Laq;->b:Lcom/google/android/exoplayer2/b$a;

    iget p0, p0, Laq;->c:I

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/b$a;->a(Lcom/google/android/exoplayer2/b$a;I)V

    return-void
.end method
