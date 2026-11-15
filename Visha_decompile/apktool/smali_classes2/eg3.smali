.class public final synthetic Leg3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leg3;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leg3;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$b;->c(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method
