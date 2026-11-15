.class public final synthetic Lzv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/n;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lnb$a;Lcom/google/android/exoplayer2/n;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzv1;->a:Lnb$a;

    iput-object p2, p0, Lzv1;->b:Lcom/google/android/exoplayer2/n;

    iput p3, p0, Lzv1;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lzv1;->a:Lnb$a;

    iget-object v1, p0, Lzv1;->b:Lcom/google/android/exoplayer2/n;

    iget p0, p0, Lzv1;->c:I

    check-cast p1, Lnb;

    invoke-static {v0, v1, p0, p1}, Lwz1;->X(Lnb$a;Lcom/google/android/exoplayer2/n;ILnb;)V

    return-void
.end method
