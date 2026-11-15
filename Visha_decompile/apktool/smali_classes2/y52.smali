.class public final synthetic Ly52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe8;


# instance fields
.field public final synthetic b:La62;


# direct methods
.method public synthetic constructor <init>(La62;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly52;->b:La62;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ly52;->b:La62;

    check-cast p1, Lcom/google/android/exoplayer2/k;

    invoke-static {p0, p1}, La62;->m(La62;Lcom/google/android/exoplayer2/k;)Z

    move-result p0

    return p0
.end method
