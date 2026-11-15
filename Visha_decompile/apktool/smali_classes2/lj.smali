.class public final synthetic Llj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llj;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Llj;->b:I

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/a$b;->c(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method
