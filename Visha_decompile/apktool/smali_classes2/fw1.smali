.class public final synthetic Lfw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/k;

.field public final synthetic c:Llu1;


# direct methods
.method public synthetic constructor <init>(Lnb$a;Lcom/google/android/exoplayer2/k;Llu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw1;->a:Lnb$a;

    iput-object p2, p0, Lfw1;->b:Lcom/google/android/exoplayer2/k;

    iput-object p3, p0, Lfw1;->c:Llu1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lfw1;->a:Lnb$a;

    iget-object v1, p0, Lfw1;->b:Lcom/google/android/exoplayer2/k;

    iget-object p0, p0, Lfw1;->c:Llu1;

    check-cast p1, Lnb;

    invoke-static {v0, v1, p0, p1}, Lwz1;->p0(Lnb$a;Lcom/google/android/exoplayer2/k;Llu1;Lnb;)V

    return-void
.end method
