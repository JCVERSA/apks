.class public final synthetic Llv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$b;


# instance fields
.field public final synthetic a:Lwz1;

.field public final synthetic b:Lcom/google/android/exoplayer2/t;


# direct methods
.method public synthetic constructor <init>(Lwz1;Lcom/google/android/exoplayer2/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv1;->a:Lwz1;

    iput-object p2, p0, Llv1;->b:Lcom/google/android/exoplayer2/t;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lzx3;)V
    .locals 1

    iget-object v0, p0, Llv1;->a:Lwz1;

    iget-object p0, p0, Llv1;->b:Lcom/google/android/exoplayer2/t;

    check-cast p1, Lnb;

    invoke-static {v0, p0, p1, p2}, Lwz1;->i0(Lwz1;Lcom/google/android/exoplayer2/t;Lnb;Lzx3;)V

    return-void
.end method
